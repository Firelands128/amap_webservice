import 'package:json_annotation/json_annotation.dart';
import 'package:latlong2/latlong.dart';

import '../utils/utils.dart';

part 'location_ip_response.g.dart';

@JsonSerializable(explicitToJson: true)
class LocationIpResponse {
  /// status: 返回结果状态值，值为0或1；0表示失败，1表示成功
  @JsonKey(fromJson: stringNullableFromJson)
  final String? status;

  /// info: 返回状态说明，status为0时，info返回错误原因，否则返回“OK”
  @JsonKey(fromJson: stringNullableFromJson)
  final String? info;

  /// infocode: 状态码，10000代表正确，详情参阅info状态表
  @JsonKey(fromJson: stringNullableFromJson)
  final String? infoCode;

  /// province: 省份名称，若为直辖市则显示直辖市名称；如果在局域网IP网段内，则返回“局域网”；非法IP以及国外IP则返回空
  @JsonKey(fromJson: stringNullableFromJson)
  final String? province;

  /// city: 城市名称，若为直辖市则显示直辖市名称；如果为局域网网段内IP或者非法IP或国外IP，则返回空
  @JsonKey(fromJson: stringNullableFromJson)
  final String? city;

  /// adcode: 城市的adcode编码
  @JsonKey(fromJson: stringNullableFromJson)
  final String? adcode;

  /// rectangle: 所在城市矩形区域范围，格式为[西, 南; 东, 北]，单位为经纬度
  @JsonKey(fromJson: LatLngBounds.nullableFromJson)
  final LatLngBounds? rectangle;

  const LocationIpResponse({
    this.status,
    this.info,
    this.infoCode,
    this.province,
    this.city,
    this.adcode,
    this.rectangle,
  });

  factory LocationIpResponse.fromJson(Map<String, dynamic> json) =>
      _$LocationIpResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LocationIpResponseToJson(this);

  LocationIpResponse copyWith({
    String? status,
    String? info,
    String? infoCode,
    String? province,
    String? city,
    String? adcode,
    LatLngBounds? rectangle,
  }) {
    return LocationIpResponse(
      status: status ?? this.status,
      info: info ?? this.info,
      infoCode: infoCode ?? this.infoCode,
      province: province ?? this.province,
      city: city ?? this.city,
      adcode: adcode ?? this.adcode,
      rectangle: rectangle ?? this.rectangle,
    );
  }
}

class LatLngBounds {
  final LatLng southWest;
  final LatLng northEast;

  LatLngBounds({
    required this.southWest,
    required this.northEast,
  });

  String toJson() =>
      "[${southWest.longitude},${southWest.latitude};${northEast.longitude},${northEast.latitude}]";

  LatLngBounds copyWith({
    LatLng? southWest,
    LatLng? northEast,
  }) {
    return LatLngBounds(
      southWest: southWest ?? this.southWest,
      northEast: northEast ?? this.northEast,
    );
  }

  static LatLngBounds? nullableFromJson(dynamic value) {
    if (value is String && value.isNotEmpty) {
      final list = value.split(";");
      final southWestList = list[0].split(",");
      final northEastList = list[1].split(",");
      final west = double.parse(southWestList[0]);
      final south = double.parse(southWestList[1]);
      final east = double.parse(northEastList[0]);
      final north = double.parse(northEastList[1]);
      return LatLngBounds(southWest: LatLng(south, west), northEast: LatLng(north, east));
    }
    return null;
  }
}
