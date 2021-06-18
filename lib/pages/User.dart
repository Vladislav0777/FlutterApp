import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class User extends StatelessWidget {
  String firstname = "Имя:";
  String lastname = "Фамилия:";
  late DateTime birthdayDate;
  String birthday = "День рождения";
  String city = "Город:";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Users Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              firstname + "                         " + "Ivan",
              textDirection: TextDirection.ltr,
              style: TextStyle(fontSize: 20)
            ),
            Text(
                "                " ,
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 10)
            ),
            Text(
                lastname + "                " + "Ignatovich",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20)
            ),
            Text(
                "                " ,
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 10)
            ),

            Text(
                birthday + "    " + "15.12.1973",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20)
            ),
            Text(
                "                " ,
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 10),
            ),
            Text(
                city + "                      " + "Moscow",
                textDirection: TextDirection.ltr,
                style: TextStyle(fontSize: 20)
            ),
            Row(children: <Widget>[
              Expanded(
                child: new Container(
                    margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                    child: Divider(
                      color: Colors.black,
                      height: 36,
                    )),
              ),
            ]),
          ],
        ),
    ),
    );
  }
}