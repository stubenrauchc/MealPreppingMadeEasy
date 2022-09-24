package com.techelevator.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import javax.persistence.*;
import java.util.HashSet;
import java.util.Objects;
import java.util.Set;

@Entity
@Table(name = "users")
public class User {

   @Id
   @Column (name = "user_id")
   private Long id;
   @Column(name = "username")
   private String username;

   @Column(name = "password_hash")
   private String passwordHash;

   @Column(name = "role")
   private String role;

   @Transient
   @JsonIgnore
   private String password;

   @Transient
   @JsonIgnore
   private boolean activated;

   @Transient
   private Set<Authority> authorities = new HashSet<>();

//   @OneToOne
//   @JoinColumn(name = "mealplanid", insertable = false, updatable = false)
//   private MealPlan mealPlan;

   public User() { }

   public User(Long id, String username, String password, String authorities) {
      this.id = id;
      this.username = username;
      this.password = password;
      this.activated = true;
   }

   //NEW USER COLUMNS THAT WE ADDED IN THE PROCESS OF FIXING THINGS


   public String getPasswordHash() {
      return passwordHash;
   }

   public void setPasswordHash(String passwordHash) {
      this.passwordHash = passwordHash;
   }

   public String getRole() {
      return role;
   }

   public void setRole(String role) {
      this.role = role;
   }

//   public MealPlan getMealPlan() {
//      return mealPlan;
//   }
//
//   public void setMealPlan(MealPlan mealPlan) {
//      this.mealPlan = mealPlan;
//   }
//
//   public User(MealPlan mealPlan) {
//      this.mealPlan = mealPlan;
//   }



   // WHAT IS GOING ON ABOVE?!

   public Long getId() {
      return id;
   }

   public void setId(Long id) {
      this.id = id;
   }

   public String getUsername() {
      return username;
   }

   public void setUsername(String username) {
      this.username = username;
   }

   public String getPassword() {
      return password;
   }

   public void setPassword(String password) {
      this.password = password;
   }

   public boolean isActivated() {
      return activated;
   }

   public void setActivated(boolean activated) {
      this.activated = activated;
   }

   public Set<Authority> getAuthorities() {
      return authorities;
   }

   public void setAuthorities(Set<Authority> authorities) {
      this.authorities = authorities;
   }

   public void addRoleToAuthorities(String authorities) {
      String[] roles = authorities.split(",");
      for(String role : roles) {
         String authority = role.contains("ROLE_") ? role : "ROLE_" + role;
         this.authorities.add(new Authority(authority));
      }
   }

   @Override
   public boolean equals(Object o) {
      if (this == o) return true;
      if (o == null || getClass() != o.getClass()) return false;
      User user = (User) o;
      return id == user.id &&
              activated == user.activated &&
              Objects.equals(username, user.username) &&
              Objects.equals(password, user.password) &&
              Objects.equals(authorities, user.authorities);
   }

   @Override
   public int hashCode() {
      return Objects.hash(id, username, password, activated, authorities);
   }

   @Override
   public String toString() {
      return "User{" +
              "id=" + id +
              ", username='" + username + '\'' +
              ", activated=" + activated +
              ", authorities=" + authorities +
              '}';
   }

}
