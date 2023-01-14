import 'package:flutter/foundation.dart';

class APIBase {
  static String get baseURL {
    if (kReleaseMode) {
      return "https://pub.dev/api/packages/";
    } else {
      return "https://pub.dev/api/packages/";
    }
  }

  static String get popularityBaseURL {
    if (kReleaseMode) {
      return "https://pub.dev/api/search?q=&page=1&sort=popularity";
    } else {
      return "https://pub.dev/api/search?q=&page=1&sort=popularity";
    }
  }
}
