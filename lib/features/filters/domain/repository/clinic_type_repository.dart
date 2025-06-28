import '../../data/model/clinic_type.dart';

abstract class ClinicTypeRepository
{
  Future<List<ClinicTypeModel>> getClinicTypes();
}