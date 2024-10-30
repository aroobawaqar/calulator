import 'package:flutter/material.dart';
class ChatScreen  extends StatefulWidget {
  String title;
  String image;
  String subtitle;
  String trailing;
   ChatScreen ({super.key,
   required this.title,
     required this.image,
     required this.subtitle,
     required this.trailing,
   });

  @override
  State<ChatScreen> createState() => _State();
}

class _State extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Row(mainAxisAlignment: MainAxisAlignment.start,
      children: [
        CircleAvatar(backgroundImage: AssetImage(widget.image),),
       Text(widget.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),) ,
        Text(widget.trailing)
      ],  
       
        
      ),
    );
  }
}
