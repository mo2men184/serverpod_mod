/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: non_constant_identifier_names
// ignore_for_file: public_member_api_docs
// ignore_for_file: unused_import
// ignore_for_file: unnecessary_import
// ignore_for_file: overridden_fields
// ignore_for_file: no_leading_underscores_for_local_identifiers
// ignore_for_file: depend_on_referenced_packages

import 'package:serverpod/serverpod.dart';
import 'package:serverpod_serialization/serverpod_serialization.dart';
import 'dart:typed_data';
import 'protocol.dart';

class UserModel extends TableRow {
  @override
  String get className => 'UserModel';
  @override
  String get tableName => 'usermodel';

  static final t = UserModelTable();

  @override
  int? id;
  late String name;
  late String email;
  late String uid;
  late bool isAdmin;
  late bool isLifetime;
  late bool isVip;
  DateTime? purchasedAt;
  late int trials;
  DateTime? validUntil;

  UserModel({
    this.id,
    required this.name,
    required this.email,
    required this.uid,
    required this.isAdmin,
    required this.isLifetime,
    required this.isVip,
    this.purchasedAt,
    required this.trials,
    this.validUntil,
  });

  UserModel.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    name = _data['name']!;
    email = _data['email']!;
    uid = _data['uid']!;
    isAdmin = _data['isAdmin']!;
    isLifetime = _data['isLifetime']!;
    isVip = _data['isVip']!;
    purchasedAt = _data['purchasedAt'] != null
        ? DateTime.tryParse(_data['purchasedAt'])
        : null;
    trials = _data['trials']!;
    validUntil = _data['validUntil'] != null
        ? DateTime.tryParse(_data['validUntil'])
        : null;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'name': name,
      'email': email,
      'uid': uid,
      'isAdmin': isAdmin,
      'isLifetime': isLifetime,
      'isVip': isVip,
      'purchasedAt': purchasedAt?.toUtc().toIso8601String(),
      'trials': trials,
      'validUntil': validUntil?.toUtc().toIso8601String(),
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'name': name,
      'email': email,
      'uid': uid,
      'isAdmin': isAdmin,
      'isLifetime': isLifetime,
      'isVip': isVip,
      'purchasedAt': purchasedAt?.toUtc().toIso8601String(),
      'trials': trials,
      'validUntil': validUntil?.toUtc().toIso8601String(),
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'name': name,
      'email': email,
      'uid': uid,
      'isAdmin': isAdmin,
      'isLifetime': isLifetime,
      'isVip': isVip,
      'purchasedAt': purchasedAt?.toUtc().toIso8601String(),
      'trials': trials,
      'validUntil': validUntil?.toUtc().toIso8601String(),
    });
  }

  @override
  void setColumn(String columnName, value) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'name':
        name = value;
        return;
      case 'email':
        email = value;
        return;
      case 'uid':
        uid = value;
        return;
      case 'isAdmin':
        isAdmin = value;
        return;
      case 'isLifetime':
        isLifetime = value;
        return;
      case 'isVip':
        isVip = value;
        return;
      case 'purchasedAt':
        purchasedAt = value;
        return;
      case 'trials':
        trials = value;
        return;
      case 'validUntil':
        validUntil = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<UserModel>> find(
    Session session, {
    UserModelExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<UserModel>(
      where: where != null ? where(UserModel.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<UserModel?> findSingleRow(
    Session session, {
    UserModelExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<UserModel>(
      where: where != null ? where(UserModel.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<UserModel?> findById(Session session, int id) async {
    return session.db.findById<UserModel>(id);
  }

  static Future<int> delete(
    Session session, {
    required UserModelExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<UserModel>(
      where: where(UserModel.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    UserModel row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    UserModel row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    UserModel row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    UserModelExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<UserModel>(
      where: where != null ? where(UserModel.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef UserModelExpressionBuilder = Expression Function(UserModelTable t);

class UserModelTable extends Table {
  UserModelTable() : super(tableName: 'usermodel');

  @override
  String tableName = 'usermodel';
  final id = ColumnInt('id');
  final name = ColumnString('name');
  final email = ColumnString('email');
  final uid = ColumnString('uid');
  final isAdmin = ColumnBool('isAdmin');
  final isLifetime = ColumnBool('isLifetime');
  final isVip = ColumnBool('isVip');
  final purchasedAt = ColumnDateTime('purchasedAt');
  final trials = ColumnInt('trials');
  final validUntil = ColumnDateTime('validUntil');

  @override
  List<Column> get columns => [
        id,
        name,
        email,
        uid,
        isAdmin,
        isLifetime,
        isVip,
        purchasedAt,
        trials,
        validUntil,
      ];
}

@Deprecated('Use UserModelTable.t instead.')
UserModelTable tUserModel = UserModelTable();
