import 'package:dartz/dartz.dart';

import '../../../../core/services/network/api_fetch_failure.dart';
import '../../../../core/utils/usecase.dart';
import '../repository/location_repository.dart';


class LocationUsecase extends AppUsecase
{
  final LocationRepository billingRepository;
  LocationUsecase(this.billingRepository);

  @override
  Future<Either<ApiFetchFailure, dynamic>> call([param]) async
  {
    try
    {
      final result = await billingRepository.getLocationDetails();
      return Right(result);
    }
    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }


}