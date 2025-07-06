// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$notesHash() => r'e02a5c2bc0204f266310fa57f4e4d5f3b2c88bea';

/// See also [notes].
@ProviderFor(notes)
final notesProvider = AutoDisposeFutureProvider<List<Note>>.internal(
  notes,
  name: r'notesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$notesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef NotesRef = AutoDisposeFutureProviderRef<List<Note>>;
String _$counterHash() => r'b1d0b369976010cb499b4f1959016b4655b84040';

/// See also [counter].
@ProviderFor(counter)
final counterProvider = AutoDisposeStreamProvider<int>.internal(
  counter,
  name: r'counterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$counterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef CounterRef = AutoDisposeStreamProviderRef<int>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
