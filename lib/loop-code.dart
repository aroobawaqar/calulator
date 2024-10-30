import 'package:class1/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoopCode extends StatefulWidget {
  const LoopCode({super.key});

  @override
  State<LoopCode> createState() => _LoopCodeState();
}

class _LoopCodeState extends State<LoopCode> {
  List<String> whatsappName = [
    'Waqar',
    'Arooba',
    'Atiqa',
    'Hareem',
    'Ali',
    'Baqir',
    'Farwa',
    'Gul',
    'Moom',
    'Baba',
    'Aqib',
  ];

  List<String> subTitle = [
    'last seen....',
    'last seen....',
    'last seen',
    'last seen',
    'last seen',
    'last seen',
    'last seen',
    'last seen',
    'last seen',
    'last seen',
    'last seen'
  ];

  List<String> image = [
    'lib/assets/Ba.jpg',
    'lib/assets/pic1.jpg',
    'lib/assets/pic1.jpg',
    'lib/assets/Ba.jpg',
    'lib/assets/pic1.jpg',
    'lib/assets/pic1.jpg',
    'lib/assets/pic1.jpg',
    'lib/assets/pic1.jpg',
    'lib/assets/pic1.jpg',
    'lib/assets/pic1.jpg',
    'lib/assets/pic1.jpg',
  ];
  List<String> trailing = [
    '12/3/2024',
    '12/3/2024',
    '12/3/2024',
    '12/3/2024',
    '12/3/2024',
    '12/3/2024',
    '12/3/2024',
    '12/3/2024',
    '12/3/2024',
    '12/3/2024',
    '12/3/2024',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            child: const Icon(Icons.add, color: Colors.white),
          ),
          const SizedBox(height: 10),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.green,
            child: const Icon(Icons.add, color: Colors.white),
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text('WhatsApp'),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(25),
            ),
            child: const Row(
              children: [
                Icon(Icons.search,color: Colors.grey),
                SizedBox(height: 10),
                Text('Search',style: TextStyle(color:Colors.grey),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: whatsappName.length,
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => ChatScreen(
                          title: whatsappName[index],
                          image: image[index],
                          subtitle: subTitle[index],
                          trailing: trailing[index],
                        ),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(image[index]),
                  ),
                  title: Text(whatsappName[index]),
                  subtitle: Text(subTitle[index]),
                  trailing: Text(trailing[index]),
                );
              },
            ),
          ),
        ],
      ),

    );
  }
}
