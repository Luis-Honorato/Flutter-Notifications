import 'package:firebase_notifications/utils/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool valor = false;
  bool valor_2 = false;

  void showNotification() {
    setState(() {
      valor = !valor;
      if (valor) {
        Provider.of<NotificationService>(context, listen: false)
            .showNotification(
          CustomNotification(
            id: 1,
            title: 'Não esqueca de mim!',
            body: 'Volte para o App e Verifique as informações!',
            //! esse payload é a açãoq ue acontecerá quando clicar na notificação. Será direcionada para uma página específica!
            payload: '/notification',
          ),
        );
      }
    });
  }

  void showScheduleNotification() {
    setState(() {
      valor_2 = !valor_2;
      if (valor_2) {
        Provider.of<NotificationService>(context, listen: false)
            .showNotificationScheduled(
          CustomNotification(
            id: 1,
            title: 'Não esqueca de mim!',
            body: 'Volte para o App e Verifique as informações!',
            payload: '/notification',
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 246, 212, 112),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Card(
                child: ListTile(
                  title: const Text('Notificar Agora'),
                  trailing: valor
                      ? Icon(
                          Icons.check_box,
                          color: Colors.amber.shade600,
                        )
                      : const Icon(Icons.check_box_outline_blank),
                  onTap: showNotification,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Card(
                child: ListTile(
                  title: const Text('Notificar Mais Tarde'),
                  trailing: valor_2
                      ? Icon(
                          Icons.check_box,
                          color: Colors.amber.shade600,
                        )
                      : const Icon(Icons.check_box_outline_blank),
                  onTap: showScheduleNotification,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
