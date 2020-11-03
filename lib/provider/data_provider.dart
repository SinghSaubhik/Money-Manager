import 'package:flutter/foundation.dart';
import 'package:money_manager/provider/transaction.dart';

class DataProvider extends ChangeNotifier {
  int _totalBalance = 0;
  int _income = 0;
  int _expense = 0;

  List<Transaction> _transactionList = [];

  DataProvider(
      this._totalBalance, this._income, this._expense, this._transactionList);

  List<Transaction> get transactionList => _transactionList;

  int get expense => _expense;

  int get income => _income;

  int get totalBalance => _totalBalance;

  void addTransaction(Transaction transaction){
    if(transaction?.type == TransactionType.Debit){
      _expense += transaction?.balance;
      _totalBalance -= transaction?.balance;
    }else{
      _income += transaction?.balance;
      _totalBalance += transaction?.balance;
    }

    _transactionList.add(transaction);
    notifyListeners();
  }


}
