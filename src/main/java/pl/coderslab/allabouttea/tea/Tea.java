package pl.coderslab.allabouttea.tea;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pl.coderslab.allabouttea.category.Category;
import pl.coderslab.allabouttea.opinion.Opinion;
import pl.coderslab.allabouttea.producer.Producer;

import javax.persistence.*;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = Tea.TABLE)
public class Tea {
    public final static String TABLE = "tea";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    private String aroma;

    private String region;

    @ManyToOne
    private Category category;

    @ManyToOne
    private Producer producers;

    private long brewTemperature; //stopni Celcjusza
    private long brewTimes; //sekundy
    private long brewTeaWeight; //gramy
    private long brewAmountOfWater; //ml

    @OneToMany(mappedBy = "tea")
    private List<Opinion> opinions;

    private String description;


}
