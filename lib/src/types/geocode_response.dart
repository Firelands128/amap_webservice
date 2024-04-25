import 'package:json_annotation/json_annotation.dart';

import 'base.dart';
import 'building.dart';
import 'location.dart';
import 'neighborhood.dart';

part 'geocode_response.g.dart';

@JsonSerializable(explicitToJson: true)
class GeocodeResponse {
  @JsonKey(fromJson: stringNullableFromJson)
  final String? status;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? info;
  @JsonKey(name: "infocode", fromJson: stringNullableFromJson)
  final String? infoCode;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? count;
  @JsonKey(fromJson: Geocode.nullableListFromJson)
  final List<Geocode>? geocodes;

  const GeocodeResponse({
    this.status,
    this.info,
    this.infoCode,
    this.count,
    this.geocodes,
  });

  factory GeocodeResponse.fromJson(Map<String, dynamic> json) =>
      _$GeocodeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GeocodeResponseToJson(this);

  GeocodeResponse copyWith({
    String? status,
    String? info,
    String? infoCode,
    String? count,
    List<Geocode>? geocodes,
  }) {
    return GeocodeResponse(
      status: status ?? this.status,
      info: info ?? this.info,
      infoCode: infoCode ?? this.infoCode,
      count: count ?? this.count,
      geocodes: geocodes ?? this.geocodes,
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Geocode {
  @JsonKey(name: 'formatted_address', fromJson: stringNullableFromJson)
  final String? formattedAddress;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? country;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? province;
  @JsonKey(name: "citycode", fromJson: stringNullableFromJson)
  final String? cityCode;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? city;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? district;
  @JsonKey(fromJson: Neighborhood.nullableFromJson)
  final Neighborhood? neighborhood;
  @JsonKey(fromJson: Building.nullableFromJson)
  final Building? building;
  @JsonKey(name: "adcode", fromJson: stringNullableFromJson)
  final String? adcode;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? street;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? number;
  @JsonKey(toJson: Location.nullableToJson, fromJson: Location.nullableFromJson)
  final Location? location;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? level;

  const Geocode({
    this.formattedAddress,
    this.country,
    this.province,
    this.cityCode,
    this.city,
    this.district,
    this.neighborhood,
    this.building,
    this.adcode,
    this.street,
    this.number,
    this.location,
    this.level,
  });

  factory Geocode.fromJson(Map<String, dynamic> json) =>
      _$GeocodeFromJson(json);

  Map<String, dynamic> toJson() => _$GeocodeToJson(this);

  Geocode copyWith({
    String? formattedAddress,
    String? country,
    String? province,
    String? cityCode,
    String? city,
    String? district,
    Neighborhood? neighborhood,
    Building? building,
    String? adcode,
    String? street,
    String? number,
    Location? location,
    String? level,
  }) {
    return Geocode(
      formattedAddress: formattedAddress ?? this.formattedAddress,
      country: country ?? this.country,
      province: province ?? this.province,
      cityCode: cityCode ?? this.cityCode,
      city: city ?? this.city,
      district: district ?? this.district,
      neighborhood: neighborhood ?? this.neighborhood,
      building: building ?? this.building,
      adcode: adcode ?? this.adcode,
      street: street ?? this.street,
      number: number ?? this.number,
      location: location ?? this.location,
      level: level ?? this.level,
    );
  }

  static List<Geocode>? nullableListFromJson(dynamic value) {
    List<Geocode> result = [];
    if (value is List) {
      for (var item in value) {
        if (item is Map<String, dynamic>) {
          result.add(Geocode.fromJson(item));
        }
      }
      return result;
    }
    return null;
  }
}
