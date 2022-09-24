import * as actionTypes from "./actionTypes";

export const Recipes = (
  state = {
    recipes: []
  },
  action
) => {
  switch (action.type) {
    case actionTypes.ADD_RECIPE:
      return { ...state, recipes: action.payload };
    case actionTypes.UPDATE_RECIPE:
      return { ...state, recipes: action.payload };
    case actionTypes.DELETE_RECIPE:
      return { ...state, recipes: action.payload };
    default:
      return state;
  }
};
