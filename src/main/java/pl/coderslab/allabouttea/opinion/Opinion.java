package pl.coderslab.allabouttea.opinion;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pl.coderslab.allabouttea.tea.Tea;

import javax.persistence.*;
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

    private String description;

    private long rating;

    private LocalDateTime created;
    private LocalDateTime updated;

    @ManyToOne
    private Tea tea;

   // @ManyToOne
    //private User user;

    @PrePersist
    public void perPersist() {
        created = LocalDateTime.now();
    }

    @PreUpdate
    public void perUpdate() {
        updated = LocalDateTime.now();
    }


}
