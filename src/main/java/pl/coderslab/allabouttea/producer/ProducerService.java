package pl.coderslab.allabouttea.producer;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.allabouttea.category.Category;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class ProducerService {
    private final ProducerRepository producerRepository;

    public Producer addProducer(Producer producer){
        return producerRepository.save(producer);
    }
    public List<Producer> getAll(){
        return producerRepository.findAll();
    }
    public Producer findProducerById(long id){
       return producerRepository.findById(id);
    }
    public void update(Producer producer){
        producerRepository.save(producer);
    }

    public void editProducer(Producer modelProducer, Producer dbProducer){
        dbProducer.setName(modelProducer.getName());
        dbProducer.getProducerDetails().setAddress(modelProducer.getProducerDetails().getAddress());
        dbProducer.getProducerDetails().setCountry(modelProducer.getProducerDetails().getCountry());
        producerRepository.save(dbProducer);
    }


}
