import 'dart:convert';

import 'package:amap_webservice/amap_webservice.dart';
import 'package:flutter/material.dart';

/// 搜索POI页面
class SearchPoiServicePage extends StatefulWidget {
  /// 搜索POI页面构造函数
  const SearchPoiServicePage({super.key});

  /// 搜索POI页面标题
  static const title = '搜索POI 2.0';

  @override
  State<SearchPoiServicePage> createState() => _SearchPoiServicePageState();
}

class _SearchPoiServicePageState extends State<SearchPoiServicePage> {
  final service = WebService(
    apiKey: '0e2f6cd577c7b01f2f10e8a8a4cdf153',
    secretKey: '36b5528aecd3e4aba379e1ef352820fd',
  );
  final searchTextController = TextEditingController();
  final searchTextResultController = TextEditingController();
  final searchAroundLongitudeController = TextEditingController();
  final searchAroundLatitudeController = TextEditingController();
  final searchAroundResultController = TextEditingController();

  void onSearchTextPressed() async {
    final response =
        await service.textSearch(keywords: searchTextController.text);
    setState(() {
      searchTextResultController.text = jsonEncode(
        response.pois?.map((poi) => poi.toJson()).toList(),
      );
    });
  }

  void onSearchAroundPressed() async {
    final response = await service.searchAround(Location(
      longitude: double.parse(searchAroundLongitudeController.text),
      latitude: double.parse(searchAroundLatitudeController.text),
    ));
    setState(() {
      searchAroundResultController.text = jsonEncode(
        response.pois?.map((poi) => poi.toJson()).toList(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(SearchPoiServicePage.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "关键字搜索",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  controller: searchTextController,
                  decoration: const InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(borderSide: BorderSide()),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: FilledButton(
                  onPressed: onSearchTextPressed,
                  child: const Text("运行"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("结果：", style: TextStyle(fontSize: 18)),
                    TextField(
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                      readOnly: true,
                      minLines: 5,
                      maxLines: 5,
                      controller: searchTextResultController,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  "周边搜索",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: [
                          const Text("经度", style: TextStyle(fontSize: 16)),
                          TextField(
                            textAlignVertical: TextAlignVertical.center,
                            controller: searchAroundLongitudeController,
                            decoration: const InputDecoration(
                              isDense: true,
                              border:
                              OutlineInputBorder(borderSide: BorderSide()),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        children: [
                          const Text("纬度", style: TextStyle(fontSize: 16)),
                          TextField(
                            textAlignVertical: TextAlignVertical.center,
                            controller: searchAroundLatitudeController,
                            decoration: const InputDecoration(
                              isDense: true,
                              border:
                              OutlineInputBorder(borderSide: BorderSide()),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: FilledButton(
                  onPressed: onSearchAroundPressed,
                  child: const Text("运行"),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("结果：", style: TextStyle(fontSize: 18)),
                    TextField(
                      decoration:
                          const InputDecoration(border: OutlineInputBorder()),
                      readOnly: true,
                      minLines: 5,
                      maxLines: 5,
                      controller: searchAroundResultController,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
