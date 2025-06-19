// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointments_location_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$locationLocalDataSourceHash() =>
    r'cc3337050a12cf6da76b1229e487ce256686bb75';

/// See also [locationLocalDataSource].
@ProviderFor(locationLocalDataSource)
final locationLocalDataSourceProvider =
    AutoDisposeProvider<LocationLocalDataSource>.internal(
  locationLocalDataSource,
  name: r'locationLocalDataSourceProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$locationLocalDataSourceHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LocationLocalDataSourceRef
    = AutoDisposeProviderRef<LocationLocalDataSource>;
String _$locationRepositoryHash() =>
    r'd237765b80b5899173ba89ef8b2751d547ec2a57';

/// See also [locationRepository].
@ProviderFor(locationRepository)
final locationRepositoryProvider =
    AutoDisposeProvider<LocationRepoImpl>.internal(
  locationRepository,
  name: r'locationRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$locationRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LocationRepositoryRef = AutoDisposeProviderRef<LocationRepoImpl>;
String _$locationHash() => r'968eea949f5544eb0f005c24970f3b69398cc682';

/// See also [location].
@ProviderFor(location)
final locationProvider =
    AutoDisposeFutureProvider<List<LocationModel>>.internal(
  location,
  name: r'locationProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$locationHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef LocationRef = AutoDisposeFutureProviderRef<List<LocationModel>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
