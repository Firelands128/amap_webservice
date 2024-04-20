part of '../amap_webservice.dart';

class GeocodeService extends WebService {
  static const _geocodeUrl = '/geocode';

  GeocodeService({
    super.httpClient,
    required super.apiKey,
    super.secretKey,
    super.apiHeaders,
    super.baseUrl,
  }) : super(
          apiPath: _geocodeUrl,
        );

  /// [地理编码](https://lbs.amap.com/api/webservice/guide/api/georegeo#geo)
  /// address: 结构化地址信息
  /// city: 指定查询的城市，默认全国范围
  /// output: 返回数据格式类型，默认为JSON
  Future<GeocodeResponse> geocode(
    String address, {
    String? city,
    String? output = "JSON",
  }) async {
    Uri uri = appendApiPath(this.uri, "/geo");
    final params = <String, dynamic>{};
    params['key'] = apiKey;
    params["address"] = address;
    if (city != null) params["city"] = city;
    if (output != null) params["output"] = output;
    if (secretKey != null) params["sig"] = generateSignature(params);
    final url = appendParameters(uri, params).toString();
    final response = await doGet(url, headers: apiHeaders);
    return GeocodeResponse.fromJson(jsonDecode(response.body));
  }

  /// [逆地理编码](https://lbs.amap.com/api/webservice/guide/api/georegeo#regeo)
  /// location: 经纬度坐标
  /// radius: 搜索半径，取值范围在0~3000，默认是1000，单位：米
  /// output: 返回数据格式类型，默认为JSON
  /// extensions：返回结果控制，取值为base只返回基本地址信息，取值为all时会返回基本地址信息、附近POI内容、道路信息以及道路交叉口信息
  /// poiType: 返回附近POI类型，extensions参数为all时生效
  /// roadLevel: 道路等级，extensions参数为all时生效
  /// homeOrCorp: 是否优化POI返回顺序，extensions参数为all时生效
  Future<ReGeocodeResponse> reGeocode(
    Location location, {
    int? radius,
    String? output,
    String? extensions,
    String? poiType,
    String? roadLevel,
    String? homeOrCorp,
  }) async {
    Uri uri = appendApiPath(this.uri, "/regeo");
    final params = <String, String>{};
    params['key'] = apiKey;
    params["location"] = "${location.longitude?.toStringAsFixed(6)},"
        "${location.latitude?.toStringAsFixed(6)}";
    if (radius != null) params["radius"] = min(max(0, radius), 3000).toString();
    if (output != null) params["output"] = output;
    if (extensions != null) params["extensions"] = extensions;
    if (poiType != null) params["poitype"] = poiType;
    if (roadLevel != null) params["roadlevel"] = roadLevel;
    if (homeOrCorp != null) params["homeorcorp"] = homeOrCorp;
    if (secretKey != null) params["sig"] = generateSignature(params);
    final url = appendParameters(uri, params).toString();
    final response = await doGet(url, headers: apiHeaders);
    return ReGeocodeResponse.fromJson(jsonDecode(response.body));
  }

  Uri appendApiPath(Uri uri, String apiPath) {
    return uri.replace(path: '${uri.path}$apiPath');
  }

  Uri appendParameters(Uri uri, Map<String, dynamic> params) {
    return uri.replace(queryParameters: params);
  }

  String generateSignature(Map<String, dynamic> params) {
    assert(secretKey != null);
    String raw = SplayTreeMap.from(params)
        .entries
        .map((entry) => "${entry.key}=${entry.value}")
        .toList()
        .join("&");
    raw += secretKey!;
    return md5.convert(utf8.encode(raw)).toString();
  }
}
