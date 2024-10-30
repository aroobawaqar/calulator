import 'package:flutter/material.dart';
class StackClass extends StatefulWidget {
  const StackClass({super.key});

  @override
  State<StackClass> createState() => _StackClassState();
}

class _StackClassState extends State<StackClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack Class'),

      ),
      body: Stack(
        children: [
          Image(image: AssetImage('lib/assets/Ba.jpg'))
        ],
      ),
    );
  }
}
