package pl.coderslab.allabouttea.producer;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import javax.validation.Valid;

@Controller
@RequiredArgsConstructor
@RequestMapping("/producer")
public class ProducerController {
    private final ProducerService producerService;

    @GetMapping("/add")
    public String addProducer(Model model){
        model.addAttribute("producer", new Producer());
        return "producer/form";
    }

    @GetMapping("all")
    public String getAllProducers(Model model) {
        model.addAttribute("producersAll", producerService.getAll());
        return "producer/all";
    }

    @PostMapping("/add")
    public String saveProducer(@Valid Producer producer, BindingResult result){
        if(result.hasErrors()){
            return "producer/form";
        }
        producerService.addProducer(producer);
        return "redirect:/producer/all";
    }

    @GetMapping("/edit/{id}")
    public String editProducer(@PathVariable long id, Model model) {
        Producer producer = producerService.findProducerById(id);
        if (producer == null) {
            return "error";
        }
        model.addAttribute("producer", producer);
        return "producer/form";
    }

    @PostMapping("/edit/{id}")
    public String saveEditedProducer(@PathVariable long id, @Valid Producer producer, BindingResult result) {
        if (producer.getId() != id) {
            return "error";
        }
        if (result.hasErrors()) {
            return "producer/form";
        }
        producerService.editProducer(producer,producer);
        return "redirect:/producer/all";
    }

    @GetMapping("/{id}")
    public String thisProducer(@PathVariable long id, Model model) {
        Producer producer = producerService.findProducerById(id);
        if (producer == null) {
            return "error";
        }
        model.addAttribute("producer", producer);
        return "producer/producer";
    }

}
