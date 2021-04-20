package ru.ravilov.ElectronicShop.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import ru.ravilov.ElectronicShop.entity.Customer;

@Repository
public interface CustomerRepository extends JpaRepository<Customer, Long> {
}
