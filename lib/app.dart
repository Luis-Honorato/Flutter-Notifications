import 'package:firebase_notifications/utils/notification_service.dart';
import 'package:firebase_notifications/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
    checkNotification();
  }

  checkNotification() async {
    await Provider.of<NotificationService>(context, listen: false)
        .checkForNotifications();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Firebase Notifications',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      routes: Routes.list,
      initialRoute: Routes.initialRoute,
      navigatorKey: Routes.navigatorKey,
    );
  }
}
