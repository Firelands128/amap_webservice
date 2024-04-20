import 'package:flutter/foundation.dart';
import 'package:http/http.dart';

abstract class WebService {
  final _kAMapsUri = Uri.parse('https://restapi.amap.com/v3');

  @protected
  final Client _httpClient;

  @protected
  final String _apiKey;

  @protected
  final String? _secretKey;

  @protected
  final Map<String, String>? _apiHeaders;

  @protected
  late final Uri _uri;

  Client get httpClient => _httpClient;

  String get apiKey => _apiKey;

  String? get secretKey => _secretKey;

  Map<String, String>? get apiHeaders => _apiHeaders;

  Uri get uri => _uri;

  WebService({
    Client? httpClient,
    required String apiKey,
    String? secretKey,
    Map<String, String>? apiHeaders,
    String? baseUrl,
    required String apiPath,
  })  : _httpClient = httpClient ?? Client(),
        _apiKey = apiKey,
        _secretKey = secretKey,
        _apiHeaders = apiHeaders {
    var uri = baseUrl != null ? Uri.parse(baseUrl) : _kAMapsUri;
    _uri = uri.replace(path: '${uri.path}$apiPath');
  }

  void dispose() => httpClient.close();

  @protected
  Future<Response> doGet(String url, {Map<String, String>? headers}) {
    return httpClient.get(Uri.parse(url), headers: headers);
  }

  @protected
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
