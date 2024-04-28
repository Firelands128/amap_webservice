import 'package:example/pages/search_poi_service_page.dart';
import 'package:flutter/material.dart';

import 'pages/geocode_service_page.dart';

void main() {
  runApp(const App());
}

/// 主程序
class App extends StatefulWidget {
  /// 主程序构造函数
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: const ColorScheme.light(),
          disabledColor: Colors.grey,
        ),
        darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: const ColorScheme.dark(),
          disabledColor: Colors.grey[400],
        ),
        home: Scaffold(
          body: ListView(
            children: [
              Item(
                GeocodeServicePage.title,
                (_) => const GeocodeServicePage(),
              ),
              Item(
                SearchPoiServicePage.title,
                (_) => const SearchPoiServicePage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// 示例项目
class Item extends StatelessWidget {
  /// 示例标题
  final String title;

  /// 示例创建器
  final Widget Function(BuildContext) builder;

  /// 示例项目构造函数
  const Item(this.title, this.builder, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: const TextStyle(fontSize: 18)),
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: builder)),
    );
  }
}
