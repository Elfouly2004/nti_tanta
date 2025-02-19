class TasbeehState {
  final int count;
  final String text;

  TasbeehState({required this.count, required this.text});

  // نسخة جديدة من الحالة عند التحديث
  TasbeehState copyWith({int? count, String? text}) {
    return TasbeehState(
      count: count ?? this.count,
      text: text ?? this.text,
    );
  }
}
