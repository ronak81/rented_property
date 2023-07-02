import 'package:drift/drift.dart';

@DataClassName('UserProperty')
class UserProperties extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get description => text()();
}
