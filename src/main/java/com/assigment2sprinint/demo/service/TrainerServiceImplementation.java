/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.assigment2sprinint.demo.service;

import com.assigment2sprinint.demo.model.Trainer;
import com.assigment2sprinint.demo.repository.TrainerRepository;
import static java.lang.System.out;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.PostMapping;

/**
 *
 * @author Mircea
 */
@Service
@Repository
public class TrainerServiceImplementation implements TrainerServiceInterface {

    @Autowired
    TrainerRepository trainerRepository;
    
    @Override
    //i save einai gia insert alla kai gia update!!!an to bri to object to kani update!
    public void insertTrainer(Trainer trainer) {
        trainerRepository.save(trainer);
        //out.println("success");
    }

    @Override
    public Trainer getById(Integer id) {
        return trainerRepository.findById(id).get();
    }

    @Override
    public boolean findById(int id) {

        if (trainerRepository.findById(id).get().getId() > 0) {

            return (trainerRepository.findById(id).get().getId() > 0);

        } else {

            return false;
        }

    }

    @Override
    public List<Trainer> getAllTrainers() {
        return trainerRepository.findAll();
    }

    @Override
    public void deleteTrainer(Integer id) {
        trainerRepository.deleteById(id);
        out.println("success");
    }
    
    
    @Override
    
    public boolean updateTrainer(Trainer trainer){
    
        Trainer dbTrainer= trainerRepository.findById(trainer.getId()).get();


        dbTrainer.setFirstname(trainer.getFirstname());
        dbTrainer.setLastname(trainer.getLastname());
        dbTrainer.setSubject(trainer.getSubject());

        //den mou perni to saveAndFlusj wtf???
        trainerRepository.saveAndFlush(dbTrainer);
    
    return true;
    
    }
}
