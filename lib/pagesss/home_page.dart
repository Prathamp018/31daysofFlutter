import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_cataloge/models/catalog.dart';
import 'package:flutter_cataloge/widgets/drawer.dart';
import 'package:flutter_cataloge/widgets/item_widget.dart';

class Homepage extends StatefulWidget {
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final int days = 30;

  final String name = "Pratham";

  @override
  
void initState() {
    super.initState();
    loadData();
  }
  
  loadData() async{
    await Future.delayed(Duration(seconds: 2));
    final catalogJson = await rootBundle.loadString("assetsss/files/catalog.json");

    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];

    CatalogModel.items =List.from(productsData).map<Item>((item)=> Item.fromMap(item)).toList();
    setState(() {
    });
  }
  


  Widget build(BuildContext context) {
    //final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flopkart App"),
      ),
      body:  Padding(
        padding:  EdgeInsets.all(16.0),
      
      // Listview
      //
      //
      //
      //child: (CatalogModel.items!= null && CatalogModel.items.isNotEmpty)
      //    ? ListView.builder(

      //       itemCount: CatalogModel.items.length,

      //         itemBuilder: (context, index) => ItemWidget(
                    
      //         item:CatalogModel.items[index],
      //         ),
      //         )
      //     : const Center(
      //       child: CircularProgressIndicator(),
      //     ),

      // Gridview

      child: (CatalogModel.items!=null && CatalogModel.items.isNotEmpty)
       ? GridView.builder (gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
         mainAxisSpacing: 16,
         crossAxisSpacing: 16,),
         
         itemBuilder: (context,index){
          final item= CatalogModel.items[index];
          return Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),

          child: GridTile (
            header: Container(
              child:Center(
                child: Text(item.name,
                style: TextStyle (
                  color: Colors.white,
                ),
                
              ),
            ),
            color: Colors.deepPurple,
            ),

                child: Image.network(item.image,),

          
            
            footer: Container(
             
                child :Center (
                   child: Text(item.price.toString(),
                style: TextStyle (
                  color: Colors.white,),
              ),
                    
              ),
              color: Colors.deepPurple,
            ),
            
            ),
           );
          
         },
         itemCount: CatalogModel.items.length,
       
       )
       :const Center 
       (child: CircularProgressIndicator()
       ,),
       ),

      drawer: MyDrawer(),
    );
 
  }
}