import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildStatusTile(IconData icon, String label, Color borderColor) {
  return Column(
    children: [
      Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: borderColor, width: 2),
        ),
        child: Icon(icon, size: 30, color: Colors.black),
      ),
      const SizedBox(height: 6),
      Text(label,
          style: GoogleFonts.almarai(fontSize: 14, color: Colors.black)),
    ],
  );
}
