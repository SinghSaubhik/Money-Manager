import "package:flutter/material.dart";
import 'package:money_manager/provider/data_provider.dart';
import 'package:money_manager/provider/transaction.dart';
import 'package:money_manager/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() => runApp(MoneyManager());

var transactionList = [
  Transaction(TransactionType.Credit, DateTime.now(), 72000,
      title: "Venv Account"),
  Transaction(TransactionType.Credit, DateTime.now(), 72000,
      title: "Venv Account"),
  Transaction(TransactionType.Credit, DateTime.now(), 72000,
      title: "Venv Account"),
  Transaction(TransactionType.Debit, DateTime.now(), 72000,
      title: "Venv Account"),
  Transaction(TransactionType.Credit, DateTime.now(), 72000,
      title: "Venv Account"),
  Transaction(TransactionType.Credit, DateTime.now(), 72000,
      title: "Venv Account"),
  Transaction(TransactionType.Debit, DateTime.now(), 72000,
      title: "Venv Account"),
  Transaction(TransactionType.Credit, DateTime.now(), 72000,
      title: "Venv Account"),
];

class MoneyManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      darkTheme: ThemeData(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
        fontFamily: 'CinzelDecorative',
      ),
      themeMode: ThemeMode.dark,
      home: ChangeNotifierProvider(
        create: (context) => DataProvider(75384, 50000, 20000, transactionList),
        child: HomePage(),
      ),
    );
  }
}
