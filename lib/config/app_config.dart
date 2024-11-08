import 'dart:convert';

import 'package:flutter/services.dart';

enum Flavor { prod, dev, staging }

class AppConfig {
  String baseUrl = "";
  String imageUrl = "";
  String googleApiKey = "";
  String termUrl = "";
  String regulationsUrl = "";
  Flavor flavor = Flavor.dev;

  static AppConfig shared = AppConfig.create();

  factory AppConfig.create(
      {String baseUrl = "",
      String imageUrl = "",
      String googleApiKey = "",
      String termUrl = "",
      String regulationsUrl = "",
      Flavor flavor = Flavor.dev}) {
    return shared = AppConfig(
      baseUrl: baseUrl,
      imageUrl: imageUrl,
      googleApiKey: googleApiKey,
      termUrl: termUrl,
      regulationsUrl: regulationsUrl,
    );
  }

  factory AppConfig.fromJson(Map<String, dynamic> json) {
    return AppConfig(
      baseUrl: json['baseUrl'] as String,
      imageUrl: json['imageUrl'] as String,
      googleApiKey: json['googleApiKey'] as String,
      termUrl: json['termUrl'] as String,
      regulationsUrl: json['regulationsUrl'] as String,
    );
  }

  static Future loadConfig(Flavor flavor) async {
    final String configString =
        await rootBundle.loadString('lib/config/${flavor.name}.json');
    shared = AppConfig.fromJson(json.decode(configString));
  }

  AppConfig({
    required this.baseUrl,
    required this.imageUrl,
    required this.googleApiKey,
    required this.termUrl,
    required this.regulationsUrl,
    this.flavor = Flavor.dev,
  });
}
