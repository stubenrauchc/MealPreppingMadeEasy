package com.techelevator.model;

import lombok.*;
import javax.persistence.*;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

@Entity
@Table(name = "recipeingredient")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@ToString
public class RecipeIngredient implements Serializable {


    @Column(name = "recipeid")
    @NotNull
    private Integer recipeid;

    @Id
    @Column(name = "ingredientid")
    @NotNull
    private Integer ingredientid;

    @Column(name = "quantity")
    @NotNull
    private String quantity;

    @Column(name = "measurementunit")
    @NotNull
    private String measurementunit;

    @Column(name = "title")
    private String title;

//    @ManyToOne
//    @JoinColumn(name = "recipeid", insertable = false, updatable = false)
//    private Recipe recipe;
//
//    @ManyToOne
//    @JoinColumn(name = "ingredientid", insertable = false, updatable = false)
//    private Ingredient ingredient;

}

