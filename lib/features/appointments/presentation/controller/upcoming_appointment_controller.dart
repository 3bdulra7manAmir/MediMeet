import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/datasources/upcoming_local_data_source.dart';
import '../../data/repository/upcoming_repository_impl.dart';
import '../../domain/usecase/upcoming_usecase.dart';

final upcomingLocalDataSourceProvider = Provider.autoDispose<UpComingLocalDataSource>(
  (ref) => UpComingLocalDataSourceImpl(),
);

final upcomingRepositoryProvider = Provider.autoDispose<UpComingRepoImpl>(
  (ref) => UpComingRepoImpl(localDataSource: ref.watch(upcomingLocalDataSourceProvider)),
);

final upcomingAppointmentsUsecaseProvider = Provider.autoDispose<UpComingAppointmentUsecase>(
  (ref) => UpComingAppointmentUsecase(ref.watch(upcomingRepositoryProvider)),
);

final upcomingAppointmentsProvider = FutureProvider.autoDispose((ref) async
{
  final usecase = ref.watch(upcomingAppointmentsUsecaseProvider);
  final result = await usecase();
  return result.fold((l) => throw l, (r) => r);
});