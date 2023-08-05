import 'package:flutter/material.dart';
import 'input.dart';
void main() {
  runApp(BMIcalculator());
}
class BMIcalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.red,
        ),
        scaffoldBackgroundColor: Colors.black,
        // primarySwatch: Color(0xFF1D1E33),
        // brightness: Brightness.dark,
        // primarySwatch: Colors.red,
        // floatingActionButtonTheme: FloatingActionButtonThemeData(
        //   backgroundColor: Colors.red,
        // )
      ),
      home: Input(),
      debugShowCheckedModeBanner: false,
    );
  }
}









