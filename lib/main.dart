import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:medical_appointments/main_app.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: MedicalAppointment()));
}

