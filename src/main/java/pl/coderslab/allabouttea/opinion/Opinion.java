package pl.coderslab.allabouttea.opinion;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.validator.constraints.Range;
import pl.coderslab.allabouttea.tea.Tea;
import pl.coderslab.allabouttea.user.User;


import javax.persistence.*;
import javax.validation.constraints.*;
import java.time.LocalDateTime;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = Opinion.TABLE)
public class Opinion {
    public final static String TABLE = "opinions";

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    @NotNull
    @Range(min = 1, max =10)
    @Column(nullable = false)
    private Long rating;

    @NotBlank
    @Column(nullable = false)
    private String description;

    @Column(name ="created_on", nullable =false, updatable = false)
    private LocalDateTime created;

    @Column(name ="updated_on")
    private LocalDateTime updated;


    @NotNull
    @ManyToOne
    private Tea tea;

    @ManyToOne
    private User user;

    @PrePersist
    public void perPersist() {
        created = LocalDateTime.now().withNano(0);
    }
    @PreUpdate
    public void perUpdate() {
        updated = LocalDateTime.now().withNano(0);
        updated=null;
    }
}
