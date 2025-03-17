import 'dart:collection';
import 'dart:convert';
import 'dart:math';

import 'package:crypto/crypto.dart';
import 'package:http/http.dart';
import 'package:latlong2/latlong.dart';

import '../types/types.dart';

part 'geocode_service.dart';
part 'search_poi_service.dart';
part 'geolocate_ip_service.dart';

class AMapWebService {
  final _kAMapsUri = Uri.parse('https://restapi.amap.com');

  final Client _httpClient;

  final String _apiKey;

  final String? _secretKey;

  final Map<String, String>? _apiHeaders;

  late final Uri _uri;

  Client get httpClient => _httpClient;

  String get apiKey => _apiKey;

  String? get secretKey => _secretKey;

  Map<String, String>? get apiHeaders => _apiHeaders;

  Uri get uri => _uri;

  AMapWebService({
    Client? httpClient,
    required String apiKey,
    String? secretKey,
    Map<String, String>? apiHeaders,
    String? baseUrl,
  })  : _httpClient = httpClient ?? Client(),
        _apiKey = apiKey,
        _secretKey = secretKey,
        _apiHeaders = apiHeaders {
    _uri = baseUrl != null ? Uri.parse(baseUrl) : _kAMapsUri;
  }

  void dispose() => httpClient.close();

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

  Future<Response> doGet(String url, {Map<String, String>? headers}) {
    return httpClient.get(Uri.parse(url), headers: headers);
  }

  Future<Response> doPost(
    String url,
    String body, {
    Map<String, String>? headers,
  }) {
    final postHeaders = {
      'Content-type': 'application/json',
    };
    if (headers != null) postHeaders.addAll(headers);
    return httpClient.post(Uri.parse(url), body: body, headers: postHeaders);
  }
}
