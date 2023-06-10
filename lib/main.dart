import 'package:flutter/material.dart';
import 'package:flutter_cataloge/utilsss/routes.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Pagesss/home_page.dart';

import 'Pagesss/login_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

       themeMode: ThemeMode.light,
       theme: ThemeData(primarySwatch: Colors.deepPurple,
       fontFamily:GoogleFonts.lato().fontFamily),
       darkTheme: ThemeData(
        brightness: Brightness.dark
       ),


      //  initialRoute:"/home",

       routes:{

        "/":(context)=>LoginPage(),
        Myroutes.homeRoute:(context)=>Homepage(),
        Myroutes.loginRoute:(context)=>LoginPage(),
       }

       );


  }  
}
