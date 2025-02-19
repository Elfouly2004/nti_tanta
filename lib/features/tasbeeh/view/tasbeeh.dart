import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controlller/tasbeeh_cubit.dart';

class TasbeehScreen extends StatelessWidget {
  const TasbeehScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> tasbeehOptions = ["سبحان الله", "الحمد لله", "الله أكبر", "لا إله إلا الله"];

    return Scaffold(
      backgroundColor: Colors.cyan.shade100,
      appBar: AppBar(
        title: const Text("السبحة"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<TasbeehCubit, TasbeehState>(
              builder: (context, state) => Text(
                state.text,
                style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            BlocBuilder<TasbeehCubit, TasbeehState>(
              builder: (context, state) => Text(
                state.count.toString(),
                style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<TasbeehCubit>().increment();
              },
              child: const Text("تسبيح"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                context.read<TasbeehCubit>().reset();
              },
              child: const Text("إعادة التسبيح"),
            ),
            const SizedBox(height: 20),
            BlocBuilder<TasbeehCubit, TasbeehState>(
              builder: (context, state) {
                return DropdownButton<String>(
                  value: state.text,
                  items: tasbeehOptions.map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (newText) {
                    if (newText != null) {
                      context.read<TasbeehCubit>().changeText(newText);
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}