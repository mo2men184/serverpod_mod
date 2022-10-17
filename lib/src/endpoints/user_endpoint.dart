import '../../src/generated/user_class.dart';
import 'package:serverpod/serverpod.dart';

class Users extends Endpoint {
  Future<String> addUser(
    Session session,
    UserModel userModel,
  ) async {
    try {
      String _req = await UserModel.insert(session, userModel).then((value) {
        return 'SUCCESS';
      }, onError: (err) {
        return 'Error: $err';
      });
      return _req;
    } catch (e) {
      return 'SERVER_ERROR: $e';
    }
  }

  Future<UserModel?> getUser(
    Session session,
    String uid,
  ) async {
    UserModel? _userModel;
    try {
      _userModel = (await UserModel.findSingleRow(
        session,
        where: (t) => t.uid.equals(uid),
      ));
      return _userModel;
    } catch (e) {
      print('ERROR: $e');
      return null;
    }
  }

  Future<bool> updateUser(
    Session session,
    UserModel userModel,
  ) async {
    try {
      var _req = await UserModel.update(
        session,
        userModel,
      ).then((value) => value);
      return _req;
    } catch (e) {
      print('ERROR: $e');
      return false;
    }
  }
}
