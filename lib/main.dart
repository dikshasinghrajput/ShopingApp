import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shoppingapp/pages/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: FirebaseOptions(
      apiKey: 'AIzaSyBPD3xaleuO6OpwgnCQG8HQiaafJLXXuEw',
      appId: '1:865499570129:android:2ea73ca99dc265c533caf0',
      messagingSenderId: 'messagingSenderId',
      projectId: 'shopapp-84a94',
    ),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Login());
  }
}
