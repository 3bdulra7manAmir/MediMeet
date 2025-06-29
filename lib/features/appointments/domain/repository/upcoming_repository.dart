import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/upcoming_local_data_source.dart';
import '../../data/model/upcoming_appointments.dart';
import '../../data/repository/upcoming_repository_impl.dart';

part 'upcoming_repository.g.dart';

abstract class UpComingRepository
{
  Future<List<UpComingModel>> getUpComingAppointments();
}

@riverpod
UpComingRepository upComingRepository(Ref ref)
{
  return UpComingRepositoryImpl(
    localDataSource: ref.read(upComingLocalDataSourceProvider),
  );
}