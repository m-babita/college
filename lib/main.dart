import 'package:college/screens/bottom_nav.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        title: 'College App',
        theme: ThemeData(
          primarySwatch: Colors.lightBlue,
        ),
        home: const BottomNav(pageno:1),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
