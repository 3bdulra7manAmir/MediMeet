import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/datasources/filters_datasources/specialty_local_data_source.dart';
import '../../../data/model/filters_models/specialty.dart';
import '../../../data/repository/filters_repo_impl/specialty_repository_impl.dart';
import '../../../domain/usecase/filters_usecase/specialty_usecase.dart';

part 'specialty_filter_controller.g.dart';

// DataSource Provider
@riverpod
SpecialtyLocalDataSource specialtyFilterLocalDataSource(Ref ref)
{
  return SpecialtyLocalDataSourceImpl();
}

// Repository Provider
@riverpod
SpecialtyRepositoryImpl specialtyFilterRepository(Ref ref)
{
  final localDataSource = ref.watch(specialtyFilterLocalDataSourceProvider);
  return SpecialtyRepositoryImpl(localDataSource: localDataSource);
}

// UseCase Provider
@riverpod
SpecialtyUsecase specialtyFilterUsecase(Ref ref)
{
  return SpecialtyUsecase(ref.watch(specialtyFilterRepositoryProvider));
}

// Async Data Provider
@riverpod
Future<List<SpecialtyModel>> specialtyFilter(Ref ref) async
{
  final usecase = ref.watch(specialtyFilterUsecaseProvider);
  final result = await usecase();
  return result.fold((l) => throw l, (r) => r);
}
