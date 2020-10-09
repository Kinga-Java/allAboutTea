package pl.coderslab.allabouttea.category;

import lombok.*;
import pl.coderslab.allabouttea.tea.Tea;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import java.util.List;

@Getter
@Setter
@Entity
@Table(name=Category.TABLE)
public class Category {
    public final static String TABLE = "category";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotBlank
    @Column(nullable = false, unique = true)
    private String name;

    @OneToMany(mappedBy = "category")
    private List<Tea> tea;

}
