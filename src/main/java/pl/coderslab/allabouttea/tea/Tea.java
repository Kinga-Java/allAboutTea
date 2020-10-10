package pl.coderslab.allabouttea.tea;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pl.coderslab.allabouttea.category.Category;
import pl.coderslab.allabouttea.file.TeaFile;
import pl.coderslab.allabouttea.opinion.Opinion;
import pl.coderslab.allabouttea.producer.Producer;
import pl.coderslab.allabouttea.user.User;
import javax.persistence.*;
import javax.validation.constraints.*;
import java.time.LocalDate;
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

    @NotBlank(message= "Podaj nazwę herbaty")
    @Column(nullable = false)
    private String name;

    @Transient
    private double avgRating;

    @NotBlank(message= "Podaj region pochodzenia herbaty")
    @Column(nullable = false)
    private String region;

    @NotBlank(message= "Jaki aromat ma herbata?")
    @Column(nullable = false)
    private String aroma;

    private LocalDate created;

    @Transient
    private double averageNote;

    @PrePersist
    public void prePersist() {
        created = LocalDate.now();
    }

    @ManyToOne
    private User user;

    @OneToMany(mappedBy = "tea")
    private List<Opinion> opinion;


    @NotNull
    @ManyToOne
    private Category category;

    @NotNull
    @ManyToOne
    private Producer producers;

    @NotNull
    @Column(nullable = false)
    private Double brewTemperature; //stopni Celcjusza

    @Min(1)
    @Column(nullable = false)
    private long brewTimes;

    @NotNull
    @Column(nullable = false)
    private Double brewTeaWeight; //gramy

    @NotNull
    @Column(nullable = false)
    private Double brewAmountOfWater; //ml

    private String yearOfProduction;

    @NotBlank(message= "Podaj opis/wrażenia odnośnie herbaty")
    @Column(nullable = false)
    private String description;


    @OneToMany
    @JoinTable(name = "tea_files")
    private List<TeaFile> files;


}
