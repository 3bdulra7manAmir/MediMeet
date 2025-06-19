// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointments_info_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$detailsLocalDataSourceHash() =>
    r'1d876daf1b418481cfa74f39db0e00bfcd611264';

/// See also [detailsLocalDataSource].
@ProviderFor(detailsLocalDataSource)
final detailsLocalDataSourceProvider =
    AutoDisposeProvider<DetailsLocalDataSource>.internal(
  detailsLocalDataSource,
  name: r'detailsLocalDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$detailsLocalDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DetailsLocalDataSourceRef
    = AutoDisposeProviderRef<DetailsLocalDataSource>;
String _$detailsRepositoryHash() => r'2db63381c2111d81b096fd74f052d40a8d7dea6d';

/// See also [detailsRepository].
@ProviderFor(detailsRepository)
final detailsRepositoryProvider = AutoDisposeProvider<DetailsRepoImpl>.internal(
  detailsRepository,
  name: r'detailsRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$detailsRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DetailsRepositoryRef = AutoDisposeProviderRef<DetailsRepoImpl>;
String _$detailsHash() => r'02bb9f1802addaaca7f37aab31ada116aa8ff371';

/// See also [details].
@ProviderFor(details)
final detailsProvider = AutoDisposeFutureProvider<List<DetailsModel>>.internal(
  details,
  name: r'detailsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$detailsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DetailsRef = AutoDisposeFutureProviderRef<List<DetailsModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
