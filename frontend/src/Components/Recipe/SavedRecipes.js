import React, { useCallback, useEffect, useState } from "react";
import {
  Card,
  CardImg,
  CardBody,
  CardText,
  CardTitle,
  CardSubtitle,
  Button,
} from "reactstrap";
import "./recipe.css";
import { FadeTransform, Fade, Stagger } from "react-animation-components";
// import img from '../../RecipeImages/chickenFriedSteak.jpg'

function RenderSavedRecipes({ recipeCard, deleteHandler, editHandler }) {
  const ingredients = recipeCard.ingredientList.map((item, index) => {
    return (
      <li key={index} id="ingredient">
        {item.name}: {item.quantity} {item.measurementunit}
      </li>
    );
  });
  return (
    // <FadeTransform
    //   in
    //   transformProps={{ exitTransform: "scale(0.5) translateY(-50%)" }}
    // >
    <Fade in>
      <Card style={{ width: "30rem" }} id="recipecard">
        <CardBody>
          <CardTitle>
            <h3>{recipeCard.title}</h3>
          </CardTitle>
          {recipeCard.imageUrl && (
            <CardImg
              alt="not found"
              src={require(`../../images/${recipeCard.imageUrl}`).default}
            />
          )}
          <CardSubtitle>Serving Size: {recipeCard.servingSize}</CardSubtitle>
          {/* <CardText> */}
          <h5>Ingredients:</h5>
          <ul>{ingredients}</ul>
          <h5>Instructions:</h5> {recipeCard.instructions}
          {/* </CardText> */}
          <div id="recipe-update-delete">
            <Button onClick={editHandler} id="update">
              Update
            </Button>
            <Button onClick={deleteHandler} id="delete">
              Delete
            </Button>
          </div>
        </CardBody>
      </Card>
    </Fade>
    // </FadeTransform>
  );
}

export default function SavedRecipes(props) {
  const recipeCollections = props.recipes.map((card, id) => {
    return (
      <>
        <Stagger in>
          <RenderSavedRecipes
            key={id}
            deleteHandler={props.deleteHandler}
            editHandler={props.editHandler}
            recipeCard={card}
          />
        </Stagger>
      </>
    );
  });
  return <>{recipeCollections}</>;
}

// const [recipeCollection, setRecipeCollection] = useState([]);
// const [recipeCard, setRecipeCard] = useState({});
// const [isLoading, setIsLoading] = useState(false);
// const [isEdited, setIsEdited] = useState(false);

/**
 * A function provided to delete unwanted recipes
 *
 * @param {*} event
 * @param {*} id
 */
// function deleteHandler(event, id) {
// fetch(baseUrl + "/" + id, {
//   method: "DELETE",
//   cache: "no-cache",
//   headers: {
//     "Content-type": "application/json",
//     Authorization: `Bearer ${addToken}`,
//   },
// })
//   .then((response) => {
//     setIsLoading(!isLoading);
//     return response.text();
//   })
//   .then((data) => {
//     console.log(data);
//     alert("Recipe deleted!");
//   })
//   .catch((err) => {
//     console.error(err);
//     alert("Could not delete recipe!");
//   });
// }

// /**
// * Handler method to update a specific recipe
// * @param {*} event
// * @param {*} id
// */
// function editHandler(event, id) {
// fetch(baseUrl + "/" + id, {
//   method: "PUT",
//   cache: "no-cache",
//   headers: {
//     "Content-type": "application/json",
//     Authorization: `Bearer ${addToken}`,
//   },
//   body: JSON.stringify(recipeCard),
// })
//   .then((response) => {
//     if (response.ok) {
//       alert("Saved Recipe!");
//       setIsEdited(true);
//     }
//   })
//   .catch((err) => {
//     console.log(err);
//     alert("Could not save recipe");
//   });
// }

// /**
// * Fetch to get a single recipe by its id
// */
// const fetchRecipeCard = useCallback(() => {
// fetch(baseUrl + "/Test/RecipeTest")
//   .then((response) => {
//     return response.json();
//   })
//   .then((data) => setRecipeCard(data));
// console.log("What is in recipe card" +recipeCard);
// }, []);

// /**
// *
// */
// const fetchCollection = useCallback(() => {
// fetch(baseUrl + "/Test/RecipeTest")
//   .then((response) => {
//     return response.json();
//   })
//   .then((data) => setRecipeCollection(data));
//   console.log("What is in recipe collections" + recipeCollection);
// }, []);

// useEffect(() => {
// fetchCollection();
// }, [isLoading, isEdited, fetchCollection]);

// useEffect(() => {
// fetchRecipeCard();
// }, []);
