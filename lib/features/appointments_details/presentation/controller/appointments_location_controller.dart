import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/location_local_data_source.dart';
import '../../data/repository/location_repository_impl.dart';
import '../../data/model/appointment_location.dart';

part 'appointments_location_controller.g.dart';


// Local Data Source
@riverpod
LocationLocalDataSource locationLocalDataSource(Ref ref)
{
  return LocationLocalDataSourceImpl();
}

// Repository
@riverpod
LocationRepoImpl locationRepository(Ref ref)
{
  final local = ref.watch(locationLocalDataSourceProvider);
  return LocationRepoImpl(localDataSource: local);
}

// Async Data Provider
@riverpod
Future<List<LocationModel>> location(Ref ref)
{
  return ref.watch(locationRepositoryProvider).getLocationDetails();
}
