import 'package:dartz/dartz.dart';

import '../../../../../core/services/network/api_fetch_failure.dart';
import '../../../../../core/utils/usecase.dart';
import '../../repository/filters_repo/insurance_provider_repository.dart';


class InsuranceProviderUsecase extends AppUsecase
{
  final InsuranceProviderRepository insuranceProviderRepository;
  InsuranceProviderUsecase(this.insuranceProviderRepository);

  @override
  Future<Either<ApiFetchFailure, dynamic>> call([param]) async
  {
    try
    {
      final result = await insuranceProviderRepository.getInsuranceProviders();
      return Right(result);
    }
    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }
}