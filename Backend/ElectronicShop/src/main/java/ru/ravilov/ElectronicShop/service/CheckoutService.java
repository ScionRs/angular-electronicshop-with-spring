package ru.ravilov.ElectronicShop.service;

import ru.ravilov.ElectronicShop.dto.Purchase;
import ru.ravilov.ElectronicShop.dto.PurchaseResponse;

public interface CheckoutService {

 PurchaseResponse placeOrder(Purchase purchase);

}
