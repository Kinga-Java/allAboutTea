package pl.coderslab.allabouttea.producer;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pl.coderslab.allabouttea.tea.Tea;

import javax.persistence.*;
import javax.validation.Valid;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = Producer.TABLE)
public class Producer {
    public final static String TABLE = "producer";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Valid
    private ProducerDetails producerDetails;

    @OneToMany(mappedBy = "producers")
    private List<Tea> tea;
}
