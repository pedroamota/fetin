import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Dados extends StatelessWidget {
  TextEditingController _title = TextEditingController();
  TextEditingController _content = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      margin: EdgeInsets.all(size.width * .05),
      child: Column(children: [
        TextFormField(
          controller: _title,
          textInputAction: TextInputAction.next,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            enabled: true,
            contentPadding: EdgeInsets.only(left: 15, right: 15),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
            labelText: "Titulo",
            labelStyle: TextStyle(color: Colors.white),
          ),
        ),
        SizedBox(
          height: 5.h,
        ),
        TextFormField(
          textInputAction: TextInputAction.next,
          controller: _content,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            enabled: true,
            contentPadding: EdgeInsets.only(left: 15, right: 15),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
            labelText: "Descrição",
            labelStyle: TextStyle(color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
