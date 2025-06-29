import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/location.dart';
import '../repository/filters_repository.dart';

part 'location_usecase.g.dart';

@riverpod
Future<List<LocationFilterModel>> locationFilterUseCase(Ref ref) async
{
  try
  {
    return await ref.read(filtersRepositoryProvider).getLocations();
  }
  catch (e, stack)
  {
    log("Err is: $e And Stack is: $stack");
    return [LocationFilterModel(id: "0", title: "NULL")];
  }
}
