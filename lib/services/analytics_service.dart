import 'package:firebase_analytics/firebase_analytics.dart';

class AnalyticsService {
  FirebaseAnalytics _analytics = FirebaseAnalytics.instance;

  Future<void> logLogin() async {
    await _analytics.logLogin();
  }

  Future<void> logSearch(String keyword) async {
    await _analytics.logSearch(searchTerm: keyword);
  }

  Future<void> logSearchEvent(String keyword) async {
    await _analytics.logEvent(name: "search", parameters: {
      "name": keyword,
    });
  }
}
