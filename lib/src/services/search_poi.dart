part of '../web_service.dart';

extension SearchPoiService on WebService {
  /// [关键字搜索](https://lbs.amap.com/api/webservice/guide/api-advanced/newpoisearch#t3)
  /// 必填: keyword或者types二选一
  /// keywords: 地点关键字
  /// types: 指定地点类型
  /// region: 搜索区划
  /// city_limit: 指定城市数据召回限制, 默认为false
  /// show_fields: 返回结果控制
  /// page_size: 当前分页展示的数据条数，取值为1-25，默认为10
  /// page_num: 请求第几分页，取值为1-100，默认为1
  /// output: 返回结果格式类型，默认格式为json，目前只支持json格式
  Future<SearchPoiResponse> textSearch({
    String? keywords,
    String? types,
    String? region,
    bool? cityLimit,
    String? showFields,
    int? pageSize,
    int? pageNum,
    String? output,
  }) async {
    assert(keywords != null || types != null);
    Uri uri = appendApiPath(this.uri, "/v5/place/text");
    final params = <String, dynamic>{};
    params['key'] = apiKey;
    if (keywords != null) params["keywords"] = keywords;
    if (types != null) params["types"] = types;
    if (region != null) params["region"] = region;
    if (cityLimit != null) params["city_limit"] = cityLimit;
    if (showFields != null) params["show_fields"] = showFields;
    if (pageSize != null) params["page_size"] = pageSize;
    if (pageNum != null) params["page_num"] = pageNum;
    if (output != null) params["output"] = output;
    if (secretKey != null) params["sig"] = generateSignature(params);
    final url = appendParameters(uri, params).toString();
    final response = await doGet(url, headers: apiHeaders);
    return SearchPoiResponse.fromJson(jsonDecode(response.body));
  }
}
