import 'package:flutter/material.dart';
import 'package:flutter_cataloge/utilsss/routes.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState()=>_LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  String name ="  ";
  bool changebutton =false;

  final _formkey = GlobalKey<FormState>();

  moveToHome (BuildContext context) async{
   
   if(_formkey.currentState!.validate()){
    setState(() {
      changebutton=true;
    });

    await Future.delayed(Duration(seconds: 1));
    await Navigator.pushNamed(context, Myroutes.homeRoute);

    setState(() {
      changebutton=false;

    });
   }
  }

  @override
  Widget build (BuildContext context){

    return Material (

      color: Colors.white,
      child:  SingleChildScrollView(
        child:Form (
          key:_formkey,
          
          child:Column(
            
            children: [
             
             Image.asset("assetsss/imagesss/hey_image.png",
             fit: BoxFit.cover,),

             const SizedBox(height: 20,),

             Text(
              "Welcome $name",
              style: const TextStyle (
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
             ),

            const SizedBox(height: 20,),
          
           const Padding(padding:EdgeInsets.symmetric(
            vertical: 16, horizontal: 32.0)
             ),
             
            
              Column(

                children: [
                  TextFormField (
                    decoration:  const InputDecoration(
                      hintText: "Enter username",
                      labelText: "Username",

                    ),

                    validator: (value) {
                      if (value!.isEmpty){
                        return "Username cant be empty";
                      }
                      return null;
                    },


                    onChanged: (value) {
                      name:value;
                      setState(() {
                        
                      });
                    },
                  ),

                  TextFormField (
                     obscureText: true,
                    decoration: const  InputDecoration(
                      hintText: "Enter password",
                      labelText: "passworde",

                    ),

                    validator:(value) {
                      if (value!.isEmpty){
                        return "password cant be empty";}

                     else if (value.length < 6){
                        return "lenght should be at least 6";
                      
                      }
                      return null;
                    },
                  ),
                
                SizedBox(height: 20,),

                Material(

                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(changebutton ? 50 : 8),

                  child: InkWell (
                    onTap: () => moveToHome(context),

                    child: AnimatedContainer(duration: const Duration(seconds: 1),
                    width: changebutton ?50 :150,
                    height: 50,
                    alignment:Alignment.center,

                    child : changebutton ? const Icon
                        (Icons.done ,
                        color: Colors.white,
                        )
                        
                        :
                        const Text('Login',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18, ))

                    ),

                    
                  ),

                  


                )

                ],

              ),

             ]
           ),
        ),
        
        
       ),
      
    );
  }
}