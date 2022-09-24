
import React from "react";
import { Card, CardBody, CardText, CardTitle, CardSubtitle } from "reactstrap";

const RecipeCard = (props) => {

    const ingredientList = props.ingredients.map((ingredient, id)=> {

        return (
            <li key={id}>{ingredient}</li>
        )
    })
        
  return (
    <>
      <Card id="recipe_card">

        <CardBody>
          <CardTitle id="recipe_name">{props.recipeCard.recipeName}</CardTitle>
          <CardSubtitle>{props.recipeCard.recipeServing}</CardSubtitle>
          <CardText>
          <ul>
          {ingredientList}
          </ul>
          <p>{props.recipeCard.recipeInstructions}</p></CardText>
        </CardBody>
      </Card>
    </>
  );
};

export default RecipeCard;