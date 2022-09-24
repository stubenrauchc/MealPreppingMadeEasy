import React from 'react';
import SavedRecipes from './SavedRecipes'
import Navigator from '../navigation/Navigator';
import RecipeCard from './RecipeCard';
import "./recipe.css";
export default function Recipes(props) {
    return(
        <div>
            <Navigator />
            <h3>Recipe Collection</h3>
            <div className="col-12 col-md-5 m-1">
            <SavedRecipes recipes={props.recipes}/>

            </div>
        </div>
    )
}