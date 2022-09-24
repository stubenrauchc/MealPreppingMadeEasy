package com.techelevator.dto;

import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.*;
import java.util.List;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class RecipeDTO {

    @JsonProperty
    private Integer recipeid;

    @JsonProperty
    private Long user_id;

    @JsonProperty
    private String title;

    @JsonProperty
    private String category;

    @JsonProperty
    private String imageUrl;

    @JsonProperty
    private List<RecipeIngredientDTO> ingredientList;

    @JsonProperty
    private String instructions;

    @JsonProperty
    private Integer servingSize;

}
