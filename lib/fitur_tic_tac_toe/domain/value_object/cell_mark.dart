import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hezbi_lan_game/fitur_tic_tac_toe/domain/value_object/mark_type.dart';

part 'cell_mark.freezed.dart';

@Freezed()
class CellMark with _$CellMark {
  @override
  final int sequence;
  @override
  final MarkType markType;

  CellMark({
    required this.sequence,
    required this.markType,
  });
}