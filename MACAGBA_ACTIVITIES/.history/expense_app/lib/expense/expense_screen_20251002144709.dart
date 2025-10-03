import 'package:expense_app/expense/expense_list.dart';
import 'package:expense_app/expense/new_expense.dart';
import 'package:expense_app/model/expense.dart';
import 'package:flutter/material.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() {
    return _ExpenseScreenState();
  }
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  final List<Expense> registeredExpenses = [
    Expense(
      title: 'Lunch sa Jabee',
      amount: 300.49,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Games',
      amount: 3000.00,
      date: DateTime.now(),
      category: Category.leisure,
    ),
    Expense(
      title: 'Grab',
      amount: 1000.49,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];

  void openExpenseModal() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewExpense(addExpense: addExpense),
    );
  }

  void addExpense(Expense expense) {
    setState(() {
      registeredExpenses.add(expense);
    });
  }

  void removeExpense(Expense expense) {
    setState(() {
      registeredExpenses.remove(expense);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: Duration(seconds: 3),
        content: Text('Expense Deleted'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = Center(
      child: Text('No Expenses Found. Try adding some!'),
    );
    if (registeredExpenses.isNotEmpty) {
      mainContent = ExpenseList(
        expenses: registeredExpenses,
        removeExpense: removeExpense,
      );
    }
    return Scaffold(
      appBar: AppBar(
        title: Text('Gastos Tracker'),
        actions: [
          IconButton(onPressed: openExpenseModal, icon: Icon(Icons.add)),
        ],
      ),
      body: Column(
        children: [
          Text('Chart Area'),
          Expanded(child: mainContent),
        ],
      ),
    );
  }
}
