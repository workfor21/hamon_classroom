import 'package:flutter/material.dart';
import 'package:hamon_classroom/presentation/!components/custom_btn_widget.dart';
import 'package:hamon_classroom/presentation/!components/header_widget.dart';
import 'package:hamon_classroom/presentation/registration/controller/registration_provider.dart';
import 'package:provider/provider.dart';

class RegistrationScreen extends StatelessWidget {
  static const String routeName = "RegistrationScreen";

  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ChangeNotifierProvider(
        create: (context) => RegistrationProvider(),
        child: Consumer<RegistrationProvider>(
          builder: (context, value,widget) {
            return Column(
              children: [
                headerWidget("New Registration"),
                SizedBox(height: 15),
                selectionCard("Select a Student",() {}),
                selectionCard("Select a Subject",() {}),
               SizedBox(height: 50),
                customButtonWidget(title: "Register",function: () {
                  print('sdkjfskjdf');
                }),
              ],
            );
          },
        ),
      ),
    );
  }
}

selectionCard(String text,Function function) {
  return InkWell(
    onTap: () => function(),
    child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(.3),
            borderRadius: BorderRadius.circular(10)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text),
            Icon(Icons.keyboard_arrow_right)
          ],
        )
    ),
  );
}