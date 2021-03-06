import 'dart:async';
import 'dart:convert';

import 'package:auto_route/auto_route.dart';
import 'package:base_flutter/general/blocks/notify_count_cubit/notify_count_cubit.dart';
import 'package:base_flutter/general/constants/MyColors.dart';
import 'package:base_flutter/general/utilities/routers/RouterImports.gr.dart';
import 'package:base_flutter/general/utilities/utils_functions/UtilsImports.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class GlobalNotification {
  static StreamController<Map<String, dynamic>> _onMessageStreamController =
      StreamController.broadcast();

  late FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;
  static late BuildContext context;
  static GlobalNotification instance = new GlobalNotification._();

  GlobalNotification._();

  GlobalNotification();

  setupNotification(BuildContext cxt) async {
    context = cxt;
    _flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android = new AndroidInitializationSettings("@mipmap/launcher_icon");
    var ios = new IOSInitializationSettings();
    var initSettings = new InitializationSettings(android: android, iOS: ios);
    _flutterLocalNotificationsPlugin.initialize(
      initSettings,
      onSelectNotification: flutterNotificationClick,
    );
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
        provisional: true, sound: true, alert: true);
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      messaging.getToken().then((token) {
        print(token);
      });
      messaging.setForegroundNotificationPresentationOptions(
          alert: false, badge: false, sound: false);
      messaging
          .getInitialMessage()
          .then((message) => _showLocalNotification(message));
      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        print("_____________________Message data:${message.data}");
        print(
            "_____________________notification:${message.notification?.body}");
        _showLocalNotification(message);
        _onMessageStreamController.add(message.data);
        if (int.parse(message.data["type"] ?? "0") == -1) {
          Utils.clearSavedData();
          AutoRouter.of(context).push(LoginRoute());
        }
      });
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
        print('A new onMessageOpenedApp event was published!');
        flutterNotificationClick(json.encode(message.data));
      });
      FirebaseMessaging.onBackgroundMessage(
          _firebaseMessagingBackgroundHandler);
    }
  }

  static Future<void> _firebaseMessagingBackgroundHandler(
      RemoteMessage message) async {
    print("Handling a background message: ${message.messageId}");
    flutterNotificationClick(json.encode(message.data));
  }

  StreamController<Map<String, dynamic>> get notificationSubject {
    return _onMessageStreamController;
  }

  _showLocalNotification(RemoteMessage? message) async {
    if (message == null) return;
    int count = context.read<NotifyCountCubit>().state.count + 1;
    context.read<NotifyCountCubit>().onUpdateCount(count);
    var android = AndroidNotificationDetails(
      "${DateTime.now()}",
      "${message.notification?.title}",
      "${message.notification?.body}",
      priority: Priority.high,
      importance: Importance.max,
      playSound: true,
      shortcutId: DateTime.now().toIso8601String(),
    );
    var ios = IOSNotificationDetails();
    var _platform = NotificationDetails(android: android, iOS: ios);
    _flutterLocalNotificationsPlugin.show(
        DateTime.now().microsecond,
        "${message.notification?.title}",
        "${message.notification?.body}",
        _platform,
        payload: json.encode(message.data));
  }

  static Future flutterNotificationClick(String? payload) async {
    var _data = json.decode("$payload");
    print("tttttttttt $_data");

    int type = int.parse(_data["type"] ?? "1");
    int userType = int.parse(_data["userType"] ?? "0");
    int orderId = int.parse(_data["orderId"] ?? "0");
    print("asadad ${type == 10}");
    print("orderId $orderId");

    if ((type >= 1 && type < 4) && userType == 1) {
      AutoRouter.of(context)
          .push(OrderDetailsRoute(color: MyColors.primary, id: orderId));
    } else if ((type >= 1 && type < 4) && userType == 2) {
      AutoRouter.of(context).push(
          ProviderOrderDetailsRoute(color: MyColors.primary, id: orderId));
    } else if (type == 9) {
      AutoRouter.of(context).push(CompetitionsRoute(color: MyColors.primary));
    } else if (type == 10) {
      AutoRouter.of(context).push(
        ChampionDetailsRoute(championId: orderId),
      );
      // AutoRouter.of(context).push(
      //   ChatsRoute(
      //       receiverId: _data["receiverId"],
      //       receiverName: _data["receiverName"],
      //       orderId: orderId,
      //       color: MyColors.primary),
      // );
    }
  }
}
