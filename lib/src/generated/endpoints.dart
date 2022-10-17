/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: public_member_api_docs
// ignore_for_file: unnecessary_import
// ignore_for_file: unused_import

import 'dart:typed_data' as typed_data;
import 'package:serverpod/serverpod.dart';

import 'protocol.dart';

import '../endpoints/admin_endpoint.dart';
import '../endpoints/user_endpoint.dart';
import '../endpoints/wallpapers_endpoint.dart';

class Endpoints extends EndpointDispatch {
  @override
  void initializeEndpoints(Server server) {
    var endpoints = <String, Endpoint>{
      'admin': Admin()..initialize(server, 'admin', null),
      'users': Users()..initialize(server, 'users', null),
      'wallpapers': Wallpapers()..initialize(server, 'wallpapers', null),
    };

    connectors['admin'] = EndpointConnector(
      name: 'admin',
      endpoint: endpoints['admin']!,
      methodConnectors: {
        'addWallpaper': MethodConnector(
          name: 'addWallpaper',
          params: {
            'wallpaper': ParameterDescription(
                name: 'wallpaper', type: WallpaperModel, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['admin'] as Admin).addWallpaper(
              session,
              params['wallpaper'],
            );
          },
        ),
        'getUploadDescription': MethodConnector(
          name: 'getUploadDescription',
          params: {
            'path': ParameterDescription(
                name: 'path', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['admin'] as Admin).getUploadDescription(
              session,
              params['path'],
            );
          },
        ),
        'verifyUpload': MethodConnector(
          name: 'verifyUpload',
          params: {
            'path': ParameterDescription(
                name: 'path', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['admin'] as Admin).verifyUpload(
              session,
              params['path'],
            );
          },
        ),
        'removeFile': MethodConnector(
          name: 'removeFile',
          params: {
            'path': ParameterDescription(
                name: 'path', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['admin'] as Admin).removeFile(
              session,
              params['path'],
            );
          },
        ),
        'updateWallpaper': MethodConnector(
          name: 'updateWallpaper',
          params: {
            'wallpaperModel': ParameterDescription(
                name: 'wallpaperModel', type: WallpaperModel, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['admin'] as Admin).updateWallpaper(
              session,
              params['wallpaperModel'],
            );
          },
        ),
        'deleteWallpaper': MethodConnector(
          name: 'deleteWallpaper',
          params: {
            'wallpaperModel': ParameterDescription(
                name: 'wallpaperModel', type: WallpaperModel, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['admin'] as Admin).deleteWallpaper(
              session,
              params['wallpaperModel'],
            );
          },
        ),
        'checkFileExist': MethodConnector(
          name: 'checkFileExist',
          params: {
            'path': ParameterDescription(
                name: 'path', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['admin'] as Admin).checkFileExist(
              session,
              params['path'],
            );
          },
        ),
        'getFilePublicUrl': MethodConnector(
          name: 'getFilePublicUrl',
          params: {
            'path': ParameterDescription(
                name: 'path', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['admin'] as Admin).getFilePublicUrl(
              session,
              params['path'],
            );
          },
        ),
        'addCategory': MethodConnector(
          name: 'addCategory',
          params: {
            'categoryModel': ParameterDescription(
                name: 'categoryModel', type: CategoryModel, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['admin'] as Admin).addCategory(
              session,
              params['categoryModel'],
            );
          },
        ),
        'removeCategory': MethodConnector(
          name: 'removeCategory',
          params: {
            'categoryModel': ParameterDescription(
                name: 'categoryModel', type: CategoryModel, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['admin'] as Admin).removeCategory(
              session,
              params['categoryModel'],
            );
          },
        ),
        'getCategories': MethodConnector(
          name: 'getCategories',
          params: {},
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['admin'] as Admin).getCategories(
              session,
            );
          },
        ),
      },
    );

    connectors['users'] = EndpointConnector(
      name: 'users',
      endpoint: endpoints['users']!,
      methodConnectors: {
        'addUser': MethodConnector(
          name: 'addUser',
          params: {
            'userModel': ParameterDescription(
                name: 'userModel', type: UserModel, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['users'] as Users).addUser(
              session,
              params['userModel'],
            );
          },
        ),
        'getUser': MethodConnector(
          name: 'getUser',
          params: {
            'uid': ParameterDescription(
                name: 'uid', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['users'] as Users).getUser(
              session,
              params['uid'],
            );
          },
        ),
        'updateUser': MethodConnector(
          name: 'updateUser',
          params: {
            'userModel': ParameterDescription(
                name: 'userModel', type: UserModel, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['users'] as Users).updateUser(
              session,
              params['userModel'],
            );
          },
        ),
      },
    );

    connectors['wallpapers'] = EndpointConnector(
      name: 'wallpapers',
      endpoint: endpoints['wallpapers']!,
      methodConnectors: {
        'hello': MethodConnector(
          name: 'hello',
          params: {
            'name': ParameterDescription(
                name: 'name', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['wallpapers'] as Wallpapers).hello(
              session,
              params['name'],
            );
          },
        ),
        'getWallpapers': MethodConnector(
          name: 'getWallpapers',
          params: {},
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['wallpapers'] as Wallpapers).getWallpapers(
              session,
            );
          },
        ),
        'getWallpapersFromSearch': MethodConnector(
          name: 'getWallpapersFromSearch',
          params: {
            'keyword': ParameterDescription(
                name: 'keyword', type: String, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['wallpapers'] as Wallpapers)
                .getWallpapersFromSearch(
              session,
              params['keyword'],
            );
          },
        ),
        'getWallpapersFromCategory': MethodConnector(
          name: 'getWallpapersFromCategory',
          params: {
            'categoryModel': ParameterDescription(
                name: 'categoryModel', type: CategoryModel, nullable: false),
          },
          call: (Session session, Map<String, dynamic> params) async {
            return (endpoints['wallpapers'] as Wallpapers)
                .getWallpapersFromCategory(
              session,
              params['categoryModel'],
            );
          },
        ),
      },
    );
  }

  @override
  void registerModules(Serverpod pod) {}
}
