package pl.coderslab.allabouttea.producer;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pl.coderslab.allabouttea.tea.Tea;

import javax.persistence.*;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = Producer.TABLE)
public class Producer {
    public final static String TABLE = "producers";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Column(nullable = false)
    private String name;

    @Valid
    private ProducerDetails producerDetails;

    @OneToMany(mappedBy = "producers")
    private List<Tea> tea;
}
