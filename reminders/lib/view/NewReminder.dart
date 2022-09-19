import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../core/colors.dart';

class NewReminder extends StatefulWidget {
  late List<String> listApp;

  NewReminder({listApp});

  @override
  State<NewReminder> createState() => _NewReminderState();
}

class _NewReminderState extends State<NewReminder> {
  String? title, text, app;
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          title: Text("Novo Reminder"),
        ),
        body: Container(
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(5.w),
              child: Column(children: [
                TextFormField(
                  key: formKey1,
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
                    title = value;
                    return "teste";
                  },
                ),
                SizedBox(
                  height: 1.h,
                ),
                TextFormField(
                  key: formKey2,
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
                    text = value;
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
                    value: widget.listApp[0],
                    hint: Text(
                      "N sei",
                    ),
                    iconEnabledColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    dropdownColor: Colors.black,
                    focusColor: Colors.red,
                    items: [
                      widget.listApp[0],
                      widget.listApp[1],
                      widget.listApp[2],
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ]),
            ),
            FloatingActionButton(
              mini: false,
              onPressed: () {
                final r = formKey1.currentState?.validate();
                print("RESULT: $r");
                formKey2.currentState?.validate();
                //Navigator.of(context).pop();
              },
              child: Text("Salvar"),
            ),
            SizedBox(
              height: 1.h,
            )
          ]),
        ));
  }
}
