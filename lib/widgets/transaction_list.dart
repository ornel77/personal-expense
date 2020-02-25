import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransaction = [
    Transaction(
      id: 't1',
      title: 'Piano',
      amount: 120.99,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Camera',
      amount: 499.99,
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
            children: _userTransaction.map((tx) {
              return Card(
                child: Row(
                  children: <Widget>[
                    //* PRICE
                    Container(
                      // width: 110,
                      margin: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        ),
                      ),
                      padding: EdgeInsets.all(10),
                      //amount content
                      child: Text(
                        '\€${tx.amount}', //!no need to use toString()
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple,
                        ),
                      ),
                    ),

                    //* TITLE AND DATE
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        //title content
                        Text(
                          tx.title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        //date content
                        Text(
                          DateFormat.yMMMMEEEEd().add_Hms().format(tx.date),
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }).toList(),
          );
  }
}
