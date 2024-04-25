import 'dart:convert';

import 'package:amap_webservice/amap_webservice.dart';
import 'package:flutter/material.dart';

/// 地理/逆地理编码页面
class GeocodeServicePage extends StatefulWidget {
  /// 地理/逆地理编码页面构造函数
  const GeocodeServicePage({super.key});

  /// 地理/逆地理编码页面标题
  static const title = '地理/逆地理编码';

  @override
  State<GeocodeServicePage> createState() => _GeocodeServicePageState();
}

class _GeocodeServicePageState extends State<GeocodeServicePage> {
  final service = WebService(
    apiKey: '0e2f6cd577c7b01f2f10e8a8a4cdf153',
    secretKey: '36b5528aecd3e4aba379e1ef352820fd',
  );
  final geoTextController = TextEditingController();
  final geoResultController = TextEditingController();
  final reGeoLongitudeTextController = TextEditingController();
  final reGeoLatitudeTextController = TextEditingController();
  final reGeoResultController = TextEditingController();

  void onGeocodePressed() async {
    final response = await service.geocode(geoTextController.text);
    setState(() {
      geoResultController.text = jsonEncode(response.geocodes?.first.toJson());
    });
  }

  void onReGeocodePressed() async {
    final response = await service.reGeocode(Location(
      longitude: double.parse(reGeoLongitudeTextController.text),
      latitude: double.parse(reGeoLatitudeTextController.text),
    ));
    setState(() {
      reGeoResultController.text = jsonEncode(response.reGeocode?.toJson());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(GeocodeServicePage.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "地理编码",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  controller: geoTextController,
                  decoration: const InputDecoration(
                    isDense: true,
                    border: OutlineInputBorder(borderSide: BorderSide()),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: FilledButton(
                  onPressed: onGeocodePressed,
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
                      controller: geoResultController,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: const Text(
                  "逆地理编码",
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
                            controller: reGeoLongitudeTextController,
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
                            controller: reGeoLatitudeTextController,
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
                  onPressed: onReGeocodePressed,
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
                      controller: reGeoResultController,
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
