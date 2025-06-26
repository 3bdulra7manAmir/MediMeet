import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../data/datasources/filters_datasources/location_local_data_source.dart';
import '../../../data/model/filters_models/location.dart';
import '../../../data/repository/filters_repo_impl/location_repository_impl.dart';
import '../../../domain/usecase/filters_usecase/location_usecase.dart';


part 'location_filter_controller.g.dart';

// DataSource Provider
@riverpod
LocationFilterLocalDataSource locationFilterLocalDataSource(Ref ref)
{
  return LocationFilterLocalDataSourceImpl();
}

// Repository Provider
@riverpod
LocationFilterRepositoryImpl locationFilterRepository(Ref ref)
{
  final localDataSource = ref.watch(locationFilterLocalDataSourceProvider);
  return LocationFilterRepositoryImpl(localDataSource: localDataSource);
}

// UseCase Provider
@riverpod
LocationFilterUsecase locationFilterUsecase(Ref ref)
{
  return LocationFilterUsecase(ref.watch(locationFilterRepositoryProvider));
}

// Async Data Provider
@riverpod
Future<List<LocationFilterModel>> locationFilter(Ref ref) async
{
  final usecase = ref.watch(locationFilterUsecaseProvider);
  final result = await usecase();
  return result.fold((l) => throw l, (r) => r);
}
