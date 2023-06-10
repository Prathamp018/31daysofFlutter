import 'package:flutter/material.dart';

import 'package:flutter_cataloge/utilsss/routes.dart';

class LoginPage extends StatefulWidget {
  @override

  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<LoginPage> {
  String name =" ";
  bool changeButton=false;

  @override
  Widget build(BuildContext context){
    return Material(
    
    color: Colors.white,
    child: SingleChildScrollView(
      child:
       Column(
        children: [
        
        Image.asset('assetsss/imagesss/loginn_image.jpg',fit: BoxFit.cover,),

        SizedBox(
          height: 20,
        ),

          Text("Welcome Boi",
         style: TextStyle(
          fontSize: 30,
          color: Colors.blue,
          fontWeight: FontWeight.bold,
         ),
         ),

          SizedBox(
          height: 20,
        ),
         
         Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 30.0)),

    
           Column(
            children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Username"
              ),
            ),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter password",
                labelText: "Password"
              ),
            ),

           SizedBox(
          height: 20,
            ),
          
          InkWell(
            onTap: () async {
              setState(() {
                changeButton=true;
              });

              await Future.delayed(Duration (seconds: 1));
              Navigator.pushNamed(context, Myroutes.homeRoute);
            },

            child: AnimatedContainer(
              duration: Duration(seconds: 1),
              width : changeButton ? 50:150,
              height: 50,
              alignment :Alignment.center,
              
              child: changeButton
              ?Icon(Icons.done,
              color: Colors.white,
              )
              
              :Text("Login", style: TextStyle( color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18
              ),),
            
            decoration: BoxDecoration(
              color: Colors.purple,
              borderRadius: BorderRadius.circular(changeButton ? 50 : 8)
             ),
              ),
          )







          // ElevatedButton(onPressed:() {
          //   print("hi pratham");
          //  }, 
          //  child: Text ("login"),
          //    style: TextButton.styleFrom(),)
              ],
            )

         ],
         )
         )
      );
  }
}

