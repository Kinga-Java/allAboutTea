package pl.coderslab.allabouttea.opinion;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import pl.coderslab.allabouttea.producer.Producer;

import javax.transaction.Transactional;
import java.util.List;

@Service
@Transactional
@RequiredArgsConstructor
public class OpinionService {
    private final OpinionRepository opinionRepository;

    public Opinion addOpinion(Opinion opinion){
        return opinionRepository.save(opinion);
    }
    public List<Opinion> getAll(){
        return opinionRepository.findAll();
    }
    public Opinion findOpinionById(long id){
        return opinionRepository.findById(id);
    }
    public void updateOpinion(Opinion opinion){
        opinionRepository.save(opinion);
    }
}
