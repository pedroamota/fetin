import 'package:flutter/material.dart';
import 'package:reminders/NewReminder.dart';
import 'package:reminders/core/colors.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 41, 41),
      appBar: AppBar(
        title: Text("Reminders"), //Image(image: AssetImage("assets/logo.png")),
      ),
      body: Stack(
        children: [
          GestureDetector(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => NewReminder()),
            ),
            child: Container(
              margin: EdgeInsets.only(
                  top: size.width * 0.02,
                  left: size.width * .04,
                  right: size.width * .04),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 151, 151, 151),
                backgroundBlendMode: BlendMode.difference,
                borderRadius: BorderRadius.circular(10),
              ),
              //width: size.width,
              height: size.height * .05,
              child: Row(
                children: [
                  SizedBox(
                    width: size.width * .01,
                  ),
                  Text(
                    "Criar um reminder...",
                    style: TextStyle(
                        color: AppColors.text, fontSize: size.width * .04),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  Icons.tips_and_updates_outlined,
                  color: Colors.white,
                  size: size.width * .09,
                ),
                Text(
                  'Crie o seu primeiro Reminder',
                  style: TextStyle(
                      color: Colors.white, fontSize: size.width * .05),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
