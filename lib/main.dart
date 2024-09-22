import 'dart:async';
import 'package:flutter/material.dart';
import 'layouts/layout_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue.shade900),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home:const LOADING(),


    );
  }
}


class LOADING extends StatefulWidget {
  const LOADING({super.key});

  @override
  State<LOADING> createState() => _LOADINGState();
}

class _LOADINGState extends State<LOADING> {
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 5), (){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const LAYOUTS()));
    });

}

  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      backgroundColor: Colors.white,
      body: Center(
        child:Image(image: AssetImage('assets/images/layout.gif'), width: 150,height: 150,colorBlendMode: BlendMode.colorBurn,),
      ),
    );
  }
}
