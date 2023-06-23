// Mocks generated by Mockito 5.4.0 from annotations
// in movie_app/test/test_helper/test_helper.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:mockito/mockito.dart' as _i1;
import 'package:movie_app/features/manage_movie_feature/application/repositories/local_database_repository.dart'
    as _i5;
import 'package:movie_app/features/manage_movie_feature/application/repositories/remote_repository.dart'
    as _i2;
import 'package:movie_app/features/manage_movie_feature/infrastructure/infrastructure_imports.dart'
    as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [RemoteRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockRemoteRepository extends _i1.Mock implements _i2.RemoteRepository {
  @override
  _i3.Future<List<_i4.Movie>> getPopularMoviesDay() => (super.noSuchMethod(
        Invocation.method(
          #getPopularMoviesDay,
          [],
        ),
        returnValue: _i3.Future<List<_i4.Movie>>.value(<_i4.Movie>[]),
        returnValueForMissingStub:
            _i3.Future<List<_i4.Movie>>.value(<_i4.Movie>[]),
      ) as _i3.Future<List<_i4.Movie>>);
  @override
  _i3.Future<List<_i4.Movie>> getPopularMoviesWeek() => (super.noSuchMethod(
        Invocation.method(
          #getPopularMoviesWeek,
          [],
        ),
        returnValue: _i3.Future<List<_i4.Movie>>.value(<_i4.Movie>[]),
        returnValueForMissingStub:
            _i3.Future<List<_i4.Movie>>.value(<_i4.Movie>[]),
      ) as _i3.Future<List<_i4.Movie>>);
}

/// A class which mocks [LocalDataBaseRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockLocalDataBaseRepository extends _i1.Mock
    implements _i5.LocalDataBaseRepository {
  @override
  _i3.Stream<List<_i4.Movie>> watchAllMovies() => (super.noSuchMethod(
        Invocation.method(
          #watchAllMovies,
          [],
        ),
        returnValue: _i3.Stream<List<_i4.Movie>>.empty(),
        returnValueForMissingStub: _i3.Stream<List<_i4.Movie>>.empty(),
      ) as _i3.Stream<List<_i4.Movie>>);
  @override
  _i3.Future<void> saveMovie(_i4.Movie? movie) => (super.noSuchMethod(
        Invocation.method(
          #saveMovie,
          [movie],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
  @override
  _i3.Future<void> deleteMovie(_i4.Movie? movie) => (super.noSuchMethod(
        Invocation.method(
          #deleteMovie,
          [movie],
        ),
        returnValue: _i3.Future<void>.value(),
        returnValueForMissingStub: _i3.Future<void>.value(),
      ) as _i3.Future<void>);
}
