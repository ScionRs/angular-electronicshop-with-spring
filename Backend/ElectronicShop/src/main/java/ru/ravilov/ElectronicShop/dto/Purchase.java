package ru.ravilov.ElectronicShop.dto;

import lombok.Data;
import ru.ravilov.ElectronicShop.entity.Address;
import ru.ravilov.ElectronicShop.entity.Customer;
import ru.ravilov.ElectronicShop.entity.Order;
import ru.ravilov.ElectronicShop.entity.OrderItem;

import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;
}
