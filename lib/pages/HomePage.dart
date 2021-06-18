import 'package:flutter/material.dart';
import 'package:flutter_app1/pages/AboutApp.dart';
import 'package:flutter_app1/pages/BaseLogic.dart';

import 'Settings.dart';
import 'User.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = "Home page";
  @override
  Widget build(BuildContext context) {
    //корневой виджет для страницы или экрана
    return MaterialApp(
      home: Scaffold(drawer: new Drawer(
      child: new ListView(
        children: <Widget>[
          new Container(child: new DrawerHeader(child: new Container(
      child: SizedBox.expand(
        // height: double.infinity,
        child: new Column(
            children: <Widget>[
              Container(
                color: Colors.transparent,
                width: MediaQuery.of(context).size.width,
                height: 110,
                        child: new FloatingActionButton(
                        onPressed: () => {Navigator.push(context, MaterialPageRoute(builder: (context)=>User()))
                        },
                        tooltip: 'Increment',
                          child:
                          Icon(Icons.person_pin_outlined,
                              size: 62),
                    ),
              )
            ]),
      ),

          ))),
          new Container (
            width: double.infinity,
            child: new Column(
                children: <Widget>[
                  Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: FlatButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>BaseLogic()));
                      },
                      color: Colors.blue[50],
                      child: Text(
                        "Оенить качество",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Raleway',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: FlatButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>Settings()));
                      },
                      color: Colors.blue[50],
                      child: Text(
                        "Настройки",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Raleway',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: Colors.transparent,
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: FlatButton(
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0),
                      ),
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=>AbouteApp()));
                      },
                      color: Colors.blue[50],
                      child: Text(
                        "О приложении",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Raleway',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ]
            ),
          )
        ],
      ),
    ),
        appBar: new AppBar(title: new Text("Test Page"),),
        body: new Center(child: new Text((text)),
        )),
        routes: <String, WidgetBuilder>{
          '/a': (BuildContext context) => Settings(),
        });
  }
}