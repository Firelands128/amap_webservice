// GENERATED CODE - DO NOT MODIFY BY HAND

part of 're_geocode_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReGeocodeResponse _$ReGeocodeResponseFromJson(Map<String, dynamic> json) =>
    ReGeocodeResponse(
      status: stringNullableFromJson(json['status']),
      info: stringNullableFromJson(json['info']),
      infoCode: stringNullableFromJson(json['infocode']),
      reGeocode: ReGeocode.nullableFromJson(json['regeocode']),
    );

Map<String, dynamic> _$ReGeocodeResponseToJson(ReGeocodeResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'info': instance.info,
      'infocode': instance.infoCode,
      'regeocode': instance.reGeocode?.toJson(),
    };

ReGeocode _$ReGeocodeFromJson(Map<String, dynamic> json) => ReGeocode(
      formattedAddress: stringNullableFromJson(json['formatted_address']),
      addressComponent:
          AddressComponent.nullableFromJson(json['addressComponent']),
      pois: ReGeocodePoi.nullableListFromJson(json['pois']),
      roads: Road.nullableListFromJson(json['roads']),
      roadInters: RoadInter.nullableListFromJson(json['roadinters']),
      aois: Aoi.nullableListFromJson(json['aois']),
    );

Map<String, dynamic> _$ReGeocodeToJson(ReGeocode instance) => <String, dynamic>{
      'formatted_address': instance.formattedAddress,
      'addressComponent': instance.addressComponent?.toJson(),
      'pois': instance.pois?.map((e) => e.toJson()).toList(),
      'roads': instance.roads?.map((e) => e.toJson()).toList(),
      'roadinters': instance.roadInters?.map((e) => e.toJson()).toList(),
      'aois': instance.aois?.map((e) => e.toJson()).toList(),
    };

AddressComponent _$AddressComponentFromJson(Map<String, dynamic> json) =>
    AddressComponent(
      country: stringNullableFromJson(json['country']),
      province: stringNullableFromJson(json['province']),
      city: stringNullableFromJson(json['city']),
      cityCode: stringNullableFromJson(json['citycode']),
      district: stringNullableFromJson(json['district']),
      adcode: stringNullableFromJson(json['adcode']),
      township: stringNullableFromJson(json['township']),
      townCode: stringNullableFromJson(json['towncode']),
      neighborhood: Neighborhood.nullableFromJson(json['neighborhood']),
      building: Building.nullableFromJson(json['building']),
      streetNumber: StreetNumber.nullableFromJson(json['streetNumber']),
      businessAreas: BusinessArea.nullableListFromJson(json['businessAreas']),
    );

Map<String, dynamic> _$AddressComponentToJson(AddressComponent instance) =>
    <String, dynamic>{
      'country': instance.country,
      'province': instance.province,
      'city': instance.city,
      'citycode': instance.cityCode,
      'district': instance.district,
      'adcode': instance.adcode,
      'township': instance.township,
      'towncode': instance.townCode,
      'neighborhood': instance.neighborhood?.toJson(),
      'building': instance.building?.toJson(),
      'streetNumber': instance.streetNumber?.toJson(),
      'businessAreas': instance.businessAreas?.map((e) => e.toJson()).toList(),
    };

StreetNumber _$StreetNumberFromJson(Map<String, dynamic> json) => StreetNumber(
      street: stringNullableFromJson(json['street']),
      number: stringNullableFromJson(json['number']),
      location: stringNullableFromJson(json['location']),
      direction: stringNullableFromJson(json['direction']),
      distance: stringNullableFromJson(json['distance']),
    );

Map<String, dynamic> _$StreetNumberToJson(StreetNumber instance) =>
    <String, dynamic>{
      'street': instance.street,
      'number': instance.number,
      'location': instance.location,
      'direction': instance.direction,
      'distance': instance.distance,
    };

BusinessArea _$BusinessAreaFromJson(Map<String, dynamic> json) => BusinessArea(
      location: stringNullableFromJson(json['location']),
      name: stringNullableFromJson(json['name']),
      id: stringNullableFromJson(json['id']),
    );

Map<String, dynamic> _$BusinessAreaToJson(BusinessArea instance) =>
    <String, dynamic>{
      'location': instance.location,
      'name': instance.name,
      'id': instance.id,
    };

ReGeocodePoi _$ReGeocodePoiFromJson(Map<String, dynamic> json) => ReGeocodePoi(
      id: stringNullableFromJson(json['id']),
      name: stringNullableFromJson(json['name']),
      type: stringNullableFromJson(json['type']),
      tel: stringNullableFromJson(json['tel']),
      direction: stringNullableFromJson(json['direction']),
      distance: stringNullableFromJson(json['distance']),
      location: stringNullableFromJson(json['location']),
      address: stringNullableFromJson(json['address']),
      poiWeight: stringNullableFromJson(json['poiweight']),
      businessArea: stringNullableFromJson(json['businessarea']),
    );

Map<String, dynamic> _$ReGeocodePoiToJson(ReGeocodePoi instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': instance.type,
      'tel': instance.tel,
      'direction': instance.direction,
      'distance': instance.distance,
      'location': instance.location,
      'address': instance.address,
      'poiweight': instance.poiWeight,
      'businessarea': instance.businessArea,
    };

Road _$RoadFromJson(Map<String, dynamic> json) => Road(
      id: stringNullableFromJson(json['id']),
      name: stringNullableFromJson(json['name']),
      direction: stringNullableFromJson(json['direction']),
      distance: stringNullableFromJson(json['distance']),
      location: stringNullableFromJson(json['location']),
    );

Map<String, dynamic> _$RoadToJson(Road instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'direction': instance.direction,
      'distance': instance.distance,
      'location': instance.location,
    };

RoadInter _$RoadInterFromJson(Map<String, dynamic> json) => RoadInter(
      direction: stringNullableFromJson(json['direction']),
      distance: stringNullableFromJson(json['distance']),
      location: stringNullableFromJson(json['location']),
      firstId: stringNullableFromJson(json['first_id']),
      firstName: stringNullableFromJson(json['first_name']),
      secondId: stringNullableFromJson(json['second_id']),
      secondName: stringNullableFromJson(json['second_name']),
    );

Map<String, dynamic> _$RoadInterToJson(RoadInter instance) => <String, dynamic>{
      'direction': instance.direction,
      'distance': instance.distance,
      'location': instance.location,
      'first_id': instance.firstId,
      'first_name': instance.firstName,
      'second_id': instance.secondId,
      'second_name': instance.secondName,
    };

Aoi _$AoiFromJson(Map<String, dynamic> json) => Aoi(
      id: stringNullableFromJson(json['id']),
      name: stringNullableFromJson(json['name']),
      adcode: stringNullableFromJson(json['adcode']),
      location: stringNullableFromJson(json['location']),
      area: stringNullableFromJson(json['area']),
      distance: stringNullableFromJson(json['distance']),
      type: stringNullableFromJson(json['type']),
    );

Map<String, dynamic> _$AoiToJson(Aoi instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'adcode': instance.adcode,
      'location': instance.location,
      'area': instance.area,
      'distance': instance.distance,
      'type': instance.type,
    };
