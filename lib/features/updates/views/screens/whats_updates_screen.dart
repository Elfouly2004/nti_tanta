import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../../../tools/views/widgets/section_title_widget.dart';
import '../widgets/channel_section_widget.dart';
import '../widgets/status_section_widget.dart';

class WhatsAppUpdatesScreen extends StatelessWidget {
  const WhatsAppUpdatesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('التحديثات', style: GoogleFonts.almarai(fontSize: 20)),
      //   actions: [
      //     IconButton(icon: const Icon(Icons.search), onPressed: () {}),
      //     IconButton(icon: const Icon(Icons.camera_alt), onPressed: () {}),
      //     IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
      //   ],
      // ),
      body: Directionality(
        textDirection: TextDirection.rtl,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSectionTitle('الحالة'),
              buildStatusSection(),
              const SizedBox(height: 16),
              buildSectionTitle('القنوات'),
              buildChannelTile('إذاعة القرآن الكريم من القاهرة',
                  '📌 كمية الراحة في "أصلح لي شأني كله"...', '2024/11/21', '322'),
              buildChannelTile('قناة الناس', '📷 صورة', '2024/11/21', '3,934'),
              buildChannelTile('أسعار الذهب والعملات | القيادي',
                  '49.80 جنيهًا للدولار، أسعار الصرف', '2024/11/21', '50'),
            ],
          ),
        ),
      ),
    );
  }
}
