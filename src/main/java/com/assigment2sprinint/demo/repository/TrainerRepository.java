/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.assigment2sprinint.demo.repository;

import com.assigment2sprinint.demo.model.Trainer;
import javax.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 *
 * @author Mircea
 */

@Repository
@Transactional
public interface TrainerRepository extends JpaRepository<Trainer, Integer>{
    
    
    
    
}
