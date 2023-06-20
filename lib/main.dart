// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_cataloge/Widgets/themes.dart';
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
       theme: MyTheme.lightTheme(context),
       darkTheme: MyTheme.darkTheme(context),
       

      debugShowCheckedModeBanner: false,
        initialRoute:"/home",

       routes:{

        "/":(context)=>LoginPage(),
        Myroutes.homeRoute:(context)=>Homepage(),
        Myroutes.loginRoute:(context)=>LoginPage(),
       }
    );
  

  }  
}
