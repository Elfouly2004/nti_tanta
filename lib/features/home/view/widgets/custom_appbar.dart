import 'package:flutter/material.dart';
import 'package:nti_flutter/core/Appcolors.dart';
import 'package:nti_flutter/features/home/view/widgets/popupmenu.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.appbar,
          leadingWidth: 200,
      leading: Row(
        children: [
          PopupMenuButton(itemBuilder: (context) => [
            popupMenu(text: 'الاعدادات '),
            popupMenu(text: 'المجموعه'),
            popupMenu(text: 'الرسائل ')

        ]),

          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(Icons.camera_alt_outlined),
            onPressed: () {
            },
          ),

        ],
      ),
      actions: [
      const Text(
      "واتساب ",
      style: TextStyle(fontWeight: FontWeight.bold ,fontSize: 30),
    ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
