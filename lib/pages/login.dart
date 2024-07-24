import 'package:flutter/material.dart';
import 'package:shoppingapp/widget/support_widget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 40.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/login.png"),
            Center(
              child: Text(
                "Sign In",
                style: AppWidget.semiboldTextFieldStyle(),
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              "Please enter the details below to\n                     continue.",
              style: AppWidget.lightTextFieldStyle(),
            ),
            SizedBox(height: 20.0),
            Text(
              "Email",
              style: AppWidget.semiboldTextFieldStyle(),
            ),
            Container(
              decoration: BoxDecoration(color: Color(0xFFF4F5F9),borderRadius: BorderRadius.circular(20)),
              child: TextField(decoration: InputDecoration(border: InputBorder.none),),
            ),
          ],
        ),
      ),
    );
  }
}
