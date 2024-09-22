import 'package:flutter/material.dart';
import 'Grid/gridlayout.dart';
import 'List/chat_list.dart';
import 'Row and Col/rc2.dart';
import 'Row and Col/rc1.dart';


class LAYOUTS extends StatelessWidget{
  const LAYOUTS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Layouts',
          style: TextStyle(
              fontFamily: "radicalFont", color: Colors.white, fontSize: 34),
        ),
        centerTitle: true,
        backgroundColor:const Color(0xff1434A4),
      ),
      backgroundColor: Colors.blue.shade50,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              const Text(
                "Row & Col Layout 1 ↓",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Branch',
                    color: Color(0xff000080)),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>const RCLAYOUT()));
                  },
                  child: const Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 26.0, vertical: 8.0),
                    child: Text(
                      "View Layout",
                      style: TextStyle(fontSize: 18, color: Color(0xff000080)),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Row & Col Layout 2 ↓",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Branch',
                    color: Color(0xff000080)),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const RCLAYOUT1()));
                  },
                  child: const Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 26.0, vertical: 8.0),
                    child: Text(
                      "View Layout",
                      style: TextStyle(fontSize: 18, color: Color(0xff000080)),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Chat List Layout ↓",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Branch',
                    color: Color(0xff000080)),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>const CHATS()));
                  },
                  child: const Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 26.0, vertical: 8.0),
                    child: Text(
                      "View Layout",
                      style: TextStyle(fontSize: 18, color: Color(0xff000080)),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Grid Layout ↓",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Branch',
                    color: Color(0xff000080)),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const GRID()));
                  },
                  child: const Padding(
                    padding:
                    EdgeInsets.symmetric(horizontal: 26.0, vertical: 8.0),
                    child: Text(
                      "View Layout",
                      style: TextStyle(fontSize: 18, color: Color(0xff000080)),
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}


