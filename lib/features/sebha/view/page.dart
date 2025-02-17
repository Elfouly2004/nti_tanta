import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/sebha_cubit.dart';

class Sebha extends StatelessWidget {
  const Sebha({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SebhaCubit(),
      child: BlocBuilder<SebhaCubit, SebhaState>(
        builder: (context, state) {
          return Scaffold(
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: state.backgroundImage.isNotEmpty
                    ? DecorationImage(
                  image: AssetImage(state.backgroundImage),
                  fit: BoxFit.cover,
                )
                    : null,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      state.text,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Column(
                    children: [
                      buildButton(context, "سبحان الله", 0),
                      buildButton(context, "الحمد لله", 1),
                      buildButton(context, "الله أكبر", 2),
                    ],
                  ),
                  SizedBox(height: 30),
                  Wrap(
                    spacing: 15,
                    children: [
                      buildImageCircle(context, 'assets/images/5f51f696241415.5eb2d19f8b3e1 1.png'),
                      buildImageCircle(context, 'assets/images/5f51f696241415.5eb2d19f8b3e1 1 (1).png'),
                      buildImageCircle(context, 'assets/images/5f51f696241415.5eb2d19f8b3e1 1 (3).png'),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Widget buildButton(BuildContext context, String text, int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        ),
        onPressed: () {
          BlocProvider.of<SebhaCubit>(context).changeSebha(index);
        },
        child: Text(
          text,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }

  Widget buildImageCircle(BuildContext context, String imagePath) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<SebhaCubit>(context).changeBackground(imagePath);
      },
      child: CircleAvatar(
        radius: 45,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: 42,
          backgroundImage: AssetImage(imagePath),
        ),
      ),
    );
  }
}