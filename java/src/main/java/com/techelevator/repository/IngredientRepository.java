package com.techelevator.repository;

import com.techelevator.model.Ingredient;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface IngredientRepository extends JpaRepository<Ingredient, Integer> {

    @Query("SELECT r FROM Ingredient r WHERE r.name LIKE :name")
    Ingredient getIngredientByName(@Param("name") String name);

    @Query("SELECT i.name FROM Ingredient i WHERE i.ingredientid = :ingredientid")
    String getIngredientNameById(@Param("ingredientid") Integer ingredientid);


}
