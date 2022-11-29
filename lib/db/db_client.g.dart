// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_client.dart';

// ignore_for_file: type=lint
class DriveRecord extends DataClass implements Insertable<DriveRecord> {
  final int id;
  final String? speedAction;
  final double? distance;
  final double? rpm;
  final double? speed;
  final double? fuel;
  final double? temperature;
  final DateTime? timeCreated;
  const DriveRecord(
      {required this.id,
      this.speedAction,
      this.distance,
      this.rpm,
      this.speed,
      this.fuel,
      this.temperature,
      this.timeCreated});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || speedAction != null) {
      map['speed_action'] = Variable<String>(speedAction);
    }
    if (!nullToAbsent || distance != null) {
      map['distance'] = Variable<double>(distance);
    }
    if (!nullToAbsent || rpm != null) {
      map['rpm'] = Variable<double>(rpm);
    }
    if (!nullToAbsent || speed != null) {
      map['speed'] = Variable<double>(speed);
    }
    if (!nullToAbsent || fuel != null) {
      map['fuel'] = Variable<double>(fuel);
    }
    if (!nullToAbsent || temperature != null) {
      map['temperature'] = Variable<double>(temperature);
    }
    if (!nullToAbsent || timeCreated != null) {
      map['time_created'] = Variable<DateTime>(timeCreated);
    }
    return map;
  }

  DriveRecordsCompanion toCompanion(bool nullToAbsent) {
    return DriveRecordsCompanion(
      id: Value(id),
      speedAction: speedAction == null && nullToAbsent
          ? const Value.absent()
          : Value(speedAction),
      distance: distance == null && nullToAbsent
          ? const Value.absent()
          : Value(distance),
      rpm: rpm == null && nullToAbsent ? const Value.absent() : Value(rpm),
      speed:
          speed == null && nullToAbsent ? const Value.absent() : Value(speed),
      fuel: fuel == null && nullToAbsent ? const Value.absent() : Value(fuel),
      temperature: temperature == null && nullToAbsent
          ? const Value.absent()
          : Value(temperature),
      timeCreated: timeCreated == null && nullToAbsent
          ? const Value.absent()
          : Value(timeCreated),
    );
  }

  factory DriveRecord.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriveRecord(
      id: serializer.fromJson<int>(json['id']),
      speedAction: serializer.fromJson<String?>(json['speed_action']),
      distance: serializer.fromJson<double?>(json['distance']),
      rpm: serializer.fromJson<double?>(json['rpm']),
      speed: serializer.fromJson<double?>(json['speed']),
      fuel: serializer.fromJson<double?>(json['fuel']),
      temperature: serializer.fromJson<double?>(json['temperature']),
      timeCreated: serializer.fromJson<DateTime?>(json['time_created']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'speed_action': serializer.toJson<String?>(speedAction),
      'distance': serializer.toJson<double?>(distance),
      'rpm': serializer.toJson<double?>(rpm),
      'speed': serializer.toJson<double?>(speed),
      'fuel': serializer.toJson<double?>(fuel),
      'temperature': serializer.toJson<double?>(temperature),
      'time_created': serializer.toJson<DateTime?>(timeCreated),
    };
  }

  DriveRecord copyWith(
          {int? id,
          Value<String?> speedAction = const Value.absent(),
          Value<double?> distance = const Value.absent(),
          Value<double?> rpm = const Value.absent(),
          Value<double?> speed = const Value.absent(),
          Value<double?> fuel = const Value.absent(),
          Value<double?> temperature = const Value.absent(),
          Value<DateTime?> timeCreated = const Value.absent()}) =>
      DriveRecord(
        id: id ?? this.id,
        speedAction: speedAction.present ? speedAction.value : this.speedAction,
        distance: distance.present ? distance.value : this.distance,
        rpm: rpm.present ? rpm.value : this.rpm,
        speed: speed.present ? speed.value : this.speed,
        fuel: fuel.present ? fuel.value : this.fuel,
        temperature: temperature.present ? temperature.value : this.temperature,
        timeCreated: timeCreated.present ? timeCreated.value : this.timeCreated,
      );
  @override
  String toString() {
    return (StringBuffer('DriveRecord(')
          ..write('id: $id, ')
          ..write('speedAction: $speedAction, ')
          ..write('distance: $distance, ')
          ..write('rpm: $rpm, ')
          ..write('speed: $speed, ')
          ..write('fuel: $fuel, ')
          ..write('temperature: $temperature, ')
          ..write('timeCreated: $timeCreated')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, speedAction, distance, rpm, speed, fuel, temperature, timeCreated);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriveRecord &&
          other.id == this.id &&
          other.speedAction == this.speedAction &&
          other.distance == this.distance &&
          other.rpm == this.rpm &&
          other.speed == this.speed &&
          other.fuel == this.fuel &&
          other.temperature == this.temperature &&
          other.timeCreated == this.timeCreated);
}

class DriveRecordsCompanion extends UpdateCompanion<DriveRecord> {
  final Value<int> id;
  final Value<String?> speedAction;
  final Value<double?> distance;
  final Value<double?> rpm;
  final Value<double?> speed;
  final Value<double?> fuel;
  final Value<double?> temperature;
  final Value<DateTime?> timeCreated;
  const DriveRecordsCompanion({
    this.id = const Value.absent(),
    this.speedAction = const Value.absent(),
    this.distance = const Value.absent(),
    this.rpm = const Value.absent(),
    this.speed = const Value.absent(),
    this.fuel = const Value.absent(),
    this.temperature = const Value.absent(),
    this.timeCreated = const Value.absent(),
  });
  DriveRecordsCompanion.insert({
    this.id = const Value.absent(),
    this.speedAction = const Value.absent(),
    this.distance = const Value.absent(),
    this.rpm = const Value.absent(),
    this.speed = const Value.absent(),
    this.fuel = const Value.absent(),
    this.temperature = const Value.absent(),
    this.timeCreated = const Value.absent(),
  });
  static Insertable<DriveRecord> custom({
    Expression<int>? id,
    Expression<String>? speedAction,
    Expression<double>? distance,
    Expression<double>? rpm,
    Expression<double>? speed,
    Expression<double>? fuel,
    Expression<double>? temperature,
    Expression<DateTime>? timeCreated,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (speedAction != null) 'speed_action': speedAction,
      if (distance != null) 'distance': distance,
      if (rpm != null) 'rpm': rpm,
      if (speed != null) 'speed': speed,
      if (fuel != null) 'fuel': fuel,
      if (temperature != null) 'temperature': temperature,
      if (timeCreated != null) 'time_created': timeCreated,
    });
  }

  DriveRecordsCompanion copyWith(
      {Value<int>? id,
      Value<String?>? speedAction,
      Value<double?>? distance,
      Value<double?>? rpm,
      Value<double?>? speed,
      Value<double?>? fuel,
      Value<double?>? temperature,
      Value<DateTime?>? timeCreated}) {
    return DriveRecordsCompanion(
      id: id ?? this.id,
      speedAction: speedAction ?? this.speedAction,
      distance: distance ?? this.distance,
      rpm: rpm ?? this.rpm,
      speed: speed ?? this.speed,
      fuel: fuel ?? this.fuel,
      temperature: temperature ?? this.temperature,
      timeCreated: timeCreated ?? this.timeCreated,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (speedAction.present) {
      map['speed_action'] = Variable<String>(speedAction.value);
    }
    if (distance.present) {
      map['distance'] = Variable<double>(distance.value);
    }
    if (rpm.present) {
      map['rpm'] = Variable<double>(rpm.value);
    }
    if (speed.present) {
      map['speed'] = Variable<double>(speed.value);
    }
    if (fuel.present) {
      map['fuel'] = Variable<double>(fuel.value);
    }
    if (temperature.present) {
      map['temperature'] = Variable<double>(temperature.value);
    }
    if (timeCreated.present) {
      map['time_created'] = Variable<DateTime>(timeCreated.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriveRecordsCompanion(')
          ..write('id: $id, ')
          ..write('speedAction: $speedAction, ')
          ..write('distance: $distance, ')
          ..write('rpm: $rpm, ')
          ..write('speed: $speed, ')
          ..write('fuel: $fuel, ')
          ..write('temperature: $temperature, ')
          ..write('timeCreated: $timeCreated')
          ..write(')'))
        .toString();
  }
}

class DriveRecords extends Table with TableInfo<DriveRecords, DriveRecord> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  DriveRecords(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      $customConstraints: 'PRIMARY KEY AUTOINCREMENT NOT NULL');
  static const VerificationMeta _speedActionMeta =
      const VerificationMeta('speedAction');
  late final GeneratedColumn<String> speedAction = GeneratedColumn<String>(
      'speed_action', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _distanceMeta =
      const VerificationMeta('distance');
  late final GeneratedColumn<double> distance = GeneratedColumn<double>(
      'distance', aliasedName, true,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _rpmMeta = const VerificationMeta('rpm');
  late final GeneratedColumn<double> rpm = GeneratedColumn<double>(
      'rpm', aliasedName, true,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _speedMeta = const VerificationMeta('speed');
  late final GeneratedColumn<double> speed = GeneratedColumn<double>(
      'speed', aliasedName, true,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _fuelMeta = const VerificationMeta('fuel');
  late final GeneratedColumn<double> fuel = GeneratedColumn<double>(
      'fuel', aliasedName, true,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _temperatureMeta =
      const VerificationMeta('temperature');
  late final GeneratedColumn<double> temperature = GeneratedColumn<double>(
      'temperature', aliasedName, true,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      $customConstraints: '');
  static const VerificationMeta _timeCreatedMeta =
      const VerificationMeta('timeCreated');
  late final GeneratedColumn<DateTime> timeCreated = GeneratedColumn<DateTime>(
      'time_created', aliasedName, true,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns =>
      [id, speedAction, distance, rpm, speed, fuel, temperature, timeCreated];
  @override
  String get aliasedName => _alias ?? 'drive_records';
  @override
  String get actualTableName => 'drive_records';
  @override
  VerificationContext validateIntegrity(Insertable<DriveRecord> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('speed_action')) {
      context.handle(
          _speedActionMeta,
          speedAction.isAcceptableOrUnknown(
              data['speed_action']!, _speedActionMeta));
    }
    if (data.containsKey('distance')) {
      context.handle(_distanceMeta,
          distance.isAcceptableOrUnknown(data['distance']!, _distanceMeta));
    }
    if (data.containsKey('rpm')) {
      context.handle(
          _rpmMeta, rpm.isAcceptableOrUnknown(data['rpm']!, _rpmMeta));
    }
    if (data.containsKey('speed')) {
      context.handle(
          _speedMeta, speed.isAcceptableOrUnknown(data['speed']!, _speedMeta));
    }
    if (data.containsKey('fuel')) {
      context.handle(
          _fuelMeta, fuel.isAcceptableOrUnknown(data['fuel']!, _fuelMeta));
    }
    if (data.containsKey('temperature')) {
      context.handle(
          _temperatureMeta,
          temperature.isAcceptableOrUnknown(
              data['temperature']!, _temperatureMeta));
    }
    if (data.containsKey('time_created')) {
      context.handle(
          _timeCreatedMeta,
          timeCreated.isAcceptableOrUnknown(
              data['time_created']!, _timeCreatedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriveRecord map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriveRecord(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      speedAction: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}speed_action']),
      distance: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}distance']),
      rpm: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}rpm']),
      speed: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}speed']),
      fuel: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}fuel']),
      temperature: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}temperature']),
      timeCreated: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}time_created']),
    );
  }

  @override
  DriveRecords createAlias(String alias) {
    return DriveRecords(attachedDatabase, alias);
  }

  @override
  List<String> get customConstraints => const [];
  @override
  bool get dontWriteConstraints => true;
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  late final DriveRecords driveRecords = DriveRecords(this);
  Selectable<DriveRecord> _getAllRecords() {
    return customSelect('SELECT * FROM drive_records',
        variables: [],
        readsFrom: {
          driveRecords,
        }).asyncMap(driveRecords.mapFromRow);
  }

  Selectable<DriveRecord> _getRecordById(int id) {
    return customSelect('SELECT * FROM drive_records WHERE id = ?1',
        variables: [
          Variable<int>(id)
        ],
        readsFrom: {
          driveRecords,
        }).asyncMap(driveRecords.mapFromRow);
  }

  Future<int> insertRecord(String? speedAction, double? distance, double? rpm,
      double? speed, double? fuel, double? temperature, DateTime? timeCreated) {
    return customInsert(
      'INSERT INTO drive_records (speed_action, distance, rpm, speed, fuel, temperature, time_created) VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7)',
      variables: [
        Variable<String>(speedAction),
        Variable<double>(distance),
        Variable<double>(rpm),
        Variable<double>(speed),
        Variable<double>(fuel),
        Variable<double>(temperature),
        Variable<DateTime>(timeCreated)
      ],
      updates: {driveRecords},
    );
  }

  Future<int> deleteRecordById(int id) {
    return customUpdate(
      'DELETE FROM drive_records WHERE id = ?1',
      variables: [Variable<int>(id)],
      updates: {driveRecords},
      updateKind: UpdateKind.delete,
    );
  }

  Future<int> updateRecord(
      String? speedAction,
      double? distance,
      double? rpm,
      double? speed,
      double? fuel,
      double? temperature,
      DateTime? timeCreated,
      int id) {
    return customUpdate(
      'UPDATE drive_records SET speed_action = ?1, distance = ?2, rpm = ?3, speed = ?4, fuel = ?5, temperature = ?6, time_created = ?7 WHERE id = ?8',
      variables: [
        Variable<String>(speedAction),
        Variable<double>(distance),
        Variable<double>(rpm),
        Variable<double>(speed),
        Variable<double>(fuel),
        Variable<double>(temperature),
        Variable<DateTime>(timeCreated),
        Variable<int>(id)
      ],
      updates: {driveRecords},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> deleteAllRecords() {
    return customUpdate(
      'DELETE FROM drive_records',
      variables: [],
      updates: {driveRecords},
      updateKind: UpdateKind.delete,
    );
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [driveRecords];
}
