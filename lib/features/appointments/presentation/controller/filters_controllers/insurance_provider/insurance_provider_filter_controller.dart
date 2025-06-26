import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../data/datasources/filters_datasources/insurance_provider_local_data_source.dart';
import '../../../../data/model/filters_models/insurance_provider.dart';
import '../../../../data/repository/filters_repo_impl/insurance_provider_repository_impl.dart';
import '../../../../domain/usecase/filters_usecase/insurance_provider_usecase.dart';

part 'insurance_provider_filter_controller.g.dart';

// DataSource Provider
@riverpod
InsuranceProviderLocalDataSource insuranceProviderFilterLocalDataSource(Ref ref)
{
  return InsuranceProviderLocalDataSourceImpl();
}

// Repository Provider
@riverpod
InsuranceProviderRepositoryImpl insuranceProviderFilterRepository(Ref ref)
{
  final localDataSource = ref.watch(insuranceProviderFilterLocalDataSourceProvider);
  return InsuranceProviderRepositoryImpl(localDataSource: localDataSource);
}

// UseCase Provider
@riverpod
InsuranceProviderUsecase insuranceProviderFilterUsecase(Ref ref)
{
  return InsuranceProviderUsecase(ref.watch(insuranceProviderFilterRepositoryProvider));
}

// Async Data Provider
@riverpod
Future<List<InsuranceProviderModel>> insuranceProviderFilter(Ref ref) async
{
  final usecase = ref.watch(insuranceProviderFilterUsecaseProvider);
  final result = await usecase();
  return result.fold((l) => throw l, (r) => r);
}
