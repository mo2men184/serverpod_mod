import 'package:serverpod/serverpod.dart';

import '../generated/protocol.dart';

class Admin extends Endpoint {
  // {Admin Side}

  // Add Wallpaper to DB
  Future<String> addWallpaper(Session session, WallpaperModel wallpaper) async {
    try {
      await WallpaperModel.insert(session, wallpaper);
      return 'added';
    } catch (e) {
      return 'Server_ERR: $e';
    }
  }

  // Get Upload Description
  Future<String?> getUploadDescription(Session session, String path) async {
    try {
      var _uploadDescription =
          await session.storage.createDirectFileUploadDescription(
        storageId: 'public',
        path: path,
      );
      return _uploadDescription;
    } catch (e) {
      return null;
    }
  }

// Verify Wallpaper file
  Future<bool> verifyUpload(Session session, String path) async {
    try {
      return await session.storage.verifyDirectFileUpload(
        storageId: 'public',
        path: path,
      );
    } catch (e) {
      print(e);
      return false;
    }
  }

  Future<bool> removeFile(Session session, String path) async {
    try {
      var _req = await session.storage.deleteFile(
        storageId: 'public',
        path: path,
      );
      return true;
    } catch (e) {
      return false;
    }
  }

  Future<String> updateWallpaper(
    Session session,
    WallpaperModel wallpaperModel,
  ) async {
    try {
      var _req = WallpaperModel.update(session, wallpaperModel);
      return 'DONE: $_req';
    } catch (e) {
      return 'ERROR: $e';
    }
  }

  Future<bool> deleteWallpaper(
    Session session,
    WallpaperModel wallpaperModel,
  ) async {
    try {
      var _req = await WallpaperModel.deleteRow(
        session,
        wallpaperModel,
      );
      return _req;
    } catch (e) {
      print('ERROR: $e');
      return false;
    }
  }

  Future<bool> checkFileExist(
    Session session,
    String path,
  ) async {
    try {
      var exists = await session.storage.fileExists(
        storageId: 'public',
        path: path,
      );
      return exists;
    } catch (e) {
      return false;
    }
  }

  Future<String?> getFilePublicUrl(
    Session session,
    String path,
  ) async {
    try {
      var uri = await session.storage.getPublicUrl(
        storageId: 'public',
        path: path,
      );
      final String url = uri.toString();
      print(uri);
      return url;
    } catch (e) {
      return null;
    }
  }

  // Add Category
  Future<String> addCategory(
    Session session,
    CategoryModel categoryModel,
  ) async {
    try {
      var _req = await CategoryModel.insert(session, categoryModel)
          .then((value) => 'SUCCESS', onError: (err) => 'ERROR: $err');
      return _req;
    } catch (e) {
      return 'Server_Error: $e';
    }
  }

  // deleteCategory
  Future<bool> removeCategory(
    Session session,
    CategoryModel categoryModel,
  ) async {
    try {
      var _req = await CategoryModel.deleteRow(
        session,
        categoryModel,
      );
      return _req;
    } catch (e) {
      print('ERROR: $e');
      return false;
    }
  }

// get categories
  Future<List<CategoryModel>> getCategories(
    Session session,
  ) async {
    try {
      var _req = await CategoryModel.find(session);
      return _req;
    } catch (e) {
      print('ERROR: $e');
      return [];
    }
  }
}
