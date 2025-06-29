import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/past_local_data_source.dart';
import '../../data/model/past_appointments.dart';
import '../../data/repository/past_repository_impl.dart';

part 'past_repository.g.dart';

abstract class PastRepository
{
  Future<List<PastModel>> getPastAppointments();
}

@riverpod
PastRepository pastRepository(Ref ref)
{
  return PastRepositoryImpl(
    localDataSource: ref.read(pastLocalDataSourceProvider),
  );
}