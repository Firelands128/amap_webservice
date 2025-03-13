import 'package:json_annotation/json_annotation.dart';

import '../utils/utils.dart';
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
  @JsonKey(name: "regeocode", fromJson: ReGeocode.nullableFromJson)
  final ReGeocode? reGeocode;

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
    ReGeocode? reGeocode,
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
class ReGeocode {
  @JsonKey(name: 'formatted_address', fromJson: stringNullableFromJson)
  final String? formattedAddress;
  @JsonKey(fromJson: AddressComponent.nullableFromJson)
  final AddressComponent? addressComponent;
  @JsonKey(fromJson: ReGeocodePoi.nullableListFromJson)
  final List<ReGeocodePoi>? pois;
  @JsonKey(fromJson: Road.nullableListFromJson)
  final List<Road>? roads;
  @JsonKey(name: "roadinters", fromJson: RoadInter.nullableListFromJson)
  final List<RoadInter>? roadInters;
  @JsonKey(fromJson: Aoi.nullableListFromJson)
  final List<Aoi>? aois;

  const ReGeocode({
    this.formattedAddress,
    this.addressComponent,
    this.pois,
    this.roads,
    this.roadInters,
    this.aois,
  });

  factory ReGeocode.fromJson(Map<String, dynamic> json) => _$ReGeocodeFromJson(json);

  Map<String, dynamic> toJson() => _$ReGeocodeToJson(this);

  ReGeocode copyWith({
    String? formattedAddress,
    AddressComponent? addressComponent,
    List<ReGeocodePoi>? pois,
    List<Road>? roads,
    List<RoadInter>? roadInters,
    List<Aoi>? aois,
  }) {
    return ReGeocode(
      formattedAddress: formattedAddress ?? this.formattedAddress,
      addressComponent: addressComponent ?? this.addressComponent,
      pois: pois ?? this.pois,
      roads: roads ?? this.roads,
      roadInters: roadInters ?? this.roadInters,
      aois: aois ?? this.aois,
    );
  }

  static ReGeocode? nullableFromJson(dynamic value) {
    if (value is Map<String, dynamic>) {
      return ReGeocode.fromJson(value);
    }
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class AddressComponent {
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
  @JsonKey(fromJson: StreetNumber.nullableFromJson)
  final StreetNumber? streetNumber;
  @JsonKey(fromJson: BusinessArea.nullableListFromJson)
  final List<BusinessArea>? businessAreas;

  const AddressComponent({
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

  factory AddressComponent.fromJson(Map<String, dynamic> json) => _$AddressComponentFromJson(json);

  Map<String, dynamic> toJson() => _$AddressComponentToJson(this);

  AddressComponent copyWith({
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
    StreetNumber? streetNumber,
    List<BusinessArea>? businessAreas,
  }) {
    return AddressComponent(
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

  static AddressComponent? nullableFromJson(dynamic value) {
    if (value is Map<String, dynamic>) {
      return AddressComponent.fromJson(value);
    }
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class StreetNumber {
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

  const StreetNumber({
    this.street,
    this.number,
    this.location,
    this.direction,
    this.distance,
  });

  factory StreetNumber.fromJson(Map<String, dynamic> json) => _$StreetNumberFromJson(json);

  Map<String, dynamic> toJson() => _$StreetNumberToJson(this);

  StreetNumber copyWith({
    String? street,
    String? number,
    String? location,
    String? direction,
    String? distance,
  }) {
    return StreetNumber(
      street: street ?? this.street,
      number: number ?? this.number,
      location: location ?? this.location,
      direction: direction ?? this.direction,
      distance: distance ?? this.distance,
    );
  }

  static StreetNumber? nullableFromJson(dynamic value) {
    if (value is Map<String, dynamic>) {
      return StreetNumber.fromJson(value);
    }
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class BusinessArea {
  @JsonKey(fromJson: stringNullableFromJson)
  final String? location;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? name;
  @JsonKey(fromJson: stringNullableFromJson)
  final String? id;

  const BusinessArea({
    this.location,
    this.name,
    this.id,
  });

  factory BusinessArea.fromJson(Map<String, dynamic> json) => _$BusinessAreaFromJson(json);

  Map<String, dynamic> toJson() => _$BusinessAreaToJson(this);

  BusinessArea copyWith({
    String? location,
    String? name,
    String? id,
  }) {
    return BusinessArea(
      location: location ?? this.location,
      name: name ?? this.name,
      id: id ?? this.id,
    );
  }

  static List<BusinessArea>? nullableListFromJson(dynamic value) {
    List<BusinessArea> result = [];
    if (value is List) {
      for (var item in value) {
        if (item is Map<String, dynamic>) {
          result.add(BusinessArea.fromJson(item));
        }
      }
      return result;
    }
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class ReGeocodePoi {
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

  const ReGeocodePoi({
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

  factory ReGeocodePoi.fromJson(Map<String, dynamic> json) => _$ReGeocodePoiFromJson(json);

  Map<String, dynamic> toJson() => _$ReGeocodePoiToJson(this);

  ReGeocodePoi copyWith({
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
    return ReGeocodePoi(
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

  static List<ReGeocodePoi>? nullableListFromJson(dynamic value) {
    List<ReGeocodePoi> result = [];
    if (value is List) {
      for (var item in value) {
        if (item is Map<String, dynamic>) {
          result.add(ReGeocodePoi.fromJson(item));
        }
      }
      return result;
    }
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class Road {
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

  const Road({
    this.id,
    this.name,
    this.direction,
    this.distance,
    this.location,
  });

  factory Road.fromJson(Map<String, dynamic> json) => _$RoadFromJson(json);

  Map<String, dynamic> toJson() => _$RoadToJson(this);

  Road copyWith({
    String? id,
    String? name,
    String? direction,
    String? distance,
    String? location,
  }) {
    return Road(
      id: id ?? this.id,
      name: name ?? this.name,
      direction: direction ?? this.direction,
      distance: distance ?? this.distance,
      location: location ?? this.location,
    );
  }

  static List<Road>? nullableListFromJson(dynamic value) {
    List<Road> result = [];
    if (value is List) {
      for (var item in value) {
        if (item is Map<String, dynamic>) {
          result.add(Road.fromJson(item));
        }
      }
      return result;
    }
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class RoadInter {
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

  const RoadInter({
    this.direction,
    this.distance,
    this.location,
    this.firstId,
    this.firstName,
    this.secondId,
    this.secondName,
  });

  factory RoadInter.fromJson(Map<String, dynamic> json) => _$RoadInterFromJson(json);

  Map<String, dynamic> toJson() => _$RoadInterToJson(this);

  RoadInter copyWith({
    String? direction,
    String? distance,
    String? location,
    String? firstId,
    String? firstName,
    String? secondId,
    String? secondName,
  }) {
    return RoadInter(
      direction: direction ?? this.direction,
      distance: distance ?? this.distance,
      location: location ?? this.location,
      firstId: firstId ?? this.firstId,
      firstName: firstName ?? this.firstName,
      secondId: secondId ?? this.secondId,
      secondName: secondName ?? this.secondName,
    );
  }

  static List<RoadInter>? nullableListFromJson(dynamic value) {
    List<RoadInter> result = [];
    if (value is List) {
      for (var item in value) {
        if (item is Map<String, dynamic>) {
          result.add(RoadInter.fromJson(item));
        }
      }
      return result;
    }
    return null;
  }
}

@JsonSerializable(explicitToJson: true)
class Aoi {
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

  const Aoi({
    this.id,
    this.name,
    this.adcode,
    this.location,
    this.area,
    this.distance,
    this.type,
  });

  factory Aoi.fromJson(Map<String, dynamic> json) => _$AoiFromJson(json);

  Map<String, dynamic> toJson() => _$AoiToJson(this);

  Aoi copyWith({
    String? id,
    String? name,
    String? adcode,
    String? location,
    String? area,
    String? distance,
    String? type,
  }) {
    return Aoi(
      id: id ?? this.id,
      name: name ?? this.name,
      adcode: adcode ?? this.adcode,
      location: location ?? this.location,
      area: area ?? this.area,
      distance: distance ?? this.distance,
      type: type ?? this.type,
    );
  }

  static List<Aoi>? nullableListFromJson(dynamic value) {
    List<Aoi> result = [];
    if (value is List) {
      for (var item in value) {
        if (item is Map<String, dynamic>) {
          result.add(Aoi.fromJson(item));
        }
      }
      return result;
    }
    return null;
  }
}
