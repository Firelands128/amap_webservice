// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geolocate_ip_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeolocateIpResponse _$GeolocateIpResponseFromJson(Map<String, dynamic> json) =>
    GeolocateIpResponse(
      status: stringNullableFromJson(json['status']),
      info: stringNullableFromJson(json['info']),
      infoCode: stringNullableFromJson(json['infoCode']),
      province: stringNullableFromJson(json['province']),
      city: stringNullableFromJson(json['city']),
      adcode: stringNullableFromJson(json['adcode']),
      rectangle: LatLngBounds.nullableFromJson(json['rectangle']),
    );

Map<String, dynamic> _$GeolocateIpResponseToJson(
        GeolocateIpResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'info': instance.info,
      'infoCode': instance.infoCode,
      'province': instance.province,
      'city': instance.city,
      'adcode': instance.adcode,
      'rectangle': instance.rectangle?.toJson(),
    };
