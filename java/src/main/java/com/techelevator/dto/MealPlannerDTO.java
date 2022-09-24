package com.techelevator.dto;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class MealPlannerDTO {

    //Example: 7
    @JsonProperty
    private Long user_id;

    //added mealplanid for update method
    @JsonProperty
    private Integer mealplanid;

    //Example: Monday
    @JsonProperty
    private String dayofweek;

    //Example: Breakfast
    @JsonProperty
    private String category;

    //Example: Pancakes
    @JsonProperty
    private String recipename;

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
//

}
