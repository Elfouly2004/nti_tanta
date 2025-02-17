
class ChangeDirState {
  final bool isRtl;
  final String text;
  final String translate;

  ChangeDirState({required this.isRtl, required this.text, required this.translate});
}

class ChangeDirectionUpdated extends ChangeDirState {
  ChangeDirectionUpdated({required bool isRtl,
    required String text,
    required String
    translation
  }
  ): super(isRtl: isRtl, text: text, translate: translation);
}
