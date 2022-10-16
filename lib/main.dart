// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mini_project_moviebooking/pages/splash_screen.dart';
import 'package:mini_project_moviebooking/utils/mytheme.dart';
void main(){
  runApp(MyApp());
}

   // ignore: use_key_in_widget_constructors
   class MyApp extends StatelessWidget{
  

  @override
  Widget build(BuildContext context){

    return MaterialApp(
      theme:MyTheme.myLightTheme,
    
      debugShowCheckedModeBanner: false,
        home: SplashScreen(),
    );
  }
  
   } 