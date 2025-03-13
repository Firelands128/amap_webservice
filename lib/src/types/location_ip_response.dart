import 'package:json_annotation/json_annotation.dart';

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

  /// rectangle: 所在城市矩形区域范围，格式为[西, 南, 东, 北]，单位为经纬度
  @JsonKey(fromJson: stringListNullableFromJson)
  final List<String>? rectangle;

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
    List<String>? rectangle,
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
