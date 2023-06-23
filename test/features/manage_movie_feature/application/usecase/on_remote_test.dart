// ignore_for_file: unused_local_variable

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:movie_app/core/error/error_imports.dart';
import 'package:movie_app/features/manage_movie_feature/application/application_imports.dart';
import 'package:movie_app/features/manage_movie_feature/domain/domain_imports.dart';

import '../../../../test_helper/test_helper.mocks.dart';

void main() {
  late MockRemoteRepository mockRemoteRepository;
  late OnRemote onRemote;

  setUp(() {
    mockRemoteRepository = MockRemoteRepository();
    onRemote = OnRemote(mockRemoteRepository);
  });

  group('getListMovieDayUseCase:', () {
    var movie = const Movie(
        id: 1,
        movieTitle: 'title',
        movieDescription: 'hot movie',
        movieCover: 'cover',
        movieDate: '06/05/2023',
        moviePopularity: 189);

    var listMovie = <Movie>[movie];
    final serverExcep = ServerException(message: 'Error');
    final remoteFail = RemoteFailure(serverExcep);

    test(
      'Should return a ListMovie object in SUCCESS state',
      () async {
        // Arrange
        when(mockRemoteRepository.getPopularMoviesDay())
            .thenAnswer((_) async => listMovie);

        // Act
        final expected = await onRemote.getListMovieDayUseCase();

        // Assert
        expect(expected, ListMovie.success(list: listMovie));
        verify(mockRemoteRepository.getPopularMoviesDay());
      },
    );

    test(
      'Should return a ListMovie object in FAILURE state',
      () async {
        // Arrange

        when(mockRemoteRepository.getPopularMoviesDay()).thenThrow(serverExcep);

        // Act
        final expected = await onRemote.getListMovieDayUseCase();

        // Assert

        expect(expected, ListMovie.failure(fail: remoteFail));
        verify(mockRemoteRepository.getPopularMoviesDay());
      },
    );
  });

  group('getListMovieWeekUseCase:', () {
    var movie = const Movie(
        id: 1,
        movieTitle: 'title',
        movieDescription: 'hot movie',
        movieCover: 'cover',
        movieDate: '06/05/2023',
        moviePopularity: 189);

    var listMovie = <Movie>[movie];
    final serverExcep = ServerException(message: 'Error');
    final remoteFail = RemoteFailure(serverExcep);

    test(
      'Should return a ListMovie object in SUCCESS state',
      () async {
        // Arrange
        when(mockRemoteRepository.getPopularMoviesWeek())
            .thenAnswer((_) async => listMovie);

        // Act
        final expected = await onRemote.getListMovieWeekUseCase();

        // Assert
        expect(expected, ListMovie.success(list: listMovie));
        verify(mockRemoteRepository.getPopularMoviesWeek());
      },
    );

    test(
      'Should return a ListMovie object in FAILURE state',
      () async {
        // Arrange

        when(mockRemoteRepository.getPopularMoviesWeek())
            .thenThrow(serverExcep);

        // Act
        final expected = await onRemote.getListMovieWeekUseCase();

        // Assert

        expect(expected, ListMovie.failure(fail: remoteFail));
        verify(mockRemoteRepository.getPopularMoviesWeek());
      },
    );
  });
}
