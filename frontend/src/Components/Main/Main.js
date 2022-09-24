import { Component } from "react";
import { Switch, Route, Redirect, Link } from "react-router-dom";
import Login from "../Login/Login";
import Register from "../Register/Register";
import Home from "../Home/Home";
import { addToken, deleteUser, fetchMealPlan, fetchPantryItems, fetchRecipes, fetchShoppingList } from "../../Redux/actionCreators";
import { connect } from "react-redux";
import { withRouter } from "react-router-dom";
import WeeklyPlanner from "../WeeklyPlanner/WeeklyPlanner";
import Recipes from "../Recipe/Recipes";
import ShoppingList from "../ShoppingList/ShoppingList";
import Pantry from "../Pantry/Pantry";
import CreateRecipe from "../Recipe/CreateRecipe";
import Day from "../Day/Day";

const mapStateToProps = (state) => {
  return {
    shopplinglist: state.shoppinglist,
    mealplan: state.mealplan,
    ingredient: state.ingredient,
    recipes: state.recipes,
    token: state.token,
    user: state.user,
  };
};

const mapDispatchToProps = (dispatch) => ({
  addToken: () => {
    dispatch(addToken());
  },
  deleteUser: () => {
    dispatch(deleteUser());
  },
  fetchRecipes: () => {
    dispatch(fetchRecipes());
  },

  fetchPantryItems: () => {
    dispatch(fetchPantryItems());
  },
  fetchMealPlan: () => {
    dispatch(fetchMealPlan());
  },
  fetchShoppingList: () => {
    dispatch(fetchShoppingList());
  }
});



class Main extends Component {
  constructor(props) {
    super(props);
  }

componentDidMount() {
  this.props.fetchRecipes();
  this.props.fetchPantryItems();
  this.props.fetchMealPlan();
  this.props.fetchShoppingList();
}

  handleLogout = () => {
    this.props.addToken("");
    this.props.deleteUser();
  };

  render() {
    return (
      <div>
        {this.props.token.token !== undefined ? (
          <div>
            <Link to="/home">Home | </Link>
            <Link to="/login" onClick={this.handleLogout}>
              logout
            </Link>
            <Redirect to="/home" />
          </div>
        ) : (
          <Link to="/login">Home | </Link>
        )}
        <Switch>
          <Route path="/login" component={() => <Login />} />
          <Route path="/register" component={() => <Register />} />
          <Route
            path="/home"
            component={
              this.props.token.token !== undefined ? () => <Home /> : null
            }
          />
          <Route path="/weeklyplanner" component={() => <WeeklyPlanner mealplan={this.props.mealplan.mealplan} />} />
          <Route path="/recipes" component={() => <Recipes recipes={this.props.recipes.recipes}/>} />
          <Route path="/pantry" component={() => <Pantry ingredient={this.props.ingredient.ingredient} />} />
          <Route path="/shoppinglist" component={() => <ShoppingList ingredient={this.props.ingredient.ingredient}/>} />
         
          <Route path="/createrecipe" component={() => <CreateRecipe user={this.props.user} token={this.props.token}/>} />
          <Route path="/day" component={() => <Day />} />
          <Route path="/home" component={() => <Home />} />
          <Redirect to="/login" />
        </Switch>
      </div>
    );
  }
}

export default withRouter(connect(mapStateToProps, mapDispatchToProps)(Main));
