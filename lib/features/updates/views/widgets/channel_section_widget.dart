import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';

Widget buildChannelTile(
    String title, String subtitle, String date, String views) {
  return ListTile(
    leading: CircleAvatar(
      radius: 25,
      backgroundColor: Colors.grey[800],
      backgroundImage: AssetImage('assets/images/artist.png'),
    ),
    title: Text(title, style: GoogleFonts.almarai(fontSize: 16)),
    subtitle: Text(subtitle,
        style: GoogleFonts.almarai(fontSize: 14, color: Colors.grey)),
    trailing: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(date,
            style: GoogleFonts.almarai(fontSize: 12, color: Colors.green)),
        SizedBox(height: 4),
        Text(views,
            style: GoogleFonts.almarai(fontSize: 14, color: Colors.white)),
      ],
    ),
    onTap: () {},
  );
}
