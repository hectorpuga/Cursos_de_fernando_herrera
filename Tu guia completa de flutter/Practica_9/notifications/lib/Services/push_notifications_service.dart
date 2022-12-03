//SHA1: BF:53:A2:FC:21:22:F0:28:64:60:48:C3:4F:44:5B:41:0A:D1:FA:ED

import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

class PushNotificationService {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;
  static final StreamController<String> _messageStream =
      StreamController.broadcast();

  static Stream<String> get messageStream => _messageStream.stream;
  static Future _backgroundHandler(RemoteMessage message) async {
    //print('onBackgroundHandler ${message.messageId}');
    print(message.data);
    _messageStream.add(message.data['product'] ?? 'no data');
  }

  static Future _onMessageHandler(RemoteMessage message) async {
    //print('onMessageHandler ${message.messageId}');
    print(message.data);
    _messageStream.add(message.data['product'] ?? 'no data');
  }

  static Future _onMessageOpenApp(RemoteMessage message) async {
    //print('onMessageOpenApp ${message.messageId}');
    print(message.data);
    _messageStream.add(message.data['product'] ?? 'no data');
  }

  static Future initializeApp() async {
    //Push Notifications

    await Firebase.initializeApp();

    token = await FirebaseMessaging.instance.getToken();
    print(token);
    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
    FirebaseMessaging.onMessage.listen(_onMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenApp);

    //Local Notifications
  }

  static closeStreams() {
    _messageStream.close();
  }
}
