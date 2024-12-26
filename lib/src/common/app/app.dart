import 'package:flutter/material.dart';
import '../../feature/home_page/home_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "poppins_medium"),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
