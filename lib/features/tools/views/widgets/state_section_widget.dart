import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nti_flutter/features/tools/views/widgets/state_card_widget.dart';

Widget buildStatsSection() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildStatCard(LucideIcons.eye, 'مشاهدات الحالة'),
      buildStatCard(LucideIcons.grid, 'مشاهدات الكتالوج'),
      buildStatCard(LucideIcons.messageCircle, 'محادثات تم بدؤها'),
    ],
  );
}
