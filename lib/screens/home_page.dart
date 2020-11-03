import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_manager/components/cards_widget.dart';
import 'package:money_manager/components/common_widgets.dart';
import 'package:money_manager/components/transaction_item.dart';
import 'package:money_manager/provider/data_provider.dart';
import 'package:money_manager/provider/transaction.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Icon(
            Icons.menu,
            color: Color(0xFF3C536C),
            size: 32,
          ),
          actions: [Icon(Icons.notifications)],
        ),
        body: Consumer<DataProvider>(
          builder: (context, transactionData, child) {
            return Container(
              margin: EdgeInsets.symmetric(horizontal: 15, vertical: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GreetingsWidget(),
                  SizedBox(
                    height: 25,
                  ),
                  TotalBalanceWidget(transactionData.totalBalance),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: IncomeExpense(
                          title: "Income",
                          assetName: "assets/svg/up.svg",
                          value: transactionData.income.toString(),
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Expanded(
                        child: IncomeExpense(
                          title: "Expenses",
                          assetName: "assets/svg/down.svg",
                          value: transactionData.expense.toString(),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Transaction history",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Expanded(
                    child: buildListView(transactionData.transactionList),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () async{
                        var data = await onAddClick(context);
                        print(data);
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * .065,
                        width: MediaQuery.of(context).size.width * .12,
                        child: Icon(Icons.add, color: Colors.white, size: 32,),
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}


Future<dynamic> onAddClick(BuildContext context){
  return showModalBottomSheet(context: context, builder: (context){
    return Container();
  });
}

Widget buildListView(List<Transaction> transactionList) {
  return transactionList.isEmpty
      ? Center(
          child: Text(
            "No transaction",
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w700),
          ),
        )
      : ListView.builder(
          itemBuilder: (context, index) {
            return TransactionItem(
              transactionList[index],
            );
          },
          itemCount: transactionList.length,
        );
}
