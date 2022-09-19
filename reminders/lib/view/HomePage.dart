import 'package:flutter/material.dart';
import 'package:reminders/view/NewReminder.dart';
import 'package:reminders/core/colors.dart';
import 'package:sizer/sizer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 41, 41, 41),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Container(
          padding: EdgeInsets.only(top: 5.sp),
            height: 14.h,
            child: Image(image: AssetImage("assets/reminders.png"))),
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
                top: 2.h,
                left: 4.w,
                right: 4.w,
              ),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 151, 151, 151),
                backgroundBlendMode: BlendMode.difference,
                borderRadius: BorderRadius.circular(10),
              ),
              //width: size.width,
              height: 5.h,
              child: Row(
                children: [
                  SizedBox(
                    width: 1.h,
                  ),
                  Text(
                    "Criar um reminder...",
                    style: TextStyle(color: AppColors.text, fontSize: 4.w),
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
                  size: 9.w,
                ),
                Text(
                  'Crie o seu primeiro Reminder',
                  style: TextStyle(color: Colors.white, fontSize: 5.w),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
