import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewInitializer extends StatefulWidget {
  const WebViewInitializer({Key? key}) : super(key: key);

  @override
  State<WebViewInitializer> createState() => _WebViewInitializerState();
}

class _WebViewInitializerState extends State<WebViewInitializer> {
  final controller = WebViewController()
    ..clearCache()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(Uri.parse('https://dashboard.winedge.io'));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: WebViewWidget(controller: controller)),
      // body: Placeholder(),
    );
  }
}
