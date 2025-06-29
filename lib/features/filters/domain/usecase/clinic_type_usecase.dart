import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/clinic_type.dart';
import '../repository/filters_repository.dart';

part 'clinic_type_usecase.g.dart';

@riverpod
Future<List<ClinicTypeModel>> clinicTypeUseCase(Ref ref) async
{
  try
  {
    return await ref.read(filtersRepositoryProvider).getClinicTypes();
  }
  catch (e, stack)
  {
    log("Err is: $e And Stack is: $stack");
    return [ClinicTypeModel(id: "0", title: "NULL")];
  }
}
