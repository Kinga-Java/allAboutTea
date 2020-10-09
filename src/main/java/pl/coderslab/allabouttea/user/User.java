package pl.coderslab.allabouttea.user;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import pl.coderslab.allabouttea.opinion.Opinion;
import pl.coderslab.allabouttea.tea.Tea;

import javax.persistence.*;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Getter
@Setter
@Entity
@Table(name = User.TABLE)
public class User {

    public final static String TABLE = "user";

    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long id;

    @NotBlank
    @Column(nullable = false)
    private String userNick;

    private String firstName;

    private String lastName;

    @NotBlank
    @Column(nullable = false)
    @Size(min = 8)
    private String password;

    @NotBlank
    @Email
    //@Unique
    @Column(nullable = false, unique = true)
    private String email;

    @Column(nullable = false)
    private Boolean active;

    @Column(nullable = false)
    private String role;

    @OneToMany(mappedBy = "user")
    private List<Tea> tea;

    @OneToMany(mappedBy = "user")
    private List<Opinion> opinion;

    @Override
    public String toString() {
        return "User{" +
                "userName='" + userNick + '\'' +
                ", role='" + role + '\'' +
                ", email='" + email + '\'' +
                '}';
    }
}
