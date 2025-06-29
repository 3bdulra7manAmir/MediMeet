import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/insurance_provider.dart';
import '../repository/filters_repository.dart';

part 'insurance_provider_usecase.g.dart';

@riverpod
Future<List<InsuranceProviderModel>> insuranceProviderUseCase(Ref ref) async
{
  try
  {
    return await ref.read(filtersRepositoryProvider).getInsuranceProviders();
  }
  catch (e, stack)
  {
    log("Err is: $e And Stack is: $stack");
    return [InsuranceProviderModel(id: "0", title: "NULL")];
  }
}
