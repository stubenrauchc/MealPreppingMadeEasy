package com.techelevator.model;

import lombok.*;
import javax.persistence.*;
import javax.validation.constraints.NotNull;

@Entity
@Table(name = "recipe")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class Recipe {

    //Generated and Not Null data tables.

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "recipeid")
    private Integer recipeid;

    //Make this a join!
    @Column(name = "user_id")
    @NotNull
    private Long user_id;
    //Make the above a join!

    @Column(name = "title")
    @NotNull
    private String title;

    @Column(name = "category")
    @NotNull
    private String category;

    @Column(name = "servingsize")
    @NotNull
    private Integer servingsize;

    @Column(name = "instructions")
    @NotNull
    private String instructions;

    @Column(name = "imagename")
    private String imagename;

//    @Column(name = "visibility")
//    private boolean visibility;

}



