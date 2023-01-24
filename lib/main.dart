import 'package:firebase_notifications/app.dart';
import 'package:firebase_notifications/utils/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiProvider(
      providers: [
        Provider<NotificationService>(
          create: ((context) => NotificationService()),
        ),
      ],
      child: const App(),
    ),
  );
}
