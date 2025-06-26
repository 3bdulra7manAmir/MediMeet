import '../../../domain/repository/filters_repo/clinic_type_repository.dart';
import '../../datasources/filters_datasources/clinic_type_local_data_source.dart';
import '../../model/filters_models/clinic_type.dart';

class ClinicTypeRepositoryImpl implements ClinicTypeRepository
{
  final ClinicTypeLocalDataSource localDataSource;
  const ClinicTypeRepositoryImpl({required this.localDataSource});

  @override
  Future<List<ClinicTypeModel>> getClinicTypes() async
  {
    try
    {
      return await localDataSource.getClinicTypes();
    }
    catch (e)
    {
      throw Exception('Failed to get Clinic Type: $e');
    }
  }
}