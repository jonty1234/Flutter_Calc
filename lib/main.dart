import 'package:flutter/material.dart';
import './CalculatorApp/home_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context) {
        return MaterialApp(
            theme: new ThemeData(primarySwatch: Colors.red, brightness: Brightness.dark ),
            home: new HomePage(),
        );
    }
}