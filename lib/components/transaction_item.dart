import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:money_manager/provider/transaction.dart';

class TransactionItem extends StatelessWidget {
  final Transaction _transaction;

  const TransactionItem(
    this._transaction, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      decoration: BoxDecoration(
          color: Color(0xFF212E3D), borderRadius: BorderRadius.circular(10)),
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(
            _transaction.type == TransactionType.Credit
                ? "assets/svg/credit_logo.svg"
                : "assets/svg/debit_logo.svg",
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _transaction.title,
                  style: TextStyle(
                      color: Colors.white.withOpacity(.8),
                      fontWeight: FontWeight.w700),
                ),
                Text(
                  _transaction.dateTime.toIso8601String(),
                  style: TextStyle(
                    color: Color(0xFFA0A0A0),
                  ),
                )
              ],
            ),
          ),
          Text(
            "₹ ${_transaction.balance}",
            style: TextStyle(
                color: Colors.white, fontSize: 22, fontWeight: FontWeight.w700),
          )
        ],
      ),
    );
  }
}
