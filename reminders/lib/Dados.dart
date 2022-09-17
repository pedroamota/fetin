import 'package:flutter/material.dart';

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
          textInputAction: TextInputAction.next,
          controller: _title,
          decoration: InputDecoration(
            enabled: true,
            contentPadding: EdgeInsets.only(left: 15, right: 15),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.all(Radius.circular(25.0)),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(25.0),
              ),
            ),
            labelText: "Titulo",
            labelStyle: TextStyle(color: Colors.grey),
          ),
        ),
        SizedBox(
          height: size.height * .01,
        ),
        TextFormField(
          textInputAction: TextInputAction.next,
          controller: _content,
          decoration: InputDecoration(
            enabled: true,
            contentPadding: EdgeInsets.only(left: 15, right: 15),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
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
            labelStyle: TextStyle(color: Colors.grey),
          ),
        ),
      ]),
    );
  }
}
