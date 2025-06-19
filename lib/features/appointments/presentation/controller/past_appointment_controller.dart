import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/datasources/past_local_data_source.dart';
import '../../data/repository/past_repository_impl.dart';
import '../../domain/usecase/past_usecase.dart';


// DataSources
final pastLocalDataSourceProvider = Provider.autoDispose<PastLocalDataSource>(
  (ref) => PastLocalDataSourceImpl(),
);

// Repositories
final pastRepositoryProvider = Provider.autoDispose<PastRepoImpl>(
  (ref) => PastRepoImpl(localDataSource: ref.watch(pastLocalDataSourceProvider)),
);

// UseCases
final pastAppointmentsUsecaseProvider = Provider.autoDispose<PastAppointmentUsecase>(
  (ref) => PastAppointmentUsecase(ref.watch(pastRepositoryProvider)),
);


// Async Data Providers
final pastAppointmentsProvider = FutureProvider.autoDispose((ref) async
{
  final usecase = ref.watch(pastAppointmentsUsecaseProvider);
  final result = await usecase();
  return result.fold((l) => throw l, (r) => r);
});

