package com.techelevator.model;

import lombok.*;

import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "mealplan")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class MealPlan {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "mealplanid")
    private Integer mealplanid;

    //Old bad code below!
    @Column(name = "user_id")
    @NotNull
    private Long user_id;
    //Make the above a join.

    @Column(name = "category")
    private String category;

    @Column(name = "dayofweek")
    private String dayofweek;

    @Column(name = "recipename")
    private String recipename;

//    @OneToOne
//    @JoinColumn(name = "user_id", insertable = false, updatable = false)
//    private User user;

//    public MealPlan(Integer mealplanid, long userId, String category, String dayofweek, String title) {
//    }

    public MealPlan(Long user_id, String category, String dayofweek, String title) {
    }


    //For the meal Plan
    // ---OPTIONAL---

//    @Column(name = "name")
//    private String name;
//
//    @Column(name = "description")
//    private String description;
//
//    @Column(name = "imagefilename")
//    private String imagefilename;

}
