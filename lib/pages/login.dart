import 'package:flutter/material.dart';
import 'package:shoppingapp/pages/signup.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(
                top: 40.0, left: 20.0, right: 20.0, bottom: 40.0),
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
                SizedBox(height: 15.0),
                Text(
                  "Please enter the details below to\n                     continue.",
                  style: AppWidget.lightTextFieldStyle(),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Email",
                  style: AppWidget.semiboldTextFieldStyle(),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "rajput@gmail.com"),
                  ),
                ),
                SizedBox(height: 15.0),
                Text(
                  "Password",
                  style: AppWidget.semiboldTextFieldStyle(),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20.0),
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F5F9),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none, hintText: "12345678"),
                  ),
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget Password?",
                      style: TextStyle(
                          color: Colors.green,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SizedBox(height: 20.0),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 2,
                    padding: EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don,t have an account? ",
                        style: AppWidget.lightTextFieldStyle()),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()),);
                      },
                      child: Text(
                        "SignUp",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
