package pl.coderslab.allabouttea.user;


import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.util.List;
import java.util.Optional;

@Service
@Transactional
@Slf4j
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public User findByUserNick(String userName){
        return userRepository.findByUserNick(userName);
    }

    public boolean existsByEmail(String email){
        return userRepository.existsByEmail(email);
    }

    public User findByEmail(String email){
        return userRepository.findUserByEmail(email);
    }

    public Optional<User> findUserById(long id){
        return userRepository.findById(id);
    }

    public List<User> getAll(){
        return userRepository.findAll();
    }

    public void registerUser(User user) {
        user.setRole(Role.USER.toString());
        user.setPassword(passwordEncoder.encode(user.getPassword()));
        user.setActive(true);
        userRepository.save(user);
    }

    public void createUserAdmin(){
        User userAdmin = new User();
        userAdmin.setUserNick("Admin");
        userAdmin.setFirstName("Admin");
        userAdmin.setLastName("Admin");
        userAdmin.setActive(true);
        userAdmin.setPassword(passwordEncoder.encode("adminadmin"));
        userAdmin.setRole(Role.ADMIN.toString());
        userAdmin.setEmail("admin@gmail.com");
        userRepository.save(userAdmin);
        log.debug("Użytkownik zarejestrowany:", userAdmin);
    }

    public void editUser(User user){
        user.setActive(true);
        userRepository.save(user);
    }

    public void deleteUser(User user){
        user.setActive(false);
        userRepository.save(user);
    }
}
