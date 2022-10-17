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

class WallpaperModel extends TableRow {
  @override
  String get className => 'WallpaperModel';
  @override
  String get tableName => 'wallpapermodel';

  static final t = WallpaperModelTable();

  @override
  int? id;
  late String publisher;
  late String publisherUid;
  late String uid;
  late String title;
  late String url;
  late bool isVip;
  late List<String> categories;
  late String data;

  WallpaperModel({
    this.id,
    required this.publisher,
    required this.publisherUid,
    required this.uid,
    required this.title,
    required this.url,
    required this.isVip,
    required this.categories,
    required this.data,
  });

  WallpaperModel.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    publisher = _data['publisher']!;
    publisherUid = _data['publisherUid']!;
    uid = _data['uid']!;
    title = _data['title']!;
    url = _data['url']!;
    isVip = _data['isVip']!;
    categories = _data['categories']!.cast<String>();
    data = _data['data']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'publisher': publisher,
      'publisherUid': publisherUid,
      'uid': uid,
      'title': title,
      'url': url,
      'isVip': isVip,
      'categories': categories,
      'data': data,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'publisher': publisher,
      'publisherUid': publisherUid,
      'uid': uid,
      'title': title,
      'url': url,
      'isVip': isVip,
      'categories': categories,
      'data': data,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'publisher': publisher,
      'publisherUid': publisherUid,
      'uid': uid,
      'title': title,
      'url': url,
      'isVip': isVip,
      'categories': categories,
      'data': data,
    });
  }

  @override
  void setColumn(String columnName, value) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'publisher':
        publisher = value;
        return;
      case 'publisherUid':
        publisherUid = value;
        return;
      case 'uid':
        uid = value;
        return;
      case 'title':
        title = value;
        return;
      case 'url':
        url = value;
        return;
      case 'isVip':
        isVip = value;
        return;
      case 'categories':
        categories = value;
        return;
      case 'data':
        data = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<WallpaperModel>> find(
    Session session, {
    WallpaperModelExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<WallpaperModel>(
      where: where != null ? where(WallpaperModel.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<WallpaperModel?> findSingleRow(
    Session session, {
    WallpaperModelExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<WallpaperModel>(
      where: where != null ? where(WallpaperModel.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<WallpaperModel?> findById(Session session, int id) async {
    return session.db.findById<WallpaperModel>(id);
  }

  static Future<int> delete(
    Session session, {
    required WallpaperModelExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<WallpaperModel>(
      where: where(WallpaperModel.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    WallpaperModel row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    WallpaperModel row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    WallpaperModel row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    WallpaperModelExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<WallpaperModel>(
      where: where != null ? where(WallpaperModel.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef WallpaperModelExpressionBuilder = Expression Function(
    WallpaperModelTable t);

class WallpaperModelTable extends Table {
  WallpaperModelTable() : super(tableName: 'wallpapermodel');

  @override
  String tableName = 'wallpapermodel';
  final id = ColumnInt('id');
  final publisher = ColumnString('publisher');
  final publisherUid = ColumnString('publisherUid');
  final uid = ColumnString('uid');
  final title = ColumnString('title');
  final url = ColumnString('url');
  final isVip = ColumnBool('isVip');
  final categories = ColumnSerializable('categories');
  final data = ColumnString('data');

  @override
  List<Column> get columns => [
        id,
        publisher,
        publisherUid,
        uid,
        title,
        url,
        isVip,
        categories,
        data,
      ];
}

@Deprecated('Use WallpaperModelTable.t instead.')
WallpaperModelTable tWallpaperModel = WallpaperModelTable();
