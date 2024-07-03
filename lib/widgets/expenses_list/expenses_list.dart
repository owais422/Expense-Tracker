import 'package:flutter/material.dart';
import 'package:ud_project_04/models/expense.dart';
import 'package:ud_project_04/widgets/expenses_list/expense_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.onRemoveExpense, required this.expenses});
  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          return Dismissible(
            background: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Theme.of(context).colorScheme.error.withOpacity(0.55),
              ),
              margin: const EdgeInsets.all(12),
            ),
            onDismissed: (direction) => onRemoveExpense(expenses[index]),
            key: ValueKey(expenses[index]),
            child: ExpenseItem(
              expenses[index],
            ),
          );
        });
  }
}
