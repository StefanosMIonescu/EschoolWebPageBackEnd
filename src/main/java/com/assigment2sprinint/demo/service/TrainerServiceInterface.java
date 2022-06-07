/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.assigment2sprinint.demo.service;

import com.assigment2sprinint.demo.model.Trainer;
import java.util.List;
import org.springframework.stereotype.Service;

/**
 *
 * @author Mircea
 */

@Service
public interface TrainerServiceInterface {
    
    public void insertTrainer(Trainer trainer);
    
    
    public Trainer getById(Integer id);
    
   
    
    public List<Trainer> getAllTrainers();
       
   
    
    public void deleteTrainer(Integer id);
    
    
    public boolean findById(int id);
    
    
    public boolean updateTrainer(Trainer trainer);
    
    }

