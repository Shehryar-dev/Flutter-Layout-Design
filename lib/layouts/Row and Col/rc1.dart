import 'package:flutter/material.dart';

class RCLAYOUT1 extends StatelessWidget {
  const RCLAYOUT1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'Row & Col Layout 2',
          style: TextStyle(color: Colors.white, fontFamily: 'radicalFont'),
        ),
        iconTheme:const IconThemeData(color: Colors.white),
        centerTitle: true,
        backgroundColor:const Color(0xff1434A4),
      ),
      backgroundColor: Colors.blue.shade50,
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 400,
            height: 750,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 400,
                  height: 145,
                  color: Colors.teal,
                  child: Image.asset('assets/images/12.png'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 95,
                      height: 145,
                      color: Colors.blue,
                      child: Image.asset('assets/images/11.png'),
                    ),
                    Container(
                      width: 295,
                      height: 145,
                      color: Colors.redAccent,
                      child: Image.asset('assets/images/10.png'),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 400,
                      height: 290,
                      color: Colors.deepPurple,
                      child: Image.asset('assets/images/9.png'),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: 400,
                      height: 145,
                      color: Colors.blueAccent,
                      child: Image.asset('assets/images/6.png'),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
