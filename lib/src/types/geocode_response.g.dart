// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocode_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeocodeResponse _$GeocodeResponseFromJson(Map<String, dynamic> json) =>
    GeocodeResponse(
      status: stringNullableFromJson(json['status']),
      info: stringNullableFromJson(json['info']),
      infoCode: stringNullableFromJson(json['infocode']),
      count: stringNullableFromJson(json['count']),
      geocodes: Geocode.nullableListFromJson(json['geocodes']),
    );

Map<String, dynamic> _$GeocodeResponseToJson(GeocodeResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'info': instance.info,
      'infocode': instance.infoCode,
      'count': instance.count,
      'geocodes': instance.geocodes?.map((e) => e.toJson()).toList(),
    };

Geocode _$GeocodeFromJson(Map<String, dynamic> json) => Geocode(
      formattedAddress: stringNullableFromJson(json['formatted_address']),
      country: stringNullableFromJson(json['country']),
      province: stringNullableFromJson(json['province']),
      cityCode: stringNullableFromJson(json['citycode']),
      city: stringNullableFromJson(json['city']),
      district: stringNullableFromJson(json['district']),
      neighborhood: Neighborhood.nullableFromJson(json['neighborhood']),
      building: Building.nullableFromJson(json['building']),
      adcode: stringNullableFromJson(json['adcode']),
      street: stringNullableFromJson(json['street']),
      number: stringNullableFromJson(json['number']),
      location: Location.nullableFromJson(json['location']),
      level: stringNullableFromJson(json['level']),
    );

Map<String, dynamic> _$GeocodeToJson(Geocode instance) => <String, dynamic>{
      'formatted_address': instance.formattedAddress,
      'country': instance.country,
      'province': instance.province,
      'citycode': instance.cityCode,
      'city': instance.city,
      'district': instance.district,
      'neighborhood': instance.neighborhood?.toJson(),
      'building': instance.building?.toJson(),
      'adcode': instance.adcode,
      'street': instance.street,
      'number': instance.number,
      'location': Location.nullableToJson(instance.location),
      'level': instance.level,
    };
