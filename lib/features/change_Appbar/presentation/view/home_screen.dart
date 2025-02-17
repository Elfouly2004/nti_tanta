import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controlleer/changedirection_cubit.dart';
import '../controlleer/changedirection_state.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ChangeDirectionCubit(),
      child: BlocBuilder<ChangeDirectionCubit, ChangeDirState>(
        builder: (context, state) {
          return Directionality(
            textDirection: state.isRtl ? TextDirection.rtl : TextDirection.ltr,
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: Colors.deepOrange,
                title: const Text("Change Dir page"),
                actions: [
                  Switch(
                    value: state.isRtl,
                    onChanged: (value) {
                      context.read<ChangeDirectionCubit>().ChangeDirection();
                    },
                  ),
                ],
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      state.text,
                      style: const TextStyle(fontSize: 24),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        context.read<ChangeDirectionCubit>().toggleText();
                      },
                      child: const Text("Change Text"),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
