import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nti_flutter/features/updates/views/widgets/status_tile_widget.dart';

Widget buildStatusSection() {
  return Row(
    children: [
      buildStatusTile(Icons.add, 'إضافة حالة', Colors.green),
      SizedBox(width: 12),
      buildStatusTile(Icons.person, 'mohamed', Colors.green),
    ],
  );
}
