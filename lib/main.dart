import 'package:class1/calculator.dart';

import 'package:class1/loop-code.dart';
import 'package:class1/pic_1.dart';
import 'package:class1/stack_class.dart';

//import 'package:class1/facebook.dart';

import 'package:flutter/material.dart';

import 'facebook.dart';
void main(){
  runApp(const MyApp());

}
class MyApp extends StatelessWidget{
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
   //   home: LoopCode(),
         home: Calculator(),
  //   home: FaceBook(),
    //  home:pic(),
   //   home: StackClass(),
        );
  }
}