import 'package:flutter/material.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "First App",
      //theme: ThemeData(primarySwatch: Colors.green),
      // theme: ThemeData(
      //     textButtonTheme: TextButtonThemeData(style: TextButton.styleFrom(
      //       primary: Colors.red
      //     ))
      // ),
      home: Scaffold(  

    appBar: AppBar(title: Text("My App"),
    ),

 //Button   
    body: SingleChildScrollView(  

        child: Column(children: [

//11 TextButton
          TextButton(
            style: TextButton.styleFrom(
              //primary: Colors.blue,
              shape: BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5))),

              // side: BorderSide(
              //   color: Colors.black, width: 5
              // ),
             
              backgroundColor: Colors.red,
              textStyle: TextStyle(
                fontSize: 18,
              fontStyle: FontStyle.italic ,
              //color: Colors.blue,  //primary or color //no effect with color in textStyle
              ),
              ),
              
            child: Text("Text Button"),
            onPressed: (){
              print("Hello");
            },
          ),

//12 Outlined Button
          OutlinedButton(
          style: OutlinedButton.styleFrom(
            primary: Colors.black,
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
            textStyle: TextStyle(
              // color: Colors.black,//no effect with color
              fontSize: 18, fontStyle: FontStyle.italic
              ), 
            ),
            
          child: Text("Outlined Button"),
          onPressed: (){

          },
          ),

//13 Elevated Button
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
              onPrimary: Colors.red,
              textStyle: TextStyle(fontSize: 18, fontStyle: FontStyle.italic )

            ),
            child: Text("Elevated Button"),
            onPressed: (){

            },
           ),


//14 FloatingAction Button
           FloatingActionButton(
             backgroundColor: Colors.red,
             foregroundColor: Colors.black,
             child: Text("Cick"),
             onPressed: (){

             },
           ),

           FloatingActionButton.extended(
             icon: Icon(Icons.add),  //phone
             label: Text("Click"),
             onPressed: (){

             }

           ),

//15 Icon Button
           IconButton(
             tooltip: "Volume UP",
             iconSize: 40,
             color: Colors.green,
             icon: Icon(Icons.volume_down),
             onPressed: (){
               
             }
             
             ),

//16 PopupMenu Button
             PopupMenuButton(
               onSelected: (val){
                 print(val);
               },
               itemBuilder: (context){
                 return[
                   PopupMenuItem(
                     value: 1,
                     child: Text("Lenovo"),),
                   PopupMenuItem(
                     value: 2,
                     child: Text("Dell"),),
                   PopupMenuItem(
                     value: 3,
                     child: Text("ASUS"))

                 ];

               },
             ),

//17 Dropdown Button
             DropdownButton(  
               onChanged: (val){
                 print(val);
               },
               hint: Text("Select Laptop"),
              //  items: [
              //    DropdownMenuItem(
              //      value: 1,
              //      child: Text("Lenovo")),
              //    DropdownMenuItem(
              //      value: 2,
              //      child: Text("Dell")),
              //    DropdownMenuItem(
              //      value: 3,
              //      child: Text("ASUS"))
              //  ],

              items: ["Lenovo", "Dell", "Asus"].map((lap){
                return DropdownMenuItem(child: Text(lap), value: lap );
              }).toList(),

             )




        ],),

    )





      ),
      
      
    );
  }

}

