package com.techelevator.repository;

import com.techelevator.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    @Query("SELECT u.id FROM User u WHERE u.username LIKE :username")
    Long getUserIdFromUsername(@Param("username") String username);

    @Query("SELECT u FROM User u WHERE u.username LIKE :username")
    User getUserFromUsername(@Param("username") String username);
}
