import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/specialty.dart';
import '../repository/filters_repository.dart';

part 'specialty_usecase.g.dart';

@riverpod
Future<List<SpecialtyModel>> specialtyUseCase(Ref ref) async
{
  try
  {
    return await ref.read(filtersRepositoryProvider).getSpecialtys();
  }
  catch (e, stack)
  {
    log("Err is: $e And Stack is: $stack");
    return [SpecialtyModel(id: "0", title: "NULL")];
  }
}
