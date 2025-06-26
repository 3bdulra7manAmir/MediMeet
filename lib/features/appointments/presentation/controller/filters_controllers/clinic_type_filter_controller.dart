import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/datasources/filters_datasources/clinic_type_local_data_source.dart';
import '../../../data/model/filters_models/clinic_type.dart';
import '../../../data/repository/filters_repo_impl/clinic_type_repository_impl.dart';
import '../../../domain/usecase/filters_usecase/clinic_type_usecase.dart';

part 'clinic_type_filter_controller.g.dart';

// DataSource Provider
@riverpod
ClinicTypeLocalDataSource clinicTypeFilterLocalDataSource(Ref ref)
{
  return ClinicTypeLocalDataSourceImpl();
}

// Repository Provider
@riverpod
ClinicTypeRepositoryImpl clinicTypeFilterRepository(Ref ref)
{
  final localDataSource = ref.watch(clinicTypeFilterLocalDataSourceProvider);
  return ClinicTypeRepositoryImpl(localDataSource: localDataSource);
}

// UseCase Provider
@riverpod
ClinicTypeUsecase clinicTypeFilterUsecase(Ref ref)
{
  return ClinicTypeUsecase(ref.watch(clinicTypeFilterRepositoryProvider));
}

// Async Data Provider
@riverpod
Future<List<ClinicTypeModel>> clinicTypeFilter(Ref ref) async
{
  final usecase = ref.watch(clinicTypeFilterUsecaseProvider);
  final result = await usecase();
  return result.fold((l) => throw l, (r) => r);
}
