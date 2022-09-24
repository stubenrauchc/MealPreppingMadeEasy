package com.techelevator.repository;

import com.techelevator.model.MealPlan;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MealPlanRepository extends JpaRepository<MealPlan, Integer> {

//    @Query("SELECT m.mealplanid FROM MealPlan m WHERE m.user_id = :user_id")
//     Integer getMealPlanIdFromUserId(@Param("user_id") Long user_id);

    @Query("SELECT m.mealplanid FROM MealPlan m WHERE m.user_id = :user_id")
    List<Integer> getMealPlanIdFromUserId(@Param("user_id") Long user_id);

    @Query("SELECT m FROM MealPlan m WHERE m.user_id = :user_id")
    List<MealPlan> getMealPlanListFromUserId(@Param("user_id") Long user_id);

    @Query("SELECT m FROM MealPlan m WHERE m.user_id = :user_id")
    MealPlan getMealPlanFromUserId(@Param("user_id") Long user_id);

    @Modifying
    @Query("DELETE FROM MealPlan m WHERE m.user_id = :user_id")
    void deleteMealPlanFromUser(@Param("user_id") Long user_id);

}
