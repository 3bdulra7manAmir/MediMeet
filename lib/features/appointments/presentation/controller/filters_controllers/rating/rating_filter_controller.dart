import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../data/datasources/filters_datasources/rating_local_data_source.dart';
import '../../../../data/model/filters_models/rating.dart';
import '../../../../data/repository/filters_repo_impl/rating_repository_impl.dart';
import '../../../../domain/usecase/filters_usecase/rating_usecase.dart';

part 'rating_filter_controller.g.dart';

// DataSource Provider
@riverpod
RatingLocalDataSource ratingFilterLocalDataSource(Ref ref)
{
  return RatingLocalDataSourceImpl();
}

// Repository Provider
@riverpod
RatingRepositoryImpl ratingFilterRepository(Ref ref)
{
  final localDataSource = ref.watch(ratingFilterLocalDataSourceProvider);
  return RatingRepositoryImpl(localDataSource: localDataSource);
}

// UseCase Provider
@riverpod
RatingUsecase ratingFilterUsecase(Ref ref)
{
  return RatingUsecase(ref.watch(ratingFilterRepositoryProvider));
}

// Async Data Provider
@riverpod
Future<List<RatingModel>> ratingFilter(Ref ref) async
{
  final usecase = ref.watch(ratingFilterUsecaseProvider);
  final result = await usecase();
  return result.fold((l) => throw l, (r) => r);
}
