import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'view/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(title: 'Reminders'),
      );
    });
  }
}
/*
              Container(
                  alignment: Alignment.topRight,
                  margin: EdgeInsets.only(
                    top: 2.w,
                    right: 2.w,
                  ),
                  child: GestureDetector(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(
                      Icons.arrow_circle_left_outlined,
                      color: Colors.red,
                      size: 20.sp,
                    ),
                  )),
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
                      value: listApp[0],
                      hint: Text(
                        "N sei",
                      ),
                      iconEnabledColor: Colors.white,
                      style: TextStyle(color: Colors.white),
                      dropdownColor: Colors.black,
                      focusColor: Colors.red,
                      items: [
                        listApp[0],
                        listApp[1],
                        listApp[2],
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(fontSize: 7.sp),
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
                  print(title);
                  print(text);
                  print(app);
                },
                child: Text("Salvar"),
              ),
              SizedBox(
                height: 1.h,
              )*/
