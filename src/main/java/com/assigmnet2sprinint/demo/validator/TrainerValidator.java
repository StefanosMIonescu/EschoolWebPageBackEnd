/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.assigmnet2sprinint.demo.validator;

import com.assigment2sprinint.demo.model.Trainer;
import org.springframework.validation.Errors;
import org.springframework.validation.Validator;


/**
 *
 * @author Mircea
 */
public class TrainerValidator  implements Validator{

    @Override
    public boolean supports(Class<?> trainer) {
        
        
        return Trainer.class.equals(trainer);
    }

    @Override
    public void validate(Object target, Errors errors) {
      Trainer trainer=(Trainer) target;
      
      if(trainer.getFirstname().length()<2 ){
      
      errors.rejectValue("firstname", "first name too small ", "Give Name with 3 letters at least");
      }
      
      if (trainer.getLastname().length()<0){
      
      errors.rejectValue("lastname", "last name too small", "Give last name with 3 letters at least");
      }
      
      if(trainer.getSubject().length()<0){
      errors.rejectValue("subject", "Subject name too small", "Give subject name with 3 letters at least");
      }
    }
    
}
