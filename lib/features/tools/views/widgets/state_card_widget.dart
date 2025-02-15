import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildStatCard(IconData icon, String label) {
  return Container(
    padding: const EdgeInsets.all(8),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(8),
      border: Border.all(color: Colors.grey, width: 1),
    ),
    child: Column(
      children: [
        Icon(icon, size: 32, color: Colors.grey),
        SizedBox(height: 8),
        Text('--',
            style: GoogleFonts.almarai(fontSize: 16, color: Colors.white)),
        Text(label,
            style: GoogleFonts.almarai(fontSize: 14, color: Colors.grey)),
      ],
    ),
  );
}
