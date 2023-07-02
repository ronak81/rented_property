// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_db.dart';

// ignore_for_file: type=lint
class $UsersDataTable extends UsersData
    with TableInfo<$UsersDataTable, UsersDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UsersDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'user_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _emailIdMeta =
      const VerificationMeta('emailId');
  @override
  late final GeneratedColumn<String> emailId = GeneratedColumn<String>(
      'email_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _passwordMeta =
      const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, name, emailId, password];
  @override
  String get aliasedName => _alias ?? 'users_data';
  @override
  String get actualTableName => 'users_data';
  @override
  VerificationContext validateIntegrity(Insertable<UsersDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user_name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['user_name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email_id')) {
      context.handle(_emailIdMeta,
          emailId.isAcceptableOrUnknown(data['email_id']!, _emailIdMeta));
    } else if (isInserting) {
      context.missing(_emailIdMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UsersDataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UsersDataData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_name'])!,
      emailId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email_id'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
    );
  }

  @override
  $UsersDataTable createAlias(String alias) {
    return $UsersDataTable(attachedDatabase, alias);
  }
}

class UsersDataData extends DataClass implements Insertable<UsersDataData> {
  final int id;
  final String name;
  final String emailId;
  final String password;
  const UsersDataData(
      {required this.id,
      required this.name,
      required this.emailId,
      required this.password});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_name'] = Variable<String>(name);
    map['email_id'] = Variable<String>(emailId);
    map['password'] = Variable<String>(password);
    return map;
  }

  UsersDataCompanion toCompanion(bool nullToAbsent) {
    return UsersDataCompanion(
      id: Value(id),
      name: Value(name),
      emailId: Value(emailId),
      password: Value(password),
    );
  }

  factory UsersDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UsersDataData(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      emailId: serializer.fromJson<String>(json['emailId']),
      password: serializer.fromJson<String>(json['password']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'emailId': serializer.toJson<String>(emailId),
      'password': serializer.toJson<String>(password),
    };
  }

  UsersDataData copyWith(
          {int? id, String? name, String? emailId, String? password}) =>
      UsersDataData(
        id: id ?? this.id,
        name: name ?? this.name,
        emailId: emailId ?? this.emailId,
        password: password ?? this.password,
      );
  @override
  String toString() {
    return (StringBuffer('UsersDataData(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('emailId: $emailId, ')
          ..write('password: $password')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name, emailId, password);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UsersDataData &&
          other.id == this.id &&
          other.name == this.name &&
          other.emailId == this.emailId &&
          other.password == this.password);
}

class UsersDataCompanion extends UpdateCompanion<UsersDataData> {
  final Value<int> id;
  final Value<String> name;
  final Value<String> emailId;
  final Value<String> password;
  const UsersDataCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.emailId = const Value.absent(),
    this.password = const Value.absent(),
  });
  UsersDataCompanion.insert({
    this.id = const Value.absent(),
    required String name,
    required String emailId,
    required String password,
  })  : name = Value(name),
        emailId = Value(emailId),
        password = Value(password);
  static Insertable<UsersDataData> custom({
    Expression<int>? id,
    Expression<String>? name,
    Expression<String>? emailId,
    Expression<String>? password,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'user_name': name,
      if (emailId != null) 'email_id': emailId,
      if (password != null) 'password': password,
    });
  }

  UsersDataCompanion copyWith(
      {Value<int>? id,
      Value<String>? name,
      Value<String>? emailId,
      Value<String>? password}) {
    return UsersDataCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      emailId: emailId ?? this.emailId,
      password: password ?? this.password,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['user_name'] = Variable<String>(name.value);
    }
    if (emailId.present) {
      map['email_id'] = Variable<String>(emailId.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UsersDataCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('emailId: $emailId, ')
          ..write('password: $password')
          ..write(')'))
        .toString();
  }
}

class $UserPropertiesTable extends UserProperties
    with TableInfo<$UserPropertiesTable, UserProperty> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserPropertiesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, description];
  @override
  String get aliasedName => _alias ?? 'user_properties';
  @override
  String get actualTableName => 'user_properties';
  @override
  VerificationContext validateIntegrity(Insertable<UserProperty> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UserProperty map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserProperty(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description'])!,
    );
  }

  @override
  $UserPropertiesTable createAlias(String alias) {
    return $UserPropertiesTable(attachedDatabase, alias);
  }
}

class UserProperty extends DataClass implements Insertable<UserProperty> {
  final int id;
  final String description;
  const UserProperty({required this.id, required this.description});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['description'] = Variable<String>(description);
    return map;
  }

  UserPropertiesCompanion toCompanion(bool nullToAbsent) {
    return UserPropertiesCompanion(
      id: Value(id),
      description: Value(description),
    );
  }

  factory UserProperty.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserProperty(
      id: serializer.fromJson<int>(json['id']),
      description: serializer.fromJson<String>(json['description']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'description': serializer.toJson<String>(description),
    };
  }

  UserProperty copyWith({int? id, String? description}) => UserProperty(
        id: id ?? this.id,
        description: description ?? this.description,
      );
  @override
  String toString() {
    return (StringBuffer('UserProperty(')
          ..write('id: $id, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, description);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserProperty &&
          other.id == this.id &&
          other.description == this.description);
}

class UserPropertiesCompanion extends UpdateCompanion<UserProperty> {
  final Value<int> id;
  final Value<String> description;
  const UserPropertiesCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
  });
  UserPropertiesCompanion.insert({
    this.id = const Value.absent(),
    required String description,
  }) : description = Value(description);
  static Insertable<UserProperty> custom({
    Expression<int>? id,
    Expression<String>? description,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
    });
  }

  UserPropertiesCompanion copyWith(
      {Value<int>? id, Value<String>? description}) {
    return UserPropertiesCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserPropertiesCompanion(')
          ..write('id: $id, ')
          ..write('description: $description')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  late final $UsersDataTable usersData = $UsersDataTable(this);
  late final $UserPropertiesTable userProperties = $UserPropertiesTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [usersData, userProperties];
}
