// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_ip_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LocationIpResponse _$LocationIpResponseFromJson(Map<String, dynamic> json) =>
    LocationIpResponse(
      status: stringNullableFromJson(json['status']),
      info: stringNullableFromJson(json['info']),
      infoCode: stringNullableFromJson(json['infoCode']),
      province: stringNullableFromJson(json['province']),
      city: stringNullableFromJson(json['city']),
      adcode: stringNullableFromJson(json['adcode']),
      rectangle: stringListNullableFromJson(json['rectangle']),
    );

Map<String, dynamic> _$LocationIpResponseToJson(LocationIpResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'info': instance.info,
      'infoCode': instance.infoCode,
      'province': instance.province,
      'city': instance.city,
      'adcode': instance.adcode,
      'rectangle': instance.rectangle,
    };
