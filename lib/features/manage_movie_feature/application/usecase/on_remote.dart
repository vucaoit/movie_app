import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/error/error_imports.dart';
import '../../domain/domain_imports.dart';
import '../application_imports.dart';

class OnRemote {
  final RemoteRepository remoteRepo;

  OnRemote(this.remoteRepo);

  Future<ListMovie> getListMovieDayUseCase() async {
    try {
      final result = await remoteRepo.getPopularMoviesDay();
      return (ListMovie.success(list: result));
    } catch (e) {
      return (ListMovie.failure(fail: RemoteFailure(e as ServerException)));
    }
  }

  Future<ListMovie> getListMovieWeekUseCase() async {
    try {
      final result = await remoteRepo.getPopularMoviesWeek();
      return (ListMovie.success(list: result));
    } catch (e) {
      return (ListMovie.failure(fail: RemoteFailure(e as ServerException)));
    }
  }
}

final onRemoteProvider = Provider<OnRemote>((ref) {
  final repo = ref.watch(remoteRepositoryProvider);
  return OnRemote(repo);
});
