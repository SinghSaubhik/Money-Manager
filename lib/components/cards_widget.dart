import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TotalBalanceWidget extends StatelessWidget {

  final int _totalBalance;

  const TotalBalanceWidget(this._totalBalance, {Key key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFF51ABFF),
        borderRadius: BorderRadius.circular(5),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Total Balance",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  "₹ $_totalBalance",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.w900,
                  ),
                )
              ],
            ),
            SvgPicture.asset("assets/svg/wallet.svg")
          ],
        ),
      ),
    );
  }
}

class IncomeExpense extends StatelessWidget {
  final String title;
  final String assetName;
  final String value;

  const IncomeExpense({Key key, this.title, this.assetName, this.value})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: EdgeInsets.only(top: 8, bottom: 20, left: 12, right: 12),
      decoration: BoxDecoration(
        color: Color(0xFF212E3D),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SvgPicture.asset(assetName),
              Text(
                title,
                style: TextStyle(
                  color: Color(0xFFE5E5E5),
                ),
              )
            ],
          ),
          Text(
            "₹ $value",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.w700, fontSize: 22),
          )
        ],
      ),
    );
  }
}

