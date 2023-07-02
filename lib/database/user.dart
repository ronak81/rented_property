import 'package:drift/drift.dart';

class UsersData extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().named('user_name')();
  TextColumn get emailId => text().named('email_id')();
  TextColumn get password => text().named('password')();
}
