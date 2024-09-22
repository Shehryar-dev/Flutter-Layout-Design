import 'package:flutter/material.dart';

class RCLAYOUT extends StatelessWidget{
  const RCLAYOUT({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Row & Col Layout 1',style: TextStyle(color: Colors.white,fontFamily: 'radicalFont'),),
        centerTitle: true,
        backgroundColor:const Color(0xff1434A4),
        iconTheme:const IconThemeData(color: Colors.white),
      ),

      backgroundColor: Colors.blue.shade50,
      body: Center(
        child: SizedBox(
          width: 420,
          height: 628,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 200,
                    height: 400,
                    color: Colors.green,
                    child: Image.asset('assets/images/5.png'),
                  ),
                  SizedBox(
                    width: 200,
                    height: 400,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 200,
                          height: 110,
                          color: Colors.blue,
                          child: Image.asset('assets/images/4.png'),
                        ),
                        Container(
                          width: 200,
                          height: 280,
                          color: Colors.redAccent,
                          child: Image.asset('assets/images/4.png'),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 410,
                    height: 200,
                    color: Colors.deepPurple,
                    child: Image.asset('assets/images/9.png',scale: 5,),
                  )
                ],
              )

            ],
          ),
        ),
      ),

    );
  }
}