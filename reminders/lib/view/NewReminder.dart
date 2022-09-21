import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reminders/controller/Database.dart';
import 'package:reminders/controller/FlutterNotification.dart';
import 'package:reminders/models/reminder.dart';
import 'package:sizer/sizer.dart';
import 'package:sqflite/sqflite.dart';

import '../core/colors.dart';

class NewReminder extends StatefulWidget {
  List<String>? listApp;

  NewReminder({this.listApp});

  @override
  State<NewReminder> createState() => _NewReminderState();
}

class _NewReminderState extends State<NewReminder> {
  String? app;
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  TextEditingController title = TextEditingController();
  TextEditingController text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text("Novo Reminder"),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5.w),
            child: Column(
              children: [
                TextFormField(
                  key: formKey1,
                  controller: title,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabled: true,
                    contentPadding: EdgeInsets.only(left: 15, right: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    labelText: "Titulo",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      print("null text");
                      return "Preencha o campo";
                    }
                    title.text = value;
                    return "teste";
                  },
                ),
                SizedBox(
                  height: 1.h,
                ),
                TextFormField(
                  key: formKey2,
                  controller: text,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    enabled: true,
                    contentPadding: EdgeInsets.only(left: 15, right: 15),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(15.0),
                      ),
                    ),
                    labelText: "Descrição",
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      print("null descrição");
                      return "Preencha o campo";
                    }
                    text.text = value;
                    return "teste";
                  },
                ),
                SizedBox(
                  height: 1.h,
                ),
                Container(
                  height: 4.0.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: AppColors.background,
                  ),
                  child: DropdownButtonFormField<String>(
                    iconSize: 20.sp,
                    decoration: InputDecoration(
                      enabled: true,
                      contentPadding: EdgeInsets.only(left: 14, right: 14),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(15.0),
                        ),
                      ),
                      labelText: null,
                      labelStyle: TextStyle(color: Colors.red),
                    ),
                    onChanged: (value) => (app = value!),
                    value: widget.listApp![0],
                    hint: Text(
                      "N sei",
                    ),
                    iconEnabledColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    dropdownColor: Colors.black,
                    focusColor: Colors.red,
                    items: widget.listApp!.map<DropdownMenuItem<String>>(
                      (String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                          ),
                        );
                      },
                    ).toList(),
                  ),
                ),
              ],
            ),
          ),
          FloatingActionButton(
            mini: true,
            onPressed: () {
              formKey1.currentState?.validate();
              formKey2.currentState?.validate();
              CustomNotification notification =
                  CustomNotification(id: 1, title: title.text, body: text.text);

              Provider.of<NotificationService>(context, listen: false)
                  .showNotification(notification);

              DBLocal().save(title.text, text.text, app);
              //Navigator.of(context).pop();
            },
            child: Icon(Icons.check_circle_outline),
          ),
          SizedBox(
            height: 1.h,
          ),
        ],
      ),
    );
  }
}
