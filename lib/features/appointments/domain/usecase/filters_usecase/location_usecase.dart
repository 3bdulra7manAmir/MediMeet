import 'package:dartz/dartz.dart';

import '../../../../../core/services/network/api_fetch_failure.dart';
import '../../../../../core/utils/usecase.dart';
import '../../repository/filters_repo/location_repository.dart';


class LocationFilterUsecase extends AppUsecase
{
  final LocationFilterRepository locationFilterRepository;
  LocationFilterUsecase(this.locationFilterRepository);

  @override
  Future<Either<ApiFetchFailure, dynamic>> call([param]) async
  {
    try
    {
      final result = await locationFilterRepository.getLocations();
      return Right(result);
    }
    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }
}