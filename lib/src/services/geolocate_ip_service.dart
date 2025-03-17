part of 'amap_web_service.dart';

extension GeolocateIpService on AMapWebService {
  /// [高级IP定位](https://lbs.amap.com/api/webservice/guide/api/ipconfig)
  /// ip: 需要搜索的IP地址（仅支持国内），若用户不填写IP，则取客户http之中的请求来进行定位
  Future<GeolocateIpResponse> geolocateIP({String? ip}) async {
    Uri uri = appendApiPath(this.uri, "/v3/ip");
    final params = <String, dynamic>{};
    params['key'] = apiKey;
    if (ip != null && ip.isNotEmpty) params["ip"] = ip;
    if (secretKey != null) params["sig"] = generateSignature(params);
    final url = appendParameters(uri, params).toString();
    final response = await doGet(url, headers: apiHeaders);
    return GeolocateIpResponse.fromJson(jsonDecode(response.body));
  }
}