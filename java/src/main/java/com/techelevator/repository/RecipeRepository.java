package com.techelevator.repository;

import com.techelevator.model.Recipe;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RecipeRepository extends JpaRepository<Recipe, Integer>, CrudRepository<Recipe, Integer> {

    @Query("SELECT r FROM Recipe r WHERE r.category LIKE :category")
    List<Recipe> getRecipeTitleByCategory(@Param("category") String category);

    //Deprecated code that will now break because title is not unique.
//    @Query("SELECT r FROM Recipe r WHERE r.title LIKE :title")
//    Recipe recipeByTitle(@Param("title") String title);

    @Query("SELECT r FROM Recipe r WHERE r.user_id = :user_id")
    List<Recipe> getAllUsersRecipes(@Param("user_id") Long user_id);


    @Query(value = "SELECT DISTINCT ON (title) * FROM recipe", nativeQuery = true)
    List<Recipe> getDistinctTitleRecipes();

    @Query("SELECT r FROM Recipe r WHERE r.title LIKE :title AND r.user_id = :user_id")
    Recipe recipeByTitleAndUser(@Param("title") String title, @Param("user_id") Long user_id);

}
