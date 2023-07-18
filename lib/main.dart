import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:notificrossian/views/users/auth/register_screen.dart';
// import 'package:notificrossian/views/users/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          fontFamily: 'Bold'),
      home: RegisterScreen(),
    );
  }
}
