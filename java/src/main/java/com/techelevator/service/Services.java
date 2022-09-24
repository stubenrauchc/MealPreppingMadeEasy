package com.techelevator.service;

import com.techelevator.dto.MealPlannerDTO;
import com.techelevator.dto.RecipeDTO;
import com.techelevator.dto.RecipeIngredientDTO;
import com.techelevator.dto.ShoppingListDTO;
import com.techelevator.model.*;
import com.techelevator.repository.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.transaction.Transactional;
import java.util.*;

@Service
public class Services {

    @Autowired
    IngredientRepository ingredientRepository;
    @Autowired
    RecipeRepository recipeRepository;
    @Autowired
    RecipeIngredientRepository recipeIngredientRepository;
    @Autowired
    MealPlanRepository mealPlanRepository;
    @Autowired
    UserRepository userRepository;

    //-------------------QUERIES-------------------

    public List<MealPlan> mealPlanListForUser(String name) {

        return mealPlanRepository.getMealPlanListFromUserId(getUserId(name));
    }

    //For when we start searching by breakfast/lunch/dinner.
    public List<Recipe> getRecipeTitleByCategory(String category) {
        return recipeRepository.getRecipeTitleByCategory(category);
    }

    public RecipeDTO getRecipeById(Integer recipeId) {
        return getRecipeDTO(recipeId);
    }


    public List<ShoppingListDTO> getMealPlanShoppingListFromUser(String username) {

        List<ShoppingListDTO> shoppingList = new ArrayList<>();
        List<String> ingredientNames = new ArrayList<>(recipeIngredientRepository.
                getListOfIngredientNames(getUserId(username)));

        for (String ingredientName : ingredientNames) {
            shoppingList.add(new ShoppingListDTO(ingredientName));
        }
        return shoppingList;
    }

    //-------------------Meal Plan-------------------

    public void saveMealPlan(List<MealPlannerDTO> mealPlanList, String name) {

        for (MealPlannerDTO mealPlan : mealPlanList) {
            MealPlan incomingMealPlan = new MealPlan();
            incomingMealPlan.setMealplanid(mealPlan.getMealplanid());
            incomingMealPlan.setUser_id(getUserId(name));
            incomingMealPlan.setCategory(mealPlan.getCategory());
            incomingMealPlan.setDayofweek(mealPlan.getDayofweek());
            incomingMealPlan.setRecipename(mealPlan.getRecipename());
            mealPlanRepository.save(incomingMealPlan);
        }
    }


    //Get the recipe's ingredients for the DTO
    //-------------------RECIPES-------------------
    public List<RecipeIngredientDTO> testGetRecipeIngredients(Integer recipeid) {


        List<RecipeIngredient> recipeIngredients = recipeIngredientRepository.getRecipeIngredients(recipeid);
        List<RecipeIngredientDTO> recipeIngredientsDTO = new ArrayList<>();

        for (RecipeIngredient recipeIngredient : recipeIngredients) {

            recipeIngredientsDTO.add(new RecipeIngredientDTO(
                    ingredientRepository.getOne(recipeIngredient.getIngredientid()).getName(),
                    recipeIngredient.getQuantity(),
                    recipeIngredient.getMeasurementunit()));
        }

        return recipeIngredientsDTO;
    }

    //Get the specific recipe for the DTO

    public RecipeDTO getRecipeDTO(Integer recipeId) {

        //Placeholder, this will be the id passed in above

        RecipeDTO recipeDTO = (new RecipeDTO(
                recipeId,
                recipeRepository.getOne(recipeId).getUser_id(),
                recipeRepository.getOne(recipeId).getTitle(),
                recipeRepository.getOne(recipeId).getCategory(),
                recipeRepository.getOne(recipeId).getImagename(),
                testGetRecipeIngredients(recipeId),
                recipeRepository.getOne(recipeId).getInstructions(),
                recipeRepository.getOne(recipeId).getServingsize()
        ));

        return recipeDTO;
    }

    public Collection<RecipeDTO> listOfUsersRecipes(String username) {

        Collection<RecipeDTO> listOfRecipeDTO = new ArrayList<>();
        Collection<Recipe> recipes = recipeRepository.getAllUsersRecipes(getUserId(username));

        for (Recipe recipe : recipes) {

            listOfRecipeDTO.add(getRecipeDTO(recipe.getRecipeid()));

        }

        return listOfRecipeDTO;

    }
    public Collection<RecipeDTO> listOfAllRecipesByDistinctTitle() {
        Collection<RecipeDTO> listOfRecipeDTO = new ArrayList<>();
        Collection<Recipe> recipes = recipeRepository.findAll();
        for (Recipe recipe : recipes) {
            listOfRecipeDTO.add(getRecipeDTO(recipe.getRecipeid()));
        }
        return listOfRecipeDTO;
    }


    public Collection<RecipeDTO> listOfRecipesByCategory(String category) {

        Collection<RecipeDTO> listOfRecipeDTO = new ArrayList<>();
        Collection<Recipe> recipes = recipeRepository.getRecipeTitleByCategory(category);

        for (Recipe recipe : recipes) {

            listOfRecipeDTO.add(getRecipeDTO(recipe.getRecipeid()));

        }

        return listOfRecipeDTO;

    }

    //-------------------DELETE-------------------

    @Transactional
    public void deleteMealPlanForUser(String username) {
        mealPlanRepository.deleteMealPlanFromUser(getUserId(username));
    }


    //THIS IS WAY TOO SCARY, DON'T USE DELETE RECIPE
//    public void deleteRecipe(Integer recipeId) {
//        List<RecipeIngredient> listOfRecipeIngredients = recipeIngredientRepository.getRecipeIngredients(recipeId);
//        for (RecipeIngredient recipeIngredient : listOfRecipeIngredients) {
//            recipeIngredientRepository.deleteById(recipeId);
//        }
//        recipeRepository.deleteById(recipeId);
//        System.out.println("DELETED RECIPE WITH THE ID OF: " + recipeId);
//    }


    //-------------------UPDATE-------------------

    public void updateRecipe(RecipeDTO recipeDTO) {

        Recipe updatedRecipe = new Recipe();

        updatedRecipe.setRecipeid(recipeDTO.getRecipeid());
        updatedRecipe.setUser_id(recipeDTO.getUser_id());
        updatedRecipe.setTitle(recipeDTO.getTitle());
        updatedRecipe.setCategory(recipeDTO.getCategory());
        updatedRecipe.setInstructions(recipeDTO.getInstructions());
        updatedRecipe.setServingsize(recipeDTO.getServingSize());
        updatedRecipe.setImagename(recipeDTO.getImageUrl());

        recipeRepository.save(updatedRecipe);
        updateRecipeIngredients(recipeDTO);

    }


    //-------------------CREATE-------------------

    //Weening this out.
    public Ingredient checkOrCreateIngredient(String name) {
        Ingredient tempIngredient = new Ingredient();

        if (ingredientRepository.getIngredientByName(name) == null) {
            tempIngredient.setName(name);
            ingredientRepository.save(tempIngredient);
            return tempIngredient;
        } else return ingredientRepository.getIngredientByName(name);
    }

    public Ingredient createIngredient(String name) {
        Ingredient tempIngredient = new Ingredient();

        tempIngredient.setName(name);
        ingredientRepository.save(tempIngredient);

        return tempIngredient;

    }


    public void updateRecipeIngredients(RecipeDTO recipeDTO){

        List<RecipeIngredientDTO> tempIngredients = new ArrayList<>(recipeDTO.getIngredientList());
        List<RecipeIngredient> recipeIngredients = new ArrayList<>();
        RecipeIngredient recipeIngredient = new RecipeIngredient();


        for (RecipeIngredientDTO tempIngredient : tempIngredients) {

            //MAKING SURE THE INGREDIENT IS CREATED
            if (Objects.isNull(ingredientRepository.getIngredientByName(tempIngredient.getName()))) {
                Ingredient newIngredient = checkOrCreateIngredient(tempIngredient.getName());

                recipeIngredient.setRecipeid(recipeRepository.recipeByTitleAndUser(recipeDTO.getTitle(),
                        recipeDTO.getUser_id()).getRecipeid());
                recipeIngredient.setIngredientid(newIngredient.getIngredientid());
                recipeIngredient.setQuantity(tempIngredient.getQuantity());
                recipeIngredient.setMeasurementunit(tempIngredient.getMeasurementunit());
                recipeIngredients.add(recipeIngredient);

                recipeIngredientRepository.save(recipeIngredient);

            } else
                recipeIngredient.setRecipeid(
                        recipeRepository.recipeByTitleAndUser(recipeDTO.getTitle(), recipeDTO.getUser_id()).getRecipeid());
            recipeIngredient.setIngredientid(
                    ingredientRepository.getIngredientByName(tempIngredient.getName()).getIngredientid());
            recipeIngredient.setQuantity(tempIngredient.getQuantity());
            recipeIngredient.setMeasurementunit(tempIngredient.getMeasurementunit());
            recipeIngredients.add(recipeIngredient);

            recipeIngredientRepository.save(recipeIngredient);

        }

        System.out.println(recipeIngredients);

    }
    @Transactional
    public void createRecipeIngredients(RecipeDTO recipeDTO) {

        //TRIPLE MAKING SURE YOU HAVE A RECIPE FIRST!
//        if (Objects.isNull(recipeRepository.recipeByTitleAndUser(recipeDTO.getTitle(), recipeDTO.getUser_id()))) {
//            createRecipe(recipeDTO);
//        }

        List<RecipeIngredientDTO> tempIngredients = new ArrayList<>(recipeDTO.getIngredientList());
        List<RecipeIngredient> recipeIngredients = new ArrayList<>();
        RecipeIngredient recipeIngredient = new RecipeIngredient();

        for (RecipeIngredientDTO tempIngredient : tempIngredients) {

            //MAKING SURE THE INGREDIENT IS CREATED
            if (Objects.isNull(ingredientRepository.getIngredientByName(tempIngredient.getName()))) {
                Ingredient newIngredient = checkOrCreateIngredient(tempIngredient.getName());

                recipeIngredient.setRecipeid(recipeRepository.recipeByTitleAndUser(recipeDTO.getTitle(),
                        recipeDTO.getUser_id()).getRecipeid());
                recipeIngredient.setIngredientid(newIngredient.getIngredientid());
                recipeIngredient.setQuantity(tempIngredient.getQuantity());
                recipeIngredient.setMeasurementunit(tempIngredient.getMeasurementunit());
                recipeIngredients.add(recipeIngredient);

                recipeIngredientRepository.save(recipeIngredient);

            } else {

                recipeIngredient.setRecipeid(
                        recipeRepository.recipeByTitleAndUser(recipeDTO.getTitle(),
                                recipeDTO.getUser_id()).getRecipeid());
                recipeIngredient.setIngredientid(ingredientRepository.getIngredientByName(tempIngredient.getName()).getIngredientid());
                recipeIngredient.setQuantity(tempIngredient.getQuantity());
                recipeIngredient.setMeasurementunit(tempIngredient.getMeasurementunit());
                recipeIngredients.add(recipeIngredient);

                System.out.println("Recipe ingredient before insert: " + recipeIngredient.getIngredientid());

                insertIntoRecipeIngredients(
                        recipeIngredient.getRecipeid(),
                        recipeIngredient.getIngredientid(),
                        recipeIngredient.getQuantity(),
                        recipeIngredient.getMeasurementunit());

                System.out.println("Recipe ingredient after insert: " + recipeIngredient.getIngredientid());

            }

        }

        System.out.println(recipeIngredients);

    }

    public void createRecipe(RecipeDTO recipeDTO) {

        Recipe incomingRecipe = new Recipe();

        if (Objects.isNull(recipeRepository.recipeByTitleAndUser(recipeDTO.getTitle(), recipeDTO.getUser_id()))) {

            incomingRecipe.setUser_id(recipeDTO.getUser_id());
            incomingRecipe.setTitle(recipeDTO.getTitle());
            incomingRecipe.setCategory(recipeDTO.getCategory());
            incomingRecipe.setInstructions(recipeDTO.getInstructions());
            incomingRecipe.setServingsize(recipeDTO.getServingSize());
            incomingRecipe.setImagename(recipeDTO.getImageUrl());

            System.out.println("THIS IS INCOMING RECIPE! " + incomingRecipe);

            recipeRepository.save(incomingRecipe);

            System.out.println("HUZZAH, THE RECIPE WAS SAVED: " + incomingRecipe.getTitle());
        }

    }

    //-------------------HELPERS-------------------
    public Long getUserId(String username) {
        return userRepository.getUserIdFromUsername(username);
    }

    @Transactional
    public void insertIntoRecipeIngredients(Integer recipeid, Integer ingredientid, String quantity, String measurementunit) {
        recipeIngredientRepository.createNewRecipeIngredient(recipeid, ingredientid, quantity, measurementunit);
    }

    @Transactional
    public void deleteRecipeIngredientsByRecipeId(Integer recipeId) {
        System.out.println("OH NO, WE DELETED THE INGREDIENTS FOR: " + recipeId);
        recipeIngredientRepository.deleteIngredientsFromRecipeID(recipeId);
    }

    //-------------------FINAL STRAWS-------------------

    @Transactional
    public Recipe saveRecipeAndIngredients(RecipeDTO recipeDTO) {

        createRecipe(recipeDTO);
        createRecipeIngredients(recipeDTO);

        System.out.println("HUZZAH");

        return recipeRepository.recipeByTitleAndUser(recipeDTO.getTitle(), recipeDTO.getUser_id());

    }

}
