import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  List<String> itemname=[
    "1 - Alfajr prayer",
    "2 - the breakfast",
    "3 - lecture",
    "4 - section",
    "5 - english course",
    "6 - Task Delivery",
    "7 - the lunch",
    "8 - gym",
    "9 - film",
    "10 - reading"
  ];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   // throw UnimplementedError();

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.work),
          title: Text("My Tasks" ,style:TextStyle(fontWeight:FontWeight.bold) ),
          backgroundColor: Colors.amber,
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text("My Name:......",
                style: TextStyle(fontSize: 20,fontWeight:FontWeight.bold),

            ),
            SizedBox(
              //Use of SizedBox
              height: 15,),
            Expanded(
              child: ListView.separated(itemBuilder: (context ,index)=>buildtiem(itemname[index]), separatorBuilder: (context ,index)=>SizedBox(
                //Use of SizedBox
                height: 10,), itemCount: itemname.length),
            )


          ],

            )


        ),
      );

  }
Widget buildtiem(String name)=>Container(
    width: double.infinity,
    height: 40,
    margin: const EdgeInsets.all(7),
    decoration: BoxDecoration(
      color: Colors.grey[350],
      borderRadius: BorderRadius.circular(10),
    ),

    child: Stack(
      children: [

        Text(name,style: TextStyle(fontSize: 22),textAlign: TextAlign.center),
        Container(
            width: double.infinity,
            height: 30,

            child:
            const Align(
                alignment: Alignment.centerRight,
                child:
                Icon(Icons.delete,color: Colors.red,)

            )
        )
      ],

    )
);


}