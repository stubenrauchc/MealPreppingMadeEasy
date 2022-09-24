import * as ActionTypes from "./actionTypes";
import { baseUrl } from "../Shared/baseUrl";

export const addToken = (token) => ({
  type: ActionTypes.ADD_TOKEN,
  payload: token,
});

export const addUser = (user) => ({
  type: ActionTypes.ADD_USER,
  payload: user,
});

export const deleteUser = () => ({
  type: ActionTypes.DELETE_USER,
});
export const addRecipe = (recipes) => ({
  type: ActionTypes.ADD_RECIPE,
  payload: recipes,
});

export const fetchRecipes = () => (dispatch) => {
  fetch(baseUrl + "/Test/RecipeListTest")
    .then((response) => {
      return response.json();
    })
    .then((data) => {
      console.log(data);
      return dispatch(addRecipe(data));
    });
};
// fetch(baseUrl, {
//   method: "POST",
//   cache: "no-cache",
//   headers: {
//     "Content-Type": "application/json",
//      "Authorization": `Bearer ${props.token}`
//   },
//   body: JSON.stringify(recipe),
// })
//   .then((response) => {
//     if (response.ok) {
//       alert("Saved!");
//       resetForm(e);
//     }
//   })
//   .catch((err) => {
//     console.error(err);
//     alert("Could not save card!");
//   });

//Calls the fetch to add the ingredients at launch - will need to implmenent
//The updated and delete as well - use this as a template
export const fetchPantryItems = () => (dispatch) => {
  fetch(baseUrl + "/Test/PantryTest")
    .then((response) => {
      return response.json();
    })
    .then((data) => {
      console.log("This data is from pantry" + data);
      return dispatch(addIngredient(data));
    });
};

//Actioncreators for ingredients
export const addIngredient = (ingredient) => ({
  type: ActionTypes.ADD_INGREDIENT,
  payload: ingredient,
});
export const deleteIngredient = (ingredient) => ({
  type: ActionTypes.DELETE_INGREDIENT,
  payload: ingredient,
});
export const updateIngredient = (ingredient) => ({
  type: ActionTypes.UPDATE_INGREDIENT,
  payload: ingredient,
});

//Action creators for Shopping List - change endpoint when shoppinglist endpoint
//is available - using pantry endpoint for now
export const fetchShoppingList = () => (dispatch) => {
  fetch(baseUrl + "/Test/PantryTest")
    .then((response) => {
      return response.json();
    })
    .then((data) => {
      console.log("This data is from fetchShoppingList: " + data);
      return dispatch(addShoppingList(data));
    });
};

export const addShoppingList = (shoppingList) => ({
  type: ActionTypes.ADD_SHOPPINGLIST,
  payload: shoppingList,
});
export const deleteShoppingList = (shoppingList) => ({
  type: ActionTypes.DELETE_SHOPPINGLIST,
  payload: shoppingList,
});
export const updateShoppingList = (shoppingList) => ({
  type: ActionTypes.UPDATE_SHOPPINGLIST,
  payload: shoppingList,
});

//Action creators for Mealplan
export const fetchMealPlan = () => (dispatch) => {
  fetch(baseUrl + "/Test/TestBreakfast")
    .then((response) => {
      return response.json();
    })
    .then((data) => {
      console.log("This data is from fetchMeals" + data);
      return dispatch(addMealPlan(data));
    });
};

export const addMealPlan = (mealplan) => ({
  type: ActionTypes.ADD_MEALPLAN,
  payload: mealplan,
});
export const deleteMealplan = (mealplan) => ({
  type: ActionTypes.DELETE_MEALPLAN,
  payload: mealplan,
});
export const updateMealPlan = (mealplan) => ({
  type: ActionTypes.UPDATE_MEALPLAN,
  payload: mealplan,
});
