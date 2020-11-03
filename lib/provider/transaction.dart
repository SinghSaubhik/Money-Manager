class Transaction {
  TransactionType _type;
  String _title;
  DateTime _dateTime;
  int _balance;

  Transaction(this._type, this._dateTime, this._balance,
      {String title = "No Title"}) {
    this._title = title;
  }

  int get balance => _balance;

  DateTime get dateTime => _dateTime;

  String get title => _title;

  TransactionType get type => _type;

// Transaction(TransactionType type, DateTime dateTime, int balance)

}

enum TransactionType { Debit, Credit }
