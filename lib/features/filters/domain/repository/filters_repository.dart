import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasource/filters_local_data_source.dart';
import '../../data/model/clinic_type.dart';
import '../../data/model/insurance_provider.dart';
import '../../data/model/location.dart';
import '../../data/model/rating.dart';
import '../../data/model/specialty.dart';
import '../../data/repository/filters_repository_impl.dart';

part 'filters_repository.g.dart';

@riverpod
FiltersRepository filtersRepository(Ref ref)
{
  return FiltersRepositoryImpl(
    localDataSource: ref.read(filtersLocalDataSourceProvider),
  );
}


abstract class FiltersRepository
{
  Future<List<ClinicTypeModel>> getClinicTypes();
  Future<List<InsuranceProviderModel>> getInsuranceProviders();
  Future<List<LocationFilterModel>> getLocations();
  Future<List<RatingModel>> getRatings();
  Future<List<SpecialtyModel>> getSpecialtys();
}