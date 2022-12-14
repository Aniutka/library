package com.library.model.entity;

import lombok.*;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.lang.reflect.Type;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Set;

@Getter
@Setter
@Entity
public class User implements UserDetails {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    @Column
    private String name;

    @Column
    private String username;
    @Column
    private String password;
    @Column(name = "date_birth")
    private Date dateBirth;
    @Column(name = "date_registration")
    private Date dateRegistration;
    @Column(name = "place_work")
    private String placeWork;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "address_id")
    private Address address;

    @OneToMany(mappedBy = "user")
    @ToString.Exclude
    private List<UserBook> userBooks;

    @Column
    private boolean accountNonExpired;
    @Column
    private boolean accountNonLocked;
    @Column
    private boolean credentialsNonExpired;
    @Column
    private boolean enabled;

    @Enumerated(EnumType.STRING)
    @ElementCollection(fetch = FetchType.EAGER)
    private List<Role> roles;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        var authorities = new ArrayList<GrantedAuthority>();
        roles.forEach(role -> authorities.add(new SimpleGrantedAuthority(role.toString())));
        return authorities;
    }

}
