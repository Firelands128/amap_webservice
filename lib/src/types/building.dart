import 'base.dart';
import 'package:json_annotation/json_annotation.dart';

part 'building.g.dart';

@JsonSerializable(explicitToJson: true)
class Building {
  @JsonKey(fromJson: stringNullableFromJson)
  final String? name;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? type;

  const Building({
    this.name,
    this.type,
  });

  factory Building.fromJson(Map<String, dynamic> json) =>
      _$BuildingFromJson(json);

  Map<String, dynamic> toJson() => _$BuildingToJson(this);

  Building copyWith({
    String? name,
    String? type,
  }) {
    return Building(
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }

  static Building? nullableFromJson(dynamic value) {
    if (value is Map<String, dynamic>) {
      return Building.fromJson(value);
    }
    return null;
  }
}
