package com.project.Restaurant.Service;

import com.project.Restaurant.Model.Order;
import com.project.Restaurant.Repository.OrderRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class OrderService {

    @Autowired
    private OrderRepository orderRepository;

    public List<Order> getAllOrders() {
        return orderRepository.findAll();
    }

    public Optional<Order> getOrderById(Long id) {
        return orderRepository.findById(id);
    }

    public Order createOrder(Order order) {
        order.setOrderStatus("Pending"); // Set default order status
        return orderRepository.save(order);
    }

    public Optional<Order> updateOrder(Long id, Order orderDetails) {
        Optional<Order> optionalOrder = orderRepository.findById(id);
        if (optionalOrder.isPresent()) {
            Order existingOrder = optionalOrder.get();

            existingOrder.setItems(orderDetails.getItems());
            existingOrder.setTotalPrice(orderDetails.getTotalPrice());
            existingOrder.setOrderStatus(orderDetails.getOrderStatus());
            return Optional.of(orderRepository.save(existingOrder));
        }
        return Optional.empty();
    }

    public Optional<Order> updateOrderStatus(Long id, String status) {
        Optional<Order> optionalOrder = orderRepository.findById(id);
        if (optionalOrder.isPresent()) {
            Order existingOrder = optionalOrder.get();
            existingOrder.setOrderStatus(status);
            return Optional.of(orderRepository.save(existingOrder));
        }
        return Optional.empty();
    }

    public boolean deleteOrder(Long id) {
        if (orderRepository.existsById(id)) {
            orderRepository.deleteById(id);
            return true;
        }
        return false;
    }
    public List<Order> getOrdersByStatus(String status) {
        return orderRepository.findByOrderStatus(status);
    }
}
