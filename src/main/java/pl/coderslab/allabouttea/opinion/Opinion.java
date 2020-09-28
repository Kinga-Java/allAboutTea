package pl.coderslab.allabouttea.opinion;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pl.coderslab.allabouttea.tea.Tea;
import pl.coderslab.allabouttea.user.User;

import javax.persistence.*;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
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
    private Long id;

    @NotBlank
    @Column(nullable = false)
    private String description;

    @Size(min = 1, max =10)
    private Long rating;

    @Column(name ="created_on", nullable =false, updatable = false)
    private LocalDateTime created;

    @Column(name ="updated_on")
    private LocalDateTime updated;

    @ManyToOne
    private Tea tea;
    @ManyToOne
    private User user;

    @PrePersist
    public void perPersist() {
        created = LocalDateTime.now();
    }
    @PreUpdate
    public void perUpdate() {
        updated = LocalDateTime.now();
        updated=null;
    }
}
