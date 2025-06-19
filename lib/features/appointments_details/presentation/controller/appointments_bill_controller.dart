// Bill Providers
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../data/datasources/bill_local_data_source.dart';
import '../../data/model/appointment_bill.dart';
import '../../data/repository/bill_repository_impl.dart';

part 'appointments_bill_controller.g.dart';

// Local Data Source
@riverpod
BillingLocalDataSource billLocalDataSource(Ref ref)
{
  return BillingLocalDataSourceImpl();
}

// Repository
@riverpod
BillingRepoImpl billRepository(Ref ref)
{
  final local = ref.watch(billLocalDataSourceProvider);
  return BillingRepoImpl(localDataSource: local);
}

// Async Data Provider
@riverpod
Future<List<BillingModel>> bill(Ref ref)
{
  return ref.watch(billRepositoryProvider).getBillingDetails();
}
