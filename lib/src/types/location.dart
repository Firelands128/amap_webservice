import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable(explicitToJson: true)
class Location {
  final double? longitude;

  final double? latitude;

  const Location({
    this.longitude,
    this.latitude,
  });

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  Location copyWith({
    double? longitude,
    double? latitude,
  }) {
    return Location(
      longitude: longitude ?? this.longitude,
      latitude: latitude ?? this.latitude,
    );
  }

  static String nullableToJson(Location? location) {
    if (location != null) {
      if (location.longitude != null && location.latitude != null) {
        return "${location.longitude!.toStringAsFixed(6)},"
            "${location.latitude!.toStringAsFixed(6)}";
      }
    }
    throw Exception("Convert 'Location' to 'String' failed.");
  }

  static Location? nullableFromJson(dynamic value) {
    if (value is String) {
      final list = value.split(",");
      if (list.length == 2) {
        final longitude = double.parse(list[0]);
        final latitude = double.parse(list[1]);
        return Location(longitude: longitude, latitude: latitude);
      }
    }
    throw Exception("Convert 'String' to 'Location' failed.");
  }
}
