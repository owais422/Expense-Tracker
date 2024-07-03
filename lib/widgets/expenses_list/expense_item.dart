import 'package:flutter/material.dart';
import 'package:ud_project_04/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});
  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 16,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(expense.title, style: Theme.of(context).textTheme.titleLarge),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  '\$${expense.amount.toStringAsFixed(2)}',
                ),
              ),
              const Spacer(),
              Expanded(
                child: Row(
                  children: [
                    Icon(
                      categoryIcons[expense.category],
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Text(expense.formattedDate),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
