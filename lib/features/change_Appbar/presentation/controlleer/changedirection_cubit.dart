import 'package:bloc/bloc.dart';
import 'changedirection_state.dart';


class ChangeDirectionCubit extends Cubit<ChangeDirState> {
  ChangeDirectionCubit()
      : super(ChangeDirectionUpdated(isRtl: false, text: "Hello", translation: "مرحبًا"));

  void ChangeDirection() {
    emit(ChangeDirectionUpdated(isRtl: !state.isRtl, text: state.text, translation: state.translate));
  }

  void toggleText() {
    emit(ChangeDirectionUpdated(isRtl: state.isRtl, text: state.translate, translation: state.text));
  }
}
