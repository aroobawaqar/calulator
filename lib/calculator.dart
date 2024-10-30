import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  //Variables
  TextEditingController number1=TextEditingController();

  TextEditingController number2=TextEditingController();
  int result=0;
double result1=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enter the numbers'),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: Column(children: [
        Padding(
            padding:EdgeInsets.all(20),
        //padding
          child:Container(
            decoration: BoxDecoration(
              color: Colors.lime,
              borderRadius: BorderRadius.circular(10)
            ),
            child: TextFormField(
              controller: number1,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.numbers),
                hintText: '1st number'
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
           // border: Border.all(),
            color: Colors.lime,
            borderRadius: BorderRadius.circular(10)
          ),
          child: TextFormField(
            controller: number2,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter the 2nd number',
              prefixIcon:Icon(Icons.numbers),
              border: InputBorder.none
            ),
          ),
        )
    ,//SizedBox(height:20,),Text

    Text('Result=$result'),
        Text('Result1=$result1'),
        Row(children: [
      FloatingActionButton(
    backgroundColor: Colors.yellow,
    onPressed: (){
      int n1= 6;
      int n2= 9;
      int add=n1+n2;
      result=add;
      setState(() {
      });
      print('Result=$result');
      print('Add=$add');

    },
    child: Icon(Icons.add,color: Colors.white,),
    ),
      TextButton (onPressed: (){
        int a=int.parse(number1.text);
        int b=int.parse(number2.text);
        int sub=a-b;
        result=sub;
        setState(() {
        });
        print('Substraction=$sub');
      },child: Text('substraction')),
      IconButton(onPressed:(){
        int x=int.parse(number1.text);
        int y= int.parse(number2.text);
        int z=x*y;
        result=z;
        setState(() {

        });
        print('Multiplication=$z');
    },icon: Icon(Icons.cancel_outlined),
      )],)
    ],),
    );
    }
 }
