import 'dart:async';
import 'package:movieapp_200644/common/HttpHandler.dart';
import 'package:movieapp_200644/model/Media.dart';

abstract class MediaProvider {
  Future<List<Media>> fetchMedia();
}

class MovieProvider extends MediaProvider {
  HttpHandler _client = HttpHandler.get();
  @override
  Future<List<Media>> fetchMedia() {
    return _client.fetchMovies();
  }
}

class ShowProvider extends MediaProvider {
  HttpHandler _client = HttpHandler.get();
  @override
  Future<List<Media>> fetchMedia() {
    return _client.fetchShow();
  }
}
