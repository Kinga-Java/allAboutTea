package pl.coderslab.allabouttea.tea;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pl.coderslab.allabouttea.category.Category;
import pl.coderslab.allabouttea.opinion.Opinion;
import pl.coderslab.allabouttea.producer.Producer;
import pl.coderslab.allabouttea.user.User;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
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

    @NotBlank
    @Column(nullable = false)
    private String name;

    @NotBlank
    @Column(nullable = false)
    private String aroma;

    @NotBlank
    @Column(nullable = false)
    private String region;

    @ManyToOne
    private User user;

    @OneToMany(mappedBy = "tea")
    private List<Opinion> opinion;
    //avg ze średnich opinii

    @NotNull
    @ManyToOne
    private Category category;

    @ManyToOne
    private Producer producers;

    @NotBlank(message= "Temperatura w stopniach Celsjusza")
    @Column(nullable = false)
    private long brewTemperature; //stopni Celcjusza

    @NotBlank(message= "Czas w stopniach sekundach")
    @Column(nullable = false)
    private long brewTimes; //sekundy

    @NotBlank(message= "Waga w gramach")
    @Column(nullable = false)
    private long brewTeaWeight; //gramy

    @NotBlank(message= "Ilość wody na jedno parzenie w mililitrach")
    @Column(nullable = false)
    private long brewAmountOfWater; //ml

    private String yearOfProduction;

    private String description;


}
