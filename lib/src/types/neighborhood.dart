import 'package:json_annotation/json_annotation.dart';

import 'base.dart';

part 'neighborhood.g.dart';

@JsonSerializable(explicitToJson: true)
class Neighborhood {
  @JsonKey(fromJson: stringNullableFromJson)
  final String? name;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? type;

  const Neighborhood({
    this.name,
    this.type,
  });

  factory Neighborhood.fromJson(Map<String, dynamic> json) =>
      _$NeighborhoodFromJson(json);

  Map<String, dynamic> toJson() => _$NeighborhoodToJson(this);

  Neighborhood copyWith({
    String? name,
    String? type,
  }) {
    return Neighborhood(
      name: name ?? this.name,
      type: type ?? this.type,
    );
  }

  static Neighborhood? nullableFromJson(dynamic value) {
    if (value is Map<String, dynamic>) {
      return Neighborhood.fromJson(value);
    }
    return null;
  }
}

