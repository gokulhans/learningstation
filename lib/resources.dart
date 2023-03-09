import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Resources extends StatelessWidget {
  const Resources({super.key});

  @override
  Widget build(BuildContext context) {
    late WebViewController _controller;
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: WebView(
            initialUrl: 'https://basheerpbn.wixsite.com/csmamocollege'),
      ),
    );
  }
}
