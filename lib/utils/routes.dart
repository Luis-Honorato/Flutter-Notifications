import 'package:firebase_notifications/pages/home_page.dart';
import 'package:firebase_notifications/pages/notification_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static Map<String, Widget Function(BuildContext)> list =
      <String, WidgetBuilder>{
    '/': (context) => const HomePage(),
    '/notification': (context) => const NotificationPage(),
  };

  static String initialRoute = '/';

  static GlobalKey<NavigatorState>? navigatorKey = GlobalKey<NavigatorState>();
}
