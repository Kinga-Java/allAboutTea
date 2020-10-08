package pl.coderslab.allabouttea.user;


import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


import javax.persistence.Column;
import javax.persistence.Embeddable;
import java.io.Serializable;

@Embeddable
@Data @NoArgsConstructor @AllArgsConstructor
public class Role implements Serializable {

    @Column(name = "role_name")
    private String roleName;
}
   

