import 'package:freezed_annotation/freezed_annotation.dart';
import '../../exports.dart';

part 'road_model.freezed.dart';
part 'road_model.g.dart';

@freezed
class RoadModel with _$RoadModel {
  const RoadModel._();

  @TableModel('roads')
  factory RoadModel({
    required int id,
    required String name,
  }) = _RoadModel;

  factory RoadModel.fromJson(Map<String, dynamic> json) =>
      _$RoadModelFromJson(json);

  static const TableBuilder table = _tableRoadModel;
}
