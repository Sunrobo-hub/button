import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const UrlApp());
}

class UrlApp extends StatelessWidget {
  const UrlApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Open URL from TextField')),
        body: const UrlForm(),
      ),
    );
  }
}

class UrlForm extends StatelessWidget {
  const UrlForm({super.key});

  _launchUrl(String url) async {
    if (url.isNotEmpty) {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        // Handle invalid URL error
        debugPrint("Could not launch $url");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController urlController = TextEditingController();

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: urlController,
            decoration: const InputDecoration(
              labelText: "Enter URL",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              _launchUrl(urlController.text);
            },
            child: const Text("Open URL"),
          ),
        ],
      ),
    );
  }
}