import "dart:io";
import "package:flutter/material.dart";
import 'package:intl/intl.dart';
import "package:path_provider/path_provider.dart";
import 'BaseModel.dart';
import "appointments/Appointments.dart";
import "contacts/Contacts.dart";
import "notes/Notes.dart";
import "tasks/Tasks.dart";
import "utils.dart" as utils;
void main() {
  startMeUp() async {
    Directory docsDir =
    await getApplicationDocumentsDirectory();
    utils.docsDir = docsDir;
    runApp(FlutterBook());
  }
  startMeUp();
}

class FlutterBook extends StatelessWidget {
  Widget build(BuildContext inContext) {
    return MaterialApp(
        home : DefaultTabController(
            length : 4,
            child : Scaffold(
                appBar : AppBar(
                    title : Text("FlutterBook"),
                    bottom : TabBar(
                        tabs : [
                          Tab(icon : Icon(Icons.date_range),
                              text : "Appointments"),
                          Tab(icon : Icon(Icons.contacts),
                              text : "Contacts"),
                          Tab(icon : Icon(Icons.note),
                              text : "Notes"),
                          Tab(icon : Icon(Icons.assignment_turned_in),
                              text : "Tasks")
                        ]
                    )
                ),
                body : TabBarView(
                    children : [
                    Notes()
                ]
            )
        )
    )
    );
  }
}
Future selectDate(
    BuildContext inContext, BaseModel inModel,
    String inDateString
    ) async {
  DateTime initialDate = DateTime.now();
  if (inDateString != null) {
    List dateParts = inDateString.split(",");
    initialDate = DateTime(
        int.parse(dateParts[0]),
        int.parse(dateParts[1]),
        int.parse(dateParts[2])
    );
  }
  DateTime picked = await showDatePicker(
      context : inContext, initialDate : initialDate,
      firstDate : DateTime(1900), lastDate : DateTime(2100)
  );
  if (picked != null) {
    inModel.setChosenDate(
        DateFormat.yMMMMd("en_US").format(picked.toLocal())
    );
    return "${picked.year},${picked.month},${picked.day}";
  }
}