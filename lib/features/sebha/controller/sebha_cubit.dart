import 'package:flutter_bloc/flutter_bloc.dart';


class SebhaState {
  final String text;
  final String backgroundImage;

  SebhaState({required this.text, required this.backgroundImage});
}


class SebhaCubit extends Cubit<SebhaState> {
  SebhaCubit() : super(SebhaState(text: "سبحان الله", backgroundImage: ""));

  void changeSebha(int index) {
    String newText;
    switch (index) {
      case 0:
        newText = "سبحان الله";
        break;
      case 1:
        newText = "الحمد لله";
        break;
      case 2:
        newText = "الله أكبر";
        break;
      default:
        newText = "سبحان الله";
    }
    emit(SebhaState(text: newText, backgroundImage: state.backgroundImage));
  }

  void changeBackground(String imagePath) {
    emit(SebhaState(text: state.text, backgroundImage: imagePath));
  }
}
