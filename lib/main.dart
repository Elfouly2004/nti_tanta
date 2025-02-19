import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nti_flutter/features/change_Appbar/presentation/view/home_screen.dart';

import 'bmi.dart';
import 'features/controller/counter_cubit.dart';
import 'features/counter/counter.dart';
import 'features/home/view/screen/home_screen.dart';
import 'features/sebha/view/page.dart';
import 'features/tasbeeh/controlller/tasbeeh_cubit.dart';
import 'features/tasbeeh/view/tasbeeh.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => TasbeehCubit()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,
      home:TasbeehScreen()
    );
  }
}


