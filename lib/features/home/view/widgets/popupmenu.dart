
import 'package:flutter/material.dart';

PopupMenuItem popupMenu({
  required String text,
}) {
  return PopupMenuItem(
      child: Text(text,
        style: TextStyle(
          fontSize: 24,
        ),
      ));
}