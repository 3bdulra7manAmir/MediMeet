// import 'dart:convert';
// import 'package:flutter/services.dart';
// import 'package:medical_appointments/features/appointments/domain/entity/upcoming_appointments_entity.dart';

// abstract class UpComingLocalDataSource
// {
//   Future<ListupComingEntity>> getNotifications();
// }

// class UpComingLocalDataSourceImpl implements UpComingLocalDataSource
// {
//   @override
//   Future<ListupComingEntity>> getNotifications() async
//   {
//     try
//     {
//       await Future.delayed(const Duration(seconds: 3));
//       final String jsonString = await rootBundle.loadString('assets/json/notifications_screen.json');
//       final Map<String, dynamic> jsonData = json.decode(jsonString);
//       final List<dynamic> notificationsJson = jsonData['notifications'] ?? [];
//       return notificationsJson.map((notification) => UpComingEntity.fromJson(notification)).toList();
//     }
//     catch (e)
//     {
//       throw Exception('Failed to load notifications: $e');
//     }
//   }
// }
