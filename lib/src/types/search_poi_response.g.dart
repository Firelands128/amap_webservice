// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_poi_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchPoiResponse _$SearchPoiResponseFromJson(Map<String, dynamic> json) =>
    SearchPoiResponse(
      status: stringNullableFromJson(json['status']),
      info: stringNullableFromJson(json['info']),
      infoCode: stringNullableFromJson(json['infocode']),
      count: stringNullableFromJson(json['count']),
      pois: Poi.nullableListFromJson(json['pois']),
    );

Map<String, dynamic> _$SearchPoiResponseToJson(SearchPoiResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'info': instance.info,
      'infocode': instance.infoCode,
      'count': instance.count,
      'pois': instance.pois?.map((e) => e.toJson()).toList(),
    };

Poi _$PoiFromJson(Map<String, dynamic> json) => Poi(
      parent: stringNullableFromJson(json['parent']),
      address: stringNullableFromJson(json['address']),
      distance: stringNullableFromJson(json['distance']),
      pCode: stringNullableFromJson(json['pcode']),
      adcode: stringNullableFromJson(json['adcode']),
      pName: stringNullableFromJson(json['pname']),
      cityName: stringNullableFromJson(json['cityname']),
      type: stringNullableFromJson(json['type']),
      typeCode: stringNullableFromJson(json['typecode']),
      adName: stringNullableFromJson(json['adname']),
      cityCode: stringNullableFromJson(json['citycode']),
      name: stringNullableFromJson(json['name']),
      location: latLngNullableFromJson(json['location']),
      id: stringNullableFromJson(json['id']),
    );

Map<String, dynamic> _$PoiToJson(Poi instance) => <String, dynamic>{
      'parent': instance.parent,
      'address': instance.address,
      'distance': instance.distance,
      'pcode': instance.pCode,
      'adcode': instance.adcode,
      'pname': instance.pName,
      'cityname': instance.cityName,
      'type': instance.type,
      'typecode': instance.typeCode,
      'adname': instance.adName,
      'citycode': instance.cityCode,
      'name': instance.name,
      'location': instance.location?.toJson(),
      'id': instance.id,
    };
