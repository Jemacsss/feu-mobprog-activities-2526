import 'package:expense_app/commons/StyledText.dart';
import 'package:flutter/material.dart';
import 'package:expense_app/model/expense.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({super.key, required this.addExpense});

  final void Function(Expense expense) addExpense;

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  DateTime? dateSelected;
  Category selectedCategory = Category.food;

  void submitExpenseData() {
    double? enteredAmount = double.tryParse(amountController.text);

    if (titleController.text.trim().isEmpty ||
        enteredAmount == null ||
        enteredAmount <= 0 ||
        dateSelected == null) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('Invalid Data', style: StyledText.titleLarge()),
          content: Text(
            'Please fill out all fields with valid data',
            style: StyledText.bodyMedium(),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: Text('OK', style: StyledText.bodyMedium(color: Colors.blue)),
            ),
          ],
        ),
      );
      return;
    }

    Expense newExpense = Expense(
      title: titleController.text.trim(),
      amount: enteredAmount,
      date: dateSelected!,
      category: selectedCategory,
    );
    widget.addExpense(newExpense);

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text('Expenses Saved', style: StyledText.titleLarge()),
        content: Text(
          'Expense was saved with the following data.'
          '\nTitle: ${newExpense.title}'
          '\nAmount: \$${newExpense.amount}',
          style: StyledText.bodyMedium(),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              Navigator.pop(context);
            },
            child: Text('OK', style: StyledText.bodyMedium(color: Colors.blue)),
          ),
        ],
      ),
    );
  }

  void openDatePicker() async {
    final initialDate = DateTime.now();
    final firstDate = DateTime(
      initialDate.year - 1,
      initialDate.month,
      initialDate.day,
    );

    final datePicked = await showDatePicker(
      context: context,
      initialDate: initialDate,
      firstDate: firstDate,
      lastDate: initialDate,
    );
    setState(() {
      dateSelected = datePicked;
    });
  }

  @override
  void dispose() {
    titleController.dispose();
    amountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller: titleController,
            maxLength: 50,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              label: Text('Title', style: StyledText.bodySmall()),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    label: Text('Amount', style: StyledText.bodySmall()),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      dateSelected == null
                          ? 'No Date Selected'
                          : formatter.format(dateSelected!),
                      style: StyledText.bodySmall(),
                    ),
                    IconButton(
                      onPressed: openDatePicker,
                      icon: const Icon(Icons.calendar_month),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              DropdownButton(
                value: selectedCategory,
                items: Category.values
                    .map(
                      (category) => DropdownMenuItem(
                        value: category,
                        child: Row(
                          children: [
                            Icon(categoryIcons[category]),
                            const SizedBox(width: 8),
                            Text(
                              category.name.toUpperCase(),
                              style: StyledText.bodyMedium(),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  if (value == null) {
                    return;
                  }
                  setState(() {
                    selectedCategory = value;
                  });
                },
              ),
              const Spacer(),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Cancel', style: StyledText.bodyMedium(color: Colors.red)),
              ),
              ElevatedButton(
                onPressed: submitExpenseData,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF0D1B2A),
                  foregroundColor: Colors.white,
                ),
                child: Text('Save Expense', style: StyledText.bodyMedium(color: Colors.black)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
