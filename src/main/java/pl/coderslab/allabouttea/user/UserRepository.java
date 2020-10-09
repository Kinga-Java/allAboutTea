package pl.coderslab.allabouttea.user;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import javax.transaction.Transactional;

@Repository
@Transactional
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUserNick(String userName);
    boolean existsByEmail(String email);
    User findUserByEmail(String email);
}
