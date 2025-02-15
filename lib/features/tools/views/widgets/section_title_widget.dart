import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildSectionTitle(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 8.0),
    child: Text(title,
        style: GoogleFonts.almarai(fontSize: 18, fontWeight: FontWeight.bold)),
  );
}
