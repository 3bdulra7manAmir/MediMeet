import 'package:dartz/dartz.dart';

import '../../../../core/services/network/api_fetch_failure.dart';
import '../../../../core/utils/usecase.dart';
import '../repository/bill_repository.dart';


class BillingUsecase extends AppUsecase
{
  final BillingRepository billingRepository;
  BillingUsecase(this.billingRepository);

  @override
  Future<Either<ApiFetchFailure, dynamic>> call([param]) async
  {
    try
    {
      final result = await billingRepository.getBillingDetails();
      return Right(result);
    }
    catch (e)
    {
      return Left(ApiFetchFailure()); //message: e.toString()
    }
  }


}