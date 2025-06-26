import 'package:flutter_riverpod/flutter_riverpod.dart';

final selectedChoicesProvider = StateProvider<List<String>>((ref) => ['Cardiology', 'ENT']);
