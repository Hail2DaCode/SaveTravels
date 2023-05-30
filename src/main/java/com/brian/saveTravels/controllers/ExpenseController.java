package com.brian.saveTravels.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.brian.saveTravels.models.Expense;
import com.brian.saveTravels.services.ExpenseService;

import jakarta.validation.Valid;

@Controller
public class ExpenseController {
	@Autowired
	ExpenseService expenseService;
	@GetMapping("/expenses")
	public String dash(Model model, @ModelAttribute("expense") Expense expense) {
		List<Expense> expenses = expenseService.allExpenses();
		model.addAttribute("expenses", expenses);
		return "dash.jsp";
	}
	@PostMapping("/new/Expense")
	public String create(
			@Valid @ModelAttribute("expense") Expense expense,
			BindingResult result) {
		if (result.hasErrors()) {
			return "dash.jsp";
		}
		else {
		expenseService.createExpense(expense);
		return "redirect:/expenses";
		}
	}
	@GetMapping("/expenses/edit/{id}")
	public String edit(@PathVariable("id") Long id, Model model) {
		Expense expense = expenseService.findExpense(id);
		model.addAttribute("expense",expense);
		return "edit.jsp";
	}
	@RequestMapping(value = "/expenses/{id}", method = RequestMethod.PUT)
	public String update(@Valid @ModelAttribute("expense") Expense expense,
			BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("expense", expense);
			return "edit.jsp";
		}
		else {
			expenseService.updateExpense2(expense);
			return "redirect:/expenses";
		}
	}
	@DeleteMapping("/expenses/{id}")
	public String destroy(@PathVariable("id") Long id) {
		expenseService.deleteExpense(id);
		return "redirect:/expenses";
	}
	@GetMapping("/expenses/{id}")
	public String show(@PathVariable("id") Long id, Model model) {
		Expense expense = expenseService.findExpense(id);
		model.addAttribute(expense);
		return "show.jsp";
		
	}
}

