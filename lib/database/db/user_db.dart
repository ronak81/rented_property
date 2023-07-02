import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:find_home/database/rented_property.dart';

import 'package:find_home/database/user.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

part 'user_db.g.dart';

LazyDatabase _openConncetion() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(path.join(dbFolder.path, 'users.sqlite'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [UsersData, UserProperties])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConncetion());
  @override
  int get schemaVersion => 1;
}
