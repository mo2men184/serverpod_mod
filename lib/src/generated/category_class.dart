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

class CategoryModel extends TableRow {
  @override
  String get className => 'CategoryModel';
  @override
  String get tableName => 'categorymodel';

  static final t = CategoryModelTable();

  @override
  int? id;
  late String title;

  CategoryModel({
    this.id,
    required this.title,
  });

  CategoryModel.fromSerialization(Map<String, dynamic> serialization) {
    var _data = unwrapSerializationData(serialization);
    id = _data['id'];
    title = _data['title']!;
  }

  @override
  Map<String, dynamic> serialize() {
    return wrapSerializationData({
      'id': id,
      'title': title,
    });
  }

  @override
  Map<String, dynamic> serializeForDatabase() {
    return wrapSerializationData({
      'id': id,
      'title': title,
    });
  }

  @override
  Map<String, dynamic> serializeAll() {
    return wrapSerializationData({
      'id': id,
      'title': title,
    });
  }

  @override
  void setColumn(String columnName, value) {
    switch (columnName) {
      case 'id':
        id = value;
        return;
      case 'title':
        title = value;
        return;
      default:
        throw UnimplementedError();
    }
  }

  static Future<List<CategoryModel>> find(
    Session session, {
    CategoryModelExpressionBuilder? where,
    int? limit,
    int? offset,
    Column? orderBy,
    List<Order>? orderByList,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.find<CategoryModel>(
      where: where != null ? where(CategoryModel.t) : null,
      limit: limit,
      offset: offset,
      orderBy: orderBy,
      orderByList: orderByList,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<CategoryModel?> findSingleRow(
    Session session, {
    CategoryModelExpressionBuilder? where,
    int? offset,
    Column? orderBy,
    bool orderDescending = false,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.findSingleRow<CategoryModel>(
      where: where != null ? where(CategoryModel.t) : null,
      offset: offset,
      orderBy: orderBy,
      orderDescending: orderDescending,
      useCache: useCache,
      transaction: transaction,
    );
  }

  static Future<CategoryModel?> findById(Session session, int id) async {
    return session.db.findById<CategoryModel>(id);
  }

  static Future<int> delete(
    Session session, {
    required CategoryModelExpressionBuilder where,
    Transaction? transaction,
  }) async {
    return session.db.delete<CategoryModel>(
      where: where(CategoryModel.t),
      transaction: transaction,
    );
  }

  static Future<bool> deleteRow(
    Session session,
    CategoryModel row, {
    Transaction? transaction,
  }) async {
    return session.db.deleteRow(
      row,
      transaction: transaction,
    );
  }

  static Future<bool> update(
    Session session,
    CategoryModel row, {
    Transaction? transaction,
  }) async {
    return session.db.update(
      row,
      transaction: transaction,
    );
  }

  static Future<void> insert(
    Session session,
    CategoryModel row, {
    Transaction? transaction,
  }) async {
    return session.db.insert(row, transaction: transaction);
  }

  static Future<int> count(
    Session session, {
    CategoryModelExpressionBuilder? where,
    int? limit,
    bool useCache = true,
    Transaction? transaction,
  }) async {
    return session.db.count<CategoryModel>(
      where: where != null ? where(CategoryModel.t) : null,
      limit: limit,
      useCache: useCache,
      transaction: transaction,
    );
  }
}

typedef CategoryModelExpressionBuilder = Expression Function(
    CategoryModelTable t);

class CategoryModelTable extends Table {
  CategoryModelTable() : super(tableName: 'categorymodel');

  @override
  String tableName = 'categorymodel';
  final id = ColumnInt('id');
  final title = ColumnString('title');

  @override
  List<Column> get columns => [
        id,
        title,
      ];
}

@Deprecated('Use CategoryModelTable.t instead.')
CategoryModelTable tCategoryModel = CategoryModelTable();
