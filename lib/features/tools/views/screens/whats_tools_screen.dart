import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lucide_icons/lucide_icons.dart';
import 'package:nti_flutter/features/tools/views/widgets/section_title_widget.dart';

import '../widgets/list_tile_widget.dart';
import '../widgets/state_section_widget.dart';


class WhatsAppToolsScreen extends StatelessWidget {
  const WhatsAppToolsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('الأدوات', style: GoogleFonts.almarai(fontSize: 20)),
      //   actions: [
      //     IconButton(icon: const Icon(Icons.camera_alt), onPressed: () {}),
      //     IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
      //   ],
      // ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildStatsSection(),
                const SizedBox(height: 16),
                buildSectionTitle('تعزيز نمو نشاطك التجاري'),
                buildListTile(
                    LucideIcons.layoutGrid, 'الكتالوج', 'عرض المنتجات والخدمات'),
                buildListTile(LucideIcons.megaphone, 'الإعلان',
                    'أنشئ إعلانات تتنقل بالعملاء إلى واتساب'),
                const SizedBox(height: 16),
                buildSectionTitle('تنظيم دردشاتك'),
                buildListTile(
                    LucideIcons.folder, 'التصنيفات', 'تنظيم الدردشات والزبانئ'),
                buildListTile(LucideIcons.smile, 'رسالة الترحيب',
                    'الترحيب بالزبائن الجدد بصورة آلية'),
                buildListTile(LucideIcons.clock, 'رسالة "خارج أوقات العمل"',
                    'الرمز السريعه'),
                buildListTile(LucideIcons.clock, 'رسالة "خارج أوقات العمل"',
                    'رد آلي عندما تكون غير متاح'),
                buildListTile(LucideIcons.clock, 'رسالة "خارج أوقات العمل"',
                    'رد آلي عندما تكون غير متاح'),
                buildListTile(LucideIcons.clock, 'رسالة "خارج أوقات العمل"',
                    'رد آلي عندما تكون غير متاح'),
                buildListTile(LucideIcons.clock, 'رسالة "خارج أوقات العمل"',
                    'رد آلي عندما تكون غير متاح'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
