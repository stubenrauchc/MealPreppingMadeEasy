import { React, useState, useEffect } from "react";
import Navigator from "../navigation/Navigator";
import { useLocation } from "react-router-dom";
import { baseUrl } from "../../Shared/baseUrl";
import { Button, Card, CardBody, CardGroup, CardTitle, Col } from "reactstrap";
import "./day.css";
import Meal from "./Meal"

export default function Day(props) {
  const location = useLocation();
  const [posts, setPosts] = useState([]); 
 
  
  useEffect(() => {
    fetch(baseUrl + "/Test/RecipeListTest")
      .then((response) => response.json())
      .then((data) => {
        console.log(data);
        setPosts(data);
      })
      .catch((err) => {
        console.log(err.message);
      });
  }, []);
  return (
    <>
      <Navigator />

      <h1 id="meal-day">
        Available {location.state.meal} item for {location.state.day} is:
      </h1>

      <div>
        <br />
        {posts.map((post) => {
          //alert(JSON.stringify(post))
          return (
            <Meal key={post.receipeid} meal={post}></Meal>
            
          );
        })}
      </div>
    </>
  );
}

