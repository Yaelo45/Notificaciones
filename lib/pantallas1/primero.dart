import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:movilsmarth/pantallas1/segundo.dart';
import "package:http/http.dart" as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NotificationServices notificationServices = NotificationServices();
  @override
  void initState() {
    super.initState();
    notificationServices.requestNotificationPermission();
    notificationServices.firebaseInit();
    notificationServices.getDeviceToken().then((value) {
      print("Device token");
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("notificaciones"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            {
              notificationServices.getDeviceToken().then((value) async {
                var movil =
                    "cvy0un0qStmF4Sw_kYywkC:APA91bG8lXJ06nFNxIq8L1kPKw_yvJLkytd9UuH8-Ymw19Yh3L0qLJQqE_2AQYsbWfI8SbH71ufwBrQjc35-cc-vxID6Z79JirOYBeh7G9pX5MtyGPfyeSTmuLbf-tG-x2WJBoxdN1T5";
                var wear =
                    "ckEeCStESpmtdAXBjKJG9w:APA91bEzQAssuzLI9Yaz_KzsD6yLxz2kcS0wHxp_RRsPLWQqpepEdik_zsurlwTipYwg4W4JQ8CcZbPsmbq9SMXqrhYzdqIqpVekRJDVc3cCAXhex9TMoTNCQrXMDpZB0OD4xne3DGkB";
                var data = {
                  "to": wear,
                  "priority": "high",
                  "notification": {
                    "title": "Hola",
                    "body": "Alexis Yael",
                  },
                  "data": {"type": "msj", "id": "123456"}
                };
                await http.post(
                    Uri.parse("https://fcm.googleapis.com/fcm/send"),
                    body: jsonEncode(data),
                    headers: {
                      "Content-Type": "application/json; charset=UTF-8",
                      "Authorization":
                          "key=AAAAwl0wuQs:APA91bGDqE8TgSM2LZGPfpOHkqEcpG5Cr9wz7c4RQ8ynUxxP7Ph9mOvwWzfiGoGgS_c5pg5Ph0eqxEGAtbHQnFeJvZX6Bv3hB2MdKYfo4FJ1XKKTZnz3aJVJuMLf93wbmGlc4QseMsM1"
                    });
              });
            }
          },
          child: const Text('Enviar'),
        ),
      ),
    );
  }
}
