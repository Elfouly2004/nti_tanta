import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasbeehState {
  final int count;
  final String text;

  TasbeehState({required this.count, required this.text});
}

class TasbeehCubit extends Cubit<TasbeehState> {
  TasbeehCubit() : super(TasbeehState(count: 0, text: "سبحان الله"));

  void increment() => emit(TasbeehState(count: state.count + 1, text: state.text));
  void reset() => emit(TasbeehState(count: 0, text: state.text));
  void changeText(String newText) => emit(TasbeehState(count: state.count, text: newText));
}
