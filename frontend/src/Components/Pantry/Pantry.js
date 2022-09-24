import React, { useState } from "react";
import Navigator from "../navigation/Navigator";
import { Card, CardBody, CardText, CardTitle, CardSubTitle } from "reactstrap";
import { baseUrl } from "../../Shared/baseUrl";
import "./pantry.css";

export default function Pantry(props) {
  //   const [ingredients, setIngredients] = useState([])

  const pantryItems = props.ingredient.map((item, index) => {
    return (
        <li key={index} id="pantry-list">
          {item.ingredient}: {item.quantity} {item.measurementUnit}
        </li> 
    );
  });
  //display pantry items
  return (
    <>
      <Navigator />
      <h3>Pantry</h3>
      <ul id="pantry-items">
        {pantryItems}
      
      </ul>
    </>
  );
  //function to remove pantry items
  //function removePantryItem(){

  //}
}
