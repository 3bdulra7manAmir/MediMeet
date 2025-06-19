// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointments_bill_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$billLocalDataSourceHash() =>
    r'7482a8374abc016e45902903083a82ebc080e583';

/// See also [billLocalDataSource].
@ProviderFor(billLocalDataSource)
final billLocalDataSourceProvider =
    AutoDisposeProvider<BillingLocalDataSource>.internal(
  billLocalDataSource,
  name: r'billLocalDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$billLocalDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BillLocalDataSourceRef = AutoDisposeProviderRef<BillingLocalDataSource>;
String _$billRepositoryHash() => r'96070e1a1d693ebaa74c1fc9bbca0b902eca8641';

/// See also [billRepository].
@ProviderFor(billRepository)
final billRepositoryProvider = AutoDisposeProvider<BillingRepoImpl>.internal(
  billRepository,
  name: r'billRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$billRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BillRepositoryRef = AutoDisposeProviderRef<BillingRepoImpl>;
String _$billHash() => r'd6bbe07c5fd736766850f0ed610cc95b42ac367a';

/// See also [bill].
@ProviderFor(bill)
final billProvider = AutoDisposeFutureProvider<List<BillingModel>>.internal(
  bill,
  name: r'billProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$billHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef BillRef = AutoDisposeFutureProviderRef<List<BillingModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
