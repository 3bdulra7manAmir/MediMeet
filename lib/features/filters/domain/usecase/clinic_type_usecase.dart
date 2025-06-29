import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/model/clinic_type.dart';
import '../repository/filters_repository.dart';

part 'clinic_type_usecase.g.dart';

@riverpod
Future<List<ClinicTypeModel>> clinicTypeUseCase(Ref ref)
{
  return ref.read(filtersRepositoryProvider).getClinicTypes();
}
