import 'dart:convert';

import 'package:amap_webservice/amap_webservice.dart';
import 'package:flutter/material.dart';

/// IP定位页面
class GeolocateIpServicePage extends StatefulWidget {
  /// IP定位页面构造函数
  const GeolocateIpServicePage({super.key});

  /// IP定位页面标题
  static const title = 'IP定位';

  @override
  State<GeolocateIpServicePage> createState() => _GeolocateIpServicePageState();
}

class _GeolocateIpServicePageState extends State<GeolocateIpServicePage> {
  final service = AMapWebService(
    apiKey: '0e2f6cd577c7b01f2f10e8a8a4cdf153',
    secretKey: '36b5528aecd3e4aba379e1ef352820fd',
  );
  final geolocateIpController = TextEditingController();
  final geolocateIpResultController = TextEditingController();

  void onSearchTextPressed() async {
    final response = await service.geolocateIP(ip: geolocateIpController.text);
    setState(() {
      geolocateIpResultController.text = jsonEncode({
        "省份": response.province,
        "城市": response.city,
        "adcode编码": response.adcode,
        "所在城市矩形区域范围": response.rectangle,
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(GeolocateIpServicePage.title),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "IP定位（国内IPV4）",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  controller: geolocateIpController,
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
                      decoration: const InputDecoration(border: OutlineInputBorder()),
                      readOnly: true,
                      minLines: 5,
                      maxLines: 5,
                      controller: geolocateIpResultController,
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
