import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class Wallpapers extends Endpoint {
  Future<String> hello(Session session, String name) async {
    return 'Hello $name';
  }

  // Client Side
  // Get Wallpapers

  Future<List<WallpaperModel>> getWallpapers(Session session) async {
    try {
      final _wallpapers = await WallpaperModel.find(
        session,
      );
      // TEST DEBUG PRINT
      print('GET WALLPAPERS CALLED => \n' + '$_wallpapers');
      // END TEST
      return _wallpapers;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  // Get Wallpapers from search

  Future<List<WallpaperModel>> getWallpapersFromSearch(
      Session session, String keyword) async {
    List<WallpaperModel> _filteredWallpapers = [];
    try {
      final _wallpapers = await WallpaperModel.find(
        session,
      );
      _wallpapers.forEach((e) {
        if (e.data.contains(RegExp(keyword), 1)) {
          _filteredWallpapers.add(e);
        }
      });
      // TEST DEBUG PRINT
      print('GET WALLPAPERS FROM SEARCH CALLED => \n' + '$_filteredWallpapers');
      // END TEST
      return _filteredWallpapers;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }

  // Get Wallpapers from category
  Future<List<WallpaperModel>> getWallpapersFromCategory(
    Session session,
    CategoryModel categoryModel,
  ) async {
    List<WallpaperModel> _filteredWallpapers = [];
    try {
      final _wallpapers = await WallpaperModel.find(
        session,
      );
      _wallpapers.forEach((e) {
        if (e.categories.contains(categoryModel.title)) {
          _filteredWallpapers.add(e);
        }
      });
      // TEST DEBUG PRINT
      print(
          'GET WALLPAPERS FROM CATEGORY CALLED => \n' + '$_filteredWallpapers');
      // END TEST
      return _filteredWallpapers;
    } catch (e) {
      print(e.toString());
      return [];
    }
  }
  // Get Wallpapers from Favourites
}
