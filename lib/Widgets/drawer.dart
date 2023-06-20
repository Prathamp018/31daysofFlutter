import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class MyDrawer extends StatelessWidget {

  @override
  Widget build (BuildContext context){
       final imageUrl ="https://media.licdn.com/dms/image/C4D03AQGYD_1QNrax5A/profile-displayphoto-shrink_800_800/0/1656241320942?e=2147483647&v=beta&t=-j6HNW1qtxt4-8wofzpCPu5O3FXfas6Mztij-TcUPSk";
        return Drawer(

          child: Container (
            color: Colors.deepPurple,

            child: ListView (

              padding: EdgeInsets.zero,

              children: [

                DrawerHeader(

                  padding:EdgeInsets.zero ,
                  
                  child :UserAccountsDrawerHeader(
                   margin: EdgeInsets.zero,
                  accountName: Text ("Pratham Patil"),
                  accountEmail:Text ("prathampatil3011@gmail.com" ),

                  currentAccountPicture: CircleAvatar (backgroundImage: NetworkImage(imageUrl),
                  ),
                ),
                ),
                const SizedBox(height: 20,
                 ),

                 const ListTile(

                  leading: Icon(
                    CupertinoIcons.home,
                    color: Colors.white,
                  ),

                  title: Text( "Home",
                  
                  textScaleFactor: 1.5,
                  style: TextStyle (
                    color: Colors.white,
                  ),
                  ),
                 ),
              

               const ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),

                title: Text("Profile",
               textScaleFactor: 1.5,
               style: TextStyle(
                color: Colors.white,
               ),
               ),
               ),

               const ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),

                title:  Text("Email",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
               ),
              
             
              ],
            ),
          ),
        );
  }
}