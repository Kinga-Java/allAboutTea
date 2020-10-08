/*package pl.coderslab.allabouttea.config;

import org.springframework.context.annotation.Configuration;

@Configuration
@EnableWebSecurity
@RequiredArgsConstructor
public class SecurityConfig extends WebSecurityConfigurerAdapter{

private final DataSource dataSource;

   @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.jdbcAuthentication()
                .dataSource(dataSource)
                .passwordEncoder(passwordEncoder())
                .usersByUsernameQuery("SELECT email, password, enabled FROM users WHERE email = ?")

                .authoritiesByUsernameQuery("SELECT email, role FROM users WHERE email = ?");
    }

@Bean
public BCryptPasswordEncoder passwordEncoder() {
return new BCryptPasswordEncoder();
}

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
                .antMatchers("/").permitAll()
                .antMatchers("/about").authenticated()
                .antMatchers("/admin/**").hasRole("ADMIN")
                .antMatchers("/about/**").hasAnyRole("USER", "ADMIN")
                .anyRequest().authenticated()
                .and().formLogin()
                .loginPage("/login")
                .and().logout().logoutSuccessUrl("/login");
    }
}*/
