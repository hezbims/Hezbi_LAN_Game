import 'dart:math';

enum MarkType {
  circle, cross;

  MarkType getInverse(){
    return this == MarkType.circle ?
        MarkType.cross : MarkType.circle;
  }

  static MarkType random(){
    return Random().nextBool() ? MarkType.circle : MarkType.cross;
  }
}