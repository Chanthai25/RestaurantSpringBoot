// src/main/java/com/project/Restaurant/Repository/CategoryRepository.java
package com.project.Restaurant.Repository;

import com.project.Restaurant.Model.Category;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface CategoryRepository extends JpaRepository<Category, Long> {
}
