import 'package:expense_tracker/data/expense_item.dart';
import 'package:hive/hive.dart';

class HiveDatabase {
  //reference our box
  final _mybox = Hive.box("expense_database2");

  // Write data
  Future<void> saveData(List<ExpenseItem> allExpense) async {
    List<List<dynamic>> allExpensesFormatted = [];

    for (var expense in allExpense) {
      // Convert each ExpenseItem into a list of storable types (e.g., Strings, DateTime)
      allExpensesFormatted.add([
        expense.name,
        expense.amount,
        expense.datetime,
      ]);
    }

    // Ensure the box is ready and write the data
    await _mybox.put("ALL_EXPENSES", allExpensesFormatted);
  }

  // read data
  List<ExpenseItem> readData() {
    List savedExpenses = _mybox.get("ALL_EXPENSES") ?? [];
    List<ExpenseItem> allExpense = [];

    for (int i = 0; i < savedExpenses.length; i++) {
      //collect individual expense data
      String name = savedExpenses[i][0];

      String amount = savedExpenses[i][1];

      DateTime datetime = savedExpenses[i][2];

      //create expense item
      ExpenseItem expense =
          ExpenseItem(name: name, amount: amount, datetime: datetime);

      //add expense to overall list of expenses
      allExpense.add(expense);
    }
    return allExpense;
  }
}
