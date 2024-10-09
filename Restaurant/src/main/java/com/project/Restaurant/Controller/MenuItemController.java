package com.project.Restaurant.Controller;

import com.project.Restaurant.Model.MenuItem;
import com.project.Restaurant.Repository.MenuItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/menu")
public class MenuItemController {

    @Autowired
    private MenuItemRepository menuItemRepository;

    // Get all menu items
    @GetMapping
    public List<MenuItem> getAllMenuItems() {
        return menuItemRepository.findAll();
    }

    // Get menu item by ID
    @GetMapping("/{id}")
    public ResponseEntity<MenuItem> getMenuItemById(@PathVariable Long id) {
        Optional<MenuItem> menuItem = menuItemRepository.findById(id);
        if (menuItem.isPresent()) {
            return ResponseEntity.ok(menuItem.get());
        }
        return ResponseEntity.notFound().build();
    }

    // Create new menu item
    @PostMapping
    public MenuItem createMenuItem(@RequestBody MenuItem menuItem) {
        return menuItemRepository.save(menuItem);
    }

    // Update menu item
    @PutMapping("/{id}")
    public ResponseEntity<MenuItem> updateMenuItem(@PathVariable Long id, @RequestBody MenuItem menuItemDetails) {
        Optional<MenuItem> menuItem = menuItemRepository.findById(id);
        if (menuItem.isPresent()) {
            MenuItem existingMenuItem = menuItem.get();
            existingMenuItem.setName(menuItemDetails.getName());
            existingMenuItem.setDescription(menuItemDetails.getDescription());
            existingMenuItem.setPrice(menuItemDetails.getPrice());
            existingMenuItem.setCategory(menuItemDetails.getCategory());
            existingMenuItem.setImageUrl(menuItemDetails.getImageUrl()); // Updating the imageUrl
            return ResponseEntity.ok(menuItemRepository.save(existingMenuItem));
        }
        return ResponseEntity.notFound().build();
    }

    // Delete menu item
    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteMenuItem(@PathVariable Long id) {
        if (menuItemRepository.existsById(id)) {
            menuItemRepository.deleteById(id);
            return ResponseEntity.ok().build();
        }
        return ResponseEntity.notFound().build();
    }
}
