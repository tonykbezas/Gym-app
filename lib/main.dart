import 'package:flutter/material.dart';
import 'package:gym_app/pages/home_page.dart';
import 'package:gym_app/pages/rutines_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym App',
      initialRoute: 'home',
      routes: {
        'home': ( _ ) => HomePage(),
        'rutine': ( _ ) => RutinePage(),
      },
    );
  }
}