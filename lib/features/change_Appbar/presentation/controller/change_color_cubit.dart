import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'change_color_state.dart';

class ChangeColorCubit extends Cubit<ChangeColorState> {
  ChangeColorCubit() : super(ChangeColorUpdated(color: Colors.white, name: "aaaa"));

  void changeColor({required Color newColor}) {
    if (state is ChangeColorUpdated) {
      final currentState = state as ChangeColorUpdated;
      emit(ChangeColorUpdated(color: newColor, name: currentState.name));
    }
  }

  void changename(String newName) {
    if (state is ChangeColorUpdated) {
      final currentState = state as ChangeColorUpdated;
      emit(ChangeColorUpdated(color: currentState.color, name: newName));
    }
  }




}
