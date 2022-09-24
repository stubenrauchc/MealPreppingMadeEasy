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
public class RecipeIngredientDTO {

    @JsonProperty
    private String name;

    @JsonProperty
    private String quantity;

    @JsonProperty
    private String measurementunit;

}
