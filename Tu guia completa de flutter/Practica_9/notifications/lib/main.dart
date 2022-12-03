import 'package:flutter/material.dart';
import 'package:notifications/Screens/home_screen.dart';
import 'package:notifications/Screens/message_screen.dart';
import 'package:notifications/Services/push_notifications_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PushNotificationService.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey<ScaffoldMessengerState> messegengerKey =
      GlobalKey<ScaffoldMessengerState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    PushNotificationService.messageStream.listen((message) {
      print('MyApp: $message');
      final snackBar = SnackBar(content: Text(message));
      navigatorKey.currentState?.pushNamed('message', arguments: message);

      messegengerKey.currentState?.showSnackBar(snackBar);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        navigatorKey: navigatorKey,
        scaffoldMessengerKey: messegengerKey,
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {
          'home': (_) => const HomeScreen(),
          'message': (_) => const MessageScreen()
        });
  }
}
