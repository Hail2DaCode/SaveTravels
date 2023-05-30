package com.brian.saveTravels.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.brian.saveTravels.models.Expense;

public interface ExpenseRepository extends CrudRepository<Expense, Long> {
	List<Expense> findAll();
}
