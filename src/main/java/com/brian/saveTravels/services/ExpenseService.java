package com.brian.saveTravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Service;


import com.brian.saveTravels.models.Expense;
import com.brian.saveTravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	private final ExpenseRepository expenseRepository;

	public ExpenseService(ExpenseRepository expenseRepository) {
		this.expenseRepository = expenseRepository;
	}

	public List<Expense> allExpenses() {
		return expenseRepository.findAll();
	}

	public Expense createExpense(Expense e) {
		return expenseRepository.save(e);
	}

	public Expense findExpense(Long id) {
		Optional<Expense> optionalExpense = expenseRepository.findById(id);
		if (optionalExpense.isPresent()) {
			return optionalExpense.get();
		} else {
			return null;
		}
	}

	public Expense updateExpense2(Expense expense) {
		Optional<Expense> optionalExpense = expenseRepository.findById(expense.getId());
		if (optionalExpense.isPresent()) {
			return expenseRepository.save(expense);
		} else {
			return this.createExpense(expense);
		}
	}
	public void deleteExpense(Long id) {
		expenseRepository.deleteById(id);
	}

}
