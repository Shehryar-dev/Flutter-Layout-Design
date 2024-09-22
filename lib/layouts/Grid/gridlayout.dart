import 'package:flutter/material.dart';


class GRID extends StatefulWidget{
  const GRID({super.key});

  @override
  State<GRID> createState() => _GRIDState();
}

class _GRIDState extends State<GRID> {
  var arrColor = [
    Colors.blue,
    Colors.orange,
    Colors.purple,
    Colors.red,
    Colors.brown,
    Colors.green,
    Colors.blueAccent,
    Colors.teal,
    Colors.black45,
    Colors.deepPurpleAccent,
    Colors.grey,
    Colors.greenAccent,
    Colors.brown,
    Colors.redAccent,
    Colors.indigo,
    Colors.deepOrange,
    Colors.deepPurpleAccent,
    Colors.indigoAccent,
    Colors.blueGrey,
    Colors.pinkAccent,
    // Colors.blue
  ];

  var imgdata = ["p1.jpg","19.png","p3.jpg","p4.jpg","p5.jpg","p6.jpg","p7.jpg","p8.jpg","p9.jpg","p10.jpg",
    "p1.jpg","p2.jpg","p3.jpg","p4.jpg","p5.jpg","p6.jpg","p7.jpg","p8.jpg","p9.jpg","p10.jpg",];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Grid Layout",style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontFamily: "radicalFont",
            fontWeight: FontWeight.bold,
        ),),
        centerTitle: true,
        iconTheme:const IconThemeData(color: Colors.white),
        backgroundColor:const Color(0xff1434A4),

      ),

      backgroundColor: Colors.blue.shade50,
      body: SafeArea(
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 150),
          itemBuilder: (context, ind){
            return Card(
              color: arrColor[ind],
              child: Center(
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/${imgdata[ind]}"),
                    radius: 35,
                  )),
            );
          },
          itemCount: arrColor.length,
        ),
      ),

    );
  }
}