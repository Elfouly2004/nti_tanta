part of 'change_color_cubit.dart';

@immutable
abstract class ChangeColorState {}

class ChangeColorInitial extends ChangeColorState {}

class ChangeColorUpdated extends ChangeColorState {
  final Color color;
  final String name;

  ChangeColorUpdated({required this.color, required this.name});
}
