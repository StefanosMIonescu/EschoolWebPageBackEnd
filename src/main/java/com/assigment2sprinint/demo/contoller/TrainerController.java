package com.assigment2sprinint.demo.contoller;

import com.assigment2sprinint.demo.model.Trainer;
import com.assigment2sprinint.demo.service.TrainerServiceInterface;
import java.io.IOException;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller("trainer")
@RequestMapping("/trainerform")
public class TrainerController {

    @Autowired
    private TrainerServiceInterface trainerService;

    @GetMapping("/")
    public String showTrainerForm(ModelMap mm, Model model) {

        Trainer trainer = new Trainer();
        mm.addAttribute("trainer", trainer);
        model.addAttribute("title", "Insert Trainer");
        model.addAttribute("head", "Insert Trainer");
        model.addAttribute("subject", trainer.getSubject());
        model.addAttribute("action", "/trainerform/inserttrainer");
        model.addAttribute("submit", "Insert Trainer");
        return "trainersform";
    }

    @PostMapping("/inserttrainer")
    public String insertTrainer(@ModelAttribute(name = "trainer") Trainer trainer, Model model) throws IOException {

        if (trainer != null) {
            trainerService.insertTrainer(trainer);
            model.addAttribute("message", "success");
            model.addAttribute("action", "trainerform");
            model.addAttribute("trainer", trainer);
            return "trainersform";

        } else {
            model.addAttribute("message", "try again");
            model.addAttribute("action", "trainerform");
            model.addAttribute("trainer", trainer);
            return "trainersform";
        }

    }

    @GetMapping("/alltrainers")

    public String getAllTrainers(Model model) {
        List<Trainer> trainers = trainerService.getAllTrainers();
        model.addAttribute("trainers", trainers);
        return ("alltrainers");

    }

    @PutMapping("/updatetrainer")

    public Trainer updateTrainer(Model model) {
        Trainer updatedTrainer = trainerService.getById((Integer) model.getAttribute("id"));
        updatedTrainer.setFirstname((String) model.getAttribute("firstname"));
        updatedTrainer.setLastname((String) model.getAttribute("lastname"));
        updatedTrainer.setSubject((String) model.getAttribute("subject"));
        return updatedTrainer;
    }

    @GetMapping("/delete/{id}")

    public String deleteTrainer(@PathVariable(value = "id") int id, Model model) {
        if (id > 0) {
            trainerService.deleteTrainer(id);
            List<Trainer> trainers = trainerService.getAllTrainers();
            model.addAttribute("trainers", trainers);
            model.addAttribute("message", "success");
            return "/alltrainers";
        } else {
            List<Trainer> trainers = trainerService.getAllTrainers();
            model.addAttribute("trainers", trainers);
            model.addAttribute("message", "failed");
            return "/alltrainers";
        }
    }
//    @GetMapping("/inserttrainer")
//    public String insertTrainer1(@ModelAttribute(name = "newtrainer") Trainer trainer) throws IOException {
//
//        if (trainer != null) {
//            trainerService.insertTrainer(trainer);
//
//            return "trainerform";
//
//        } else {
//
//            return "trainerform";
//        }
//
//    }

    @GetMapping("/inserttrainer")

    public String insertTrainer1() {

        return "trainerform";
    }

    @GetMapping("/edit/{id}")
    public String editTrainer(@PathVariable(name = "id") int id, Model model) {
        //findByID
        //addAttribute
        //forward/edit
        System.out.println("Hi");
        Trainer trainer = trainerService.getById(id);
        model.addAttribute("trainer", trainer);
        model.addAttribute("title", "Edit Trainer");
        model.addAttribute("head", "Edit Trainer");
        model.addAttribute("firstname", trainer.getFirstname());
        model.addAttribute("lastname", trainer.getLastname());
        model.addAttribute("subject", trainer.getSubject());
        model.addAttribute("action", "/trainerform/update");
        model.addAttribute("submit", "Update Trainer");
        //thelo view gia to edit!
        System.out.println("Hello");
        return ("trainerform");
    }
    // Post update!

    @PostMapping("/update")
    public String updateTrainer(@ModelAttribute(name = "trainer") Trainer trainer, Model model) {

        trainerService.updateTrainer(trainer);
        List<Trainer> trainers = trainerService.getAllTrainers();
        model.addAttribute("trainers", trainers);

        return ("trainers");

    }

}
