import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buildListTile(IconData icon, String title, String subtitle) {
  return ListTile(
    leading: Icon(icon, size: 28, color: Colors.white),
    title: Text(title, style: GoogleFonts.almarai(fontSize: 16)),
    subtitle: Text(subtitle,
        style: GoogleFonts.almarai(fontSize: 14, color: Colors.grey)),
    onTap: () {},
  );
}
