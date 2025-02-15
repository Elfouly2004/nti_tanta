import 'package:flutter/material.dart';

import '../../data/model/data model.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: ListView.builder(
              itemCount: chatData.length,
              itemBuilder: (context, index) {
                final chat = chatData[index];
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: ListTile(
                    leading: CircleAvatar(
                        backgroundImage:AssetImage(chat.image,)
                    ),
                    title: Text(
                      chat.name,
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text(chat.message),
                    trailing: Text(chat.time),
                  ),
                );
              },
            ),
          ),
        )

      ],
    );
  }
}
