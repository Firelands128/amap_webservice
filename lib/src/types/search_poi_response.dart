import 'package:json_annotation/json_annotation.dart';
import 'package:latlong2/latlong.dart';

import '../utils/utils.dart';

part 'search_poi_response.g.dart';

@JsonSerializable(explicitToJson: true)
class SearchPoiResponse {
  @JsonKey(fromJson: stringNullableFromJson)
  final String? status;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? info;
  @JsonKey(name: "infocode", fromJson: stringNullableFromJson)
  final String? infoCode;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? count;
  @JsonKey(fromJson: Poi.nullableListFromJson)
  final List<Poi>? pois;

  const SearchPoiResponse({
    this.status,
    this.info,
    this.infoCode,
    this.count,
    this.pois,
  });

  factory SearchPoiResponse.fromJson(Map<String, dynamic> json) =>
      _$SearchPoiResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SearchPoiResponseToJson(this);

  SearchPoiResponse copyWith({
    String? status,
    String? info,
    String? infoCode,
    String? count,
    List<Poi>? pois,
  }) {
    return SearchPoiResponse(
      status: status ?? this.status,
      info: info ?? this.info,
      infoCode: infoCode ?? this.infoCode,
      count: count ?? this.count,
      pois: pois ?? this.pois,
    );
  }
}

@JsonSerializable(explicitToJson: true)
class Poi {
  @JsonKey(fromJson: stringNullableFromJson)
  final String? parent;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? address;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? distance;
  @JsonKey(name: "pcode", fromJson: stringNullableFromJson)
  final String? pCode;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? adcode;
  @JsonKey(name: "pname", fromJson: stringNullableFromJson)
  final String? pName;
  @JsonKey(name: "cityname", fromJson: stringNullableFromJson)
  final String? cityName;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? type;
  @JsonKey(name: "typecode", fromJson: stringNullableFromJson)
  final String? typeCode;
  @JsonKey(name: "adname", fromJson: stringNullableFromJson)
  final String? adName;
  @JsonKey(name: "citycode", fromJson: stringNullableFromJson)
  final String? cityCode;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? name;
  @JsonKey(fromJson: latLngNullableFromJson)
  final LatLng? location;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? id;

  const Poi({
    this.parent,
    this.address,
    this.distance,
    this.pCode,
    this.adcode,
    this.pName,
    this.cityName,
    this.type,
    this.typeCode,
    this.adName,
    this.cityCode,
    this.name,
    this.location,
    this.id,
  });

  factory Poi.fromJson(Map<String, dynamic> json) => _$PoiFromJson(json);

  Map<String, dynamic> toJson() => _$PoiToJson(this);

  Poi copyWith({
    String? parent,
    String? address,
    String? distance,
    String? pCode,
    String? adcode,
    String? pName,
    String? cityName,
    String? type,
    String? typeCode,
    String? adName,
    String? cityCode,
    String? name,
    LatLng? location,
    String? id,
  }) {
    return Poi(
      parent: parent ?? this.parent,
      address: address ?? this.address,
      distance: distance ?? this.distance,
      pCode: pCode ?? this.pCode,
      adcode: adcode ?? this.adcode,
      pName: pName ?? this.pName,
      cityName: cityName ?? this.cityName,
      type: type ?? this.type,
      typeCode: typeCode ?? this.typeCode,
      adName: adName ?? this.adName,
      cityCode: cityCode ?? this.cityCode,
      name: name ?? this.name,
      location: location ?? this.location,
      id: id ?? this.id,
    );
  }

  static List<Poi>? nullableListFromJson(dynamic value) {
    List<Poi> result = [];
    if (value is List) {
      for (var item in value) {
        if (item is Map<String, dynamic>) {
          result.add(Poi.fromJson(item));
        }
      }
      return result;
    }
    return null;
  }
}
