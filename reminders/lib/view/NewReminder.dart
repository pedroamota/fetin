import 'package:flutter/material.dart';
import 'package:reminders/core/colors.dart';
import 'package:sizer/sizer.dart';

class NewReminder extends StatefulWidget {
  const NewReminder({Key? key}) : super(key: key);

  @override
  State<NewReminder> createState() => _NewReminderState();
}

class _NewReminderState extends State<NewReminder> {
  String? title, text, app;
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();

  List<String> listApp = ['instagram', 'banco', 'whatsapp'];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      
      child:     Container(
        padding: EdgeInsets.all(10.sp),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                key: formKey1,
                decoration: InputDecoration(labelText: "title"),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    print("null text");
                    return "Preencha o campo";
                  }
                  print("not null");
                  return null;
                },
              ),
              SizedBox(height: 1.h,),
              ElevatedButton(onPressed: (){
                setState(() {
                  formKey1.currentState?.validate();
                  
                });

              }, child: Text("Login"))


            ],
          ),
        ),
      )
    );
    
    

  }
}
