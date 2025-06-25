import '../../../data/model/filters_models/clinic_type.dart';

abstract class ClinicTypeRepository
{
  Future<List<ClinicTypeModel>> getClinicTypes();
}