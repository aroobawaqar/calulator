import 'package:flutter/material.dart';
class pic extends StatelessWidget {
  const pic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Show Image',style: TextStyle(color: Colors.lime,fontWeight: FontWeight.bold),),
      ),
      body: const Column(children: [
        CircleAvatar(
          backgroundImage: AssetImage('lib/assets/pic.jpeg'),
          
        )
      ],
        
      ),
    );
  }
}
