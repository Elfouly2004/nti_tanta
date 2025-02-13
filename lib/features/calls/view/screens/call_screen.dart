import 'package:flutter/material.dart';

import '../../data/model/call model.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: ListView.builder(
        itemCount: calls.length,
        itemBuilder: (context, index) {
          final call = calls[index];
          return Padding(
            padding: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(call.imageUrl),
              ),
              title: Text(
                call.name,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                textAlign: TextAlign.right, // محاذاة النص لليمين
              ),
              subtitle: Text(
                "${call.date}, ${call.time}",
                style: const TextStyle(color: Colors.grey),
                textAlign: TextAlign.right, // محاذاة النص لليمين
              ),
              trailing: Icon(
                call.isIncoming ? Icons.arrow_upward : Icons.arrow_downward,
                color: call.isIncoming ? Colors.green : Colors.red,
              ),
            ),
          );
        },
      ),
    );
  }
}
