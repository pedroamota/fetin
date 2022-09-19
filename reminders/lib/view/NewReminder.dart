import 'package:flutter/material.dart';
import 'package:reminders/core/colors.dart';
import 'package:reminders/view/Dados.dart';

class NewReminder extends StatelessWidget {
  const NewReminder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.zero,
      scrollable: true,
      title: Text("Novo Reminder"),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      content: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.background,
        ),
        width: 93.0,
        child: Column(
          children: [
            Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(
                  top: size.width * 0.02,
                  right: size.width * 0.02,
                ),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Colors.red,
                    size: size.width * .1,
                  ),
                )),
            Dados(),
            FloatingActionButton(
              mini: true,
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Salvar"),
            )
          ],
        ),
      ),
    );
  }
}
