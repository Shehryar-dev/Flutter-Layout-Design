import 'package:flutter/material.dart';

class CHATS extends StatefulWidget {

  const CHATS({super.key});

  @override
  State<CHATS> createState() => _CHATSState();
}

class _CHATSState extends State<CHATS> {
  var data = [
    "Shehriyar",
    "Asad",
    "Ali",
    "Wasil",
    "Zaid",
    "Zain",
    "Okasha",
    "Aleem",
    "Wasay",
    "Hussain",
    "Modi",
    "Rafia",
    "Surema",
    "Ghousiya",
    "Iqra",
    "Sabira",
    "Hammad",
    "Momin",
    "Ubad",
    "Shahzaib",
    "Usama"
  ];

  var imagesdata = [
    "p1.jpg",
    "19.png",
    "p3.jpg",
    "p4.jpg",
    "p5.jpg",
    "p6.jpg",
    "p7.jpg",
    "p8.jpg",
    "p9.jpg",
    "p10.jpg",
    "p1.jpg",
    "p2.jpg",
    "p3.jpg",
    "p4.jpg",
    "p5.jpg",
    "p6.jpg",
    "p7.jpg",
    "p8.jpg",
    "p9.jpg",
    "p10.jpg",
    "p2.jpg",
    "p5.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Chat List Layout",
          style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: "radicalFont",
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        iconTheme:const IconThemeData(color: Colors.white),
        backgroundColor:const Color(0xff1434A4),
      ),

      backgroundColor: Colors.blue.shade50,

      body: SafeArea(
        child: ListView.separated(
            itemBuilder: (context, ind) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.teal,
                  backgroundImage: AssetImage("assets/images/${imagesdata[ind]}"),
                  radius: 30,
                ),
                title:Text(
                  data[ind],
                  style:const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 18,
                      fontFamily: "Branch",
                      fontWeight: FontWeight.w700),
                ),
                subtitle: const Text(
                  "Lorem Ipsum Dolor Sit Amit.....",
                  style: TextStyle(fontFamily: "radicalFont"),
                ),
                trailing:const Icon(Icons.notification_add),
              );
            },
            separatorBuilder: (context, ind) {
              return const Divider(
                height: 1,
                thickness: 1,
                color: Colors.black,
              );
            },
            itemCount: data.length),
      ),
    );
  }
}
