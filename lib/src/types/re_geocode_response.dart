import 'package:json_annotation/json_annotation.dart';

import 'base.dart';
import 'building.dart';
import 'neighborhood.dart';

part 're_geocode_response.g.dart';

@JsonSerializable(explicitToJson: true)
class ReGeocodeResponse {
  @JsonKey(fromJson: stringNullableFromJson)
  final String? status;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? info;
  @JsonKey(name: "infocode", fromJson: stringNullableFromJson)
  final String? infoCode;
  @JsonKey(name: "regeocode", fromJson: _ReGeocode.nullableFromJson)
  final _ReGeocode? reGeocode;

  const ReGeocodeResponse({
    this.status,
    this.info,
    this.infoCode,
    this.reGeocode,
  });

  factory ReGeocodeResponse.fromJson(Map<String, dynamic> json) =>
      _$ReGeocodeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ReGeocodeResponseToJson(this);

  ReGeocodeResponse copyWith({
    String? status,
    String? info,
    String? infoCode,
    _ReGeocode? reGeocode,
  }) {
    return ReGeocodeResponse(
      status: status ?? this.status,
      info: info ?? this.info,
      infoCode: infoCode ?? this.infoCode,
      reGeocode: reGeocode ?? this.reGeocode,
    );
  }
}

@JsonSerializable(explicitToJson: true)
class _ReGeocode {
  @JsonKey(name: 'formatted_address', fromJson: stringNullableFromJson)
  final String? formattedAddress;
  @JsonKey(fromJson: _AddressComponent.nullableFromJson)
  final _AddressComponent? addressComponent;
  @JsonKey(fromJson: _Poi.nullableListFromJson)
  final List<_Poi>? pois;
  @JsonKey(fromJson: _Road.nullableListFromJson)
  final List<_Road>? roads;
  @JsonKey(name: "roadinters", fromJson: _RoadInter.nullableListFromJson)
  final List<_RoadInter>? roadInters;
  @JsonKey(fromJson: _Aoi.nullableListFromJson)
  final List<_Aoi>? aois;

  const _ReGeocode({
    this.formattedAddress,
    this.addressComponent,
    this.pois,
    this.roads,
    this.roadInters,
    this.aois,
  });

  factory _ReGeocode.fromJson(Map<String, dynamic> json) =>
      _$ReGeocodeFromJson(json);

  Map<String, dynamic> toJson() => _$ReGeocodeToJson(this);

  _ReGeocode copyWith({
    String? formattedAddress,
    _AddressComponent? addressComponent,
    List<_Poi>? pois,
    List<_Road>? roads,
    List<_RoadInter>? roadInters,
    List<_Aoi>? aois,
  }) {
    return _ReGeocode(
      formattedAddress: formattedAddress ?? this.formattedAddress,
      addressComponent: addressComponent ?? this.addressComponent,
      pois: pois ?? this.pois,
      roads: roads ?? this.roads,
      roadInters: roadInters ?? this.roadInters,
      aois: aois ?? this.aois,
    );
  }

  static _ReGeocode? nullableFromJson(dynamic value) {
    if (value is Map<String, dynamic>) {
      return _ReGeocode.fromJson(value);
    }
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class _AddressComponent {
  @JsonKey(fromJson: stringNullableFromJson)
  final String? country;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? province;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? city;
  @JsonKey(name: "citycode", fromJson: stringNullableFromJson)
  final String? cityCode;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? district;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? adcode;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? township;
  @JsonKey(name: "towncode", fromJson: stringNullableFromJson)
  final String? townCode;
  @JsonKey(fromJson: Neighborhood.nullableFromJson)
  final Neighborhood? neighborhood;
  @JsonKey(fromJson: Building.nullableFromJson)
  final Building? building;
  @JsonKey(fromJson: _StreetNumber.nullableFromJson)
  final _StreetNumber? streetNumber;
  @JsonKey(fromJson: _BusinessArea.nullableListFromJson)
  final List<_BusinessArea>? businessAreas;

  const _AddressComponent({
    this.country,
    this.province,
    this.city,
    this.cityCode,
    this.district,
    this.adcode,
    this.township,
    this.townCode,
    this.neighborhood,
    this.building,
    this.streetNumber,
    this.businessAreas,
  });

  factory _AddressComponent.fromJson(Map<String, dynamic> json) =>
      _$AddressComponentFromJson(json);

  Map<String, dynamic> toJson() => _$AddressComponentToJson(this);

  _AddressComponent copyWith({
    String? country,
    String? province,
    String? city,
    String? cityCode,
    String? district,
    String? adcode,
    String? township,
    String? townCode,
    Neighborhood? neighborhood,
    Building? building,
    _StreetNumber? streetNumber,
    List<_BusinessArea>? businessAreas,
  }) {
    return _AddressComponent(
      country: country ?? this.country,
      province: province ?? this.province,
      city: city ?? this.city,
      cityCode: cityCode ?? this.cityCode,
      district: district ?? this.district,
      adcode: adcode ?? this.adcode,
      township: township ?? this.township,
      townCode: townCode ?? this.townCode,
      neighborhood: neighborhood ?? this.neighborhood,
      building: building ?? this.building,
      streetNumber: streetNumber ?? this.streetNumber,
      businessAreas: businessAreas ?? this.businessAreas,
    );
  }

  static _AddressComponent? nullableFromJson(dynamic value) {
    if (value is Map<String, dynamic>) {
      return _AddressComponent.fromJson(value);
    }
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class _StreetNumber {
  @JsonKey(fromJson: stringNullableFromJson)
  final String? street;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? number;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? location;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? direction;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? distance;

  const _StreetNumber({
    this.street,
    this.number,
    this.location,
    this.direction,
    this.distance,
  });

  factory _StreetNumber.fromJson(Map<String, dynamic> json) =>
      _$StreetNumberFromJson(json);

  Map<String, dynamic> toJson() => _$StreetNumberToJson(this);

  _StreetNumber copyWith({
    String? street,
    String? number,
    String? location,
    String? direction,
    String? distance,
  }) {
    return _StreetNumber(
      street: street ?? this.street,
      number: number ?? this.number,
      location: location ?? this.location,
      direction: direction ?? this.direction,
      distance: distance ?? this.distance,
    );
  }

  static _StreetNumber? nullableFromJson(dynamic value) {
    if (value is Map<String, dynamic>) {
      return _StreetNumber.fromJson(value);
    }
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class _BusinessArea {
  @JsonKey(fromJson: stringNullableFromJson)
  final String? location;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? name;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? id;

  const _BusinessArea({
    this.location,
    this.name,
    this.id,
  });

  factory _BusinessArea.fromJson(Map<String, dynamic> json) =>
      _$BusinessAreaFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessAreaToJson(this);

  _BusinessArea copyWith({
    String? location,
    String? name,
    String? id,
  }) {
    return _BusinessArea(
      location: location ?? this.location,
      name: name ?? this.name,
      id: id ?? this.id,
    );
  }

  static List<_BusinessArea>? nullableListFromJson(dynamic value) {
    List<_BusinessArea> result = [];
    if (value is List) {
      for (var item in value) {
        if (item is Map<String, dynamic>) {
          result.add(_BusinessArea.fromJson(item));
        }
      }
      return result;
    }
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class _Poi {
  @JsonKey(fromJson: stringNullableFromJson)
  final String? id;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? name;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? type;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? tel;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? direction;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? distance;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? location;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? address;
  @JsonKey(name: "poiweight", fromJson: stringNullableFromJson)
  final String? poiWeight;
  @JsonKey(name: "businessarea", fromJson: stringNullableFromJson)
  final String? businessArea;

  const _Poi({
    this.id,
    this.name,
    this.type,
    this.tel,
    this.direction,
    this.distance,
    this.location,
    this.address,
    this.poiWeight,
    this.businessArea,
  });

  factory _Poi.fromJson(Map<String, dynamic> json) => _$PoiFromJson(json);

  Map<String, dynamic> toJson() => _$PoiToJson(this);

  _Poi copyWith({
    String? id,
    String? name,
    String? type,
    String? tel,
    String? direction,
    String? distance,
    String? location,
    String? address,
    String? poiWeight,
    String? businessArea,
  }) {
    return _Poi(
      id: id ?? this.id,
      name: name ?? this.name,
      type: type ?? this.type,
      tel: tel ?? this.tel,
      direction: direction ?? this.direction,
      distance: distance ?? this.distance,
      location: location ?? this.location,
      address: address ?? this.address,
      poiWeight: poiWeight ?? this.poiWeight,
      businessArea: businessArea ?? this.businessArea,
    );
  }

  static List<_Poi>? nullableListFromJson(dynamic value) {
    List<_Poi> result = [];
    if (value is List) {
      for (var item in value) {
        if (item is Map<String, dynamic>) {
          result.add(_Poi.fromJson(item));
        }
      }
      return result;
    }
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class _Road {
  @JsonKey(fromJson: stringNullableFromJson)
  final String? id;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? name;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? direction;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? distance;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? location;

  const _Road({
    this.id,
    this.name,
    this.direction,
    this.distance,
    this.location,
  });

  factory _Road.fromJson(Map<String, dynamic> json) => _$RoadFromJson(json);

  Map<String, dynamic> toJson() => _$RoadToJson(this);

  _Road copyWith({
    String? id,
    String? name,
    String? direction,
    String? distance,
    String? location,
  }) {
    return _Road(
      id: id ?? this.id,
      name: name ?? this.name,
      direction: direction ?? this.direction,
      distance: distance ?? this.distance,
      location: location ?? this.location,
    );
  }

  static List<_Road>? nullableListFromJson(dynamic value) {
    List<_Road> result = [];
    if (value is List) {
      for (var item in value) {
        if (item is Map<String, dynamic>) {
          result.add(_Road.fromJson(item));
        }
      }
      return result;
    }
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class _RoadInter {
  @JsonKey(fromJson: stringNullableFromJson)
  final String? direction;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? distance;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? location;
  @JsonKey(name: 'first_id', fromJson: stringNullableFromJson)
  final String? firstId;
  @JsonKey(name: 'first_name', fromJson: stringNullableFromJson)
  final String? firstName;
  @JsonKey(name: 'second_id', fromJson: stringNullableFromJson)
  final String? secondId;
  @JsonKey(name: 'second_name', fromJson: stringNullableFromJson)
  final String? secondName;

  const _RoadInter({
    this.direction,
    this.distance,
    this.location,
    this.firstId,
    this.firstName,
    this.secondId,
    this.secondName,
  });

  factory _RoadInter.fromJson(Map<String, dynamic> json) =>
      _$RoadInterFromJson(json);

  Map<String, dynamic> toJson() => _$RoadInterToJson(this);

  _RoadInter copyWith({
    String? direction,
    String? distance,
    String? location,
    String? firstId,
    String? firstName,
    String? secondId,
    String? secondName,
  }) {
    return _RoadInter(
      direction: direction ?? this.direction,
      distance: distance ?? this.distance,
      location: location ?? this.location,
      firstId: firstId ?? this.firstId,
      firstName: firstName ?? this.firstName,
      secondId: secondId ?? this.secondId,
      secondName: secondName ?? this.secondName,
    );
  }

  static List<_RoadInter>? nullableListFromJson(dynamic value) {
    List<_RoadInter> result = [];
    if (value is List) {
      for (var item in value) {
        if (item is Map<String, dynamic>) {
          result.add(_RoadInter.fromJson(item));
        }
      }
      return result;
    }
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class _Aoi {
  @JsonKey(fromJson: stringNullableFromJson)
  final String? id;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? name;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? adcode;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? location;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? area;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? distance;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? type;

  const _Aoi({
    this.id,
    this.name,
    this.adcode,
    this.location,
    this.area,
    this.distance,
    this.type,
  });

  factory _Aoi.fromJson(Map<String, dynamic> json) => _$AoiFromJson(json);

  Map<String, dynamic> toJson() => _$AoiToJson(this);

  _Aoi copyWith({
    String? id,
    String? name,
    String? adcode,
    String? location,
    String? area,
    String? distance,
    String? type,
  }) {
    return _Aoi(
      id: id ?? this.id,
      name: name ?? this.name,
      adcode: adcode ?? this.adcode,
      location: location ?? this.location,
      area: area ?? this.area,
      distance: distance ?? this.distance,
      type: type ?? this.type,
    );
  }

  static List<_Aoi>? nullableListFromJson(dynamic value) {
    List<_Aoi> result = [];
    if (value is List) {
      for (var item in value) {
        if (item is Map<String, dynamic>) {
          result.add(_Aoi.fromJson(item));
        }
      }
      return result;
    }
    return null;
  }
}
