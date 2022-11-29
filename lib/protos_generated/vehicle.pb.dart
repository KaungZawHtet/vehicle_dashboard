///
//  Generated code. Do not modify.
//  source: vehicle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'vehicle.pbenum.dart';

export 'vehicle.pbenum.dart';

class Ping extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Ping', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vehicle'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'binary')
    ..hasRequiredFields = false
  ;

  Ping._() : super();
  factory Ping({
    $core.bool? binary,
  }) {
    final _result = create();
    if (binary != null) {
      _result.binary = binary;
    }
    return _result;
  }
  factory Ping.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Ping.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Ping clone() => Ping()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Ping copyWith(void Function(Ping) updates) => super.copyWith((message) => updates(message as Ping)) as Ping; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Ping create() => Ping._();
  Ping createEmptyInstance() => create();
  static $pb.PbList<Ping> createRepeated() => $pb.PbList<Ping>();
  @$core.pragma('dart2js:noInline')
  static Ping getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Ping>(create);
  static Ping? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get binary => $_getBF(0);
  @$pb.TagNumber(1)
  set binary($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBinary() => $_has(0);
  @$pb.TagNumber(1)
  void clearBinary() => clearField(1);
}

class FuelAmount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FuelAmount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vehicle'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fuel', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  FuelAmount._() : super();
  factory FuelAmount({
    $core.double? fuel,
  }) {
    final _result = create();
    if (fuel != null) {
      _result.fuel = fuel;
    }
    return _result;
  }
  factory FuelAmount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FuelAmount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FuelAmount clone() => FuelAmount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FuelAmount copyWith(void Function(FuelAmount) updates) => super.copyWith((message) => updates(message as FuelAmount)) as FuelAmount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FuelAmount create() => FuelAmount._();
  FuelAmount createEmptyInstance() => create();
  static $pb.PbList<FuelAmount> createRepeated() => $pb.PbList<FuelAmount>();
  @$core.pragma('dart2js:noInline')
  static FuelAmount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FuelAmount>(create);
  static FuelAmount? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get fuel => $_getN(0);
  @$pb.TagNumber(1)
  set fuel($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFuel() => $_has(0);
  @$pb.TagNumber(1)
  void clearFuel() => clearField(1);
}

class SpeedAction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpeedAction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vehicle'), createEmptyInstance: create)
    ..e<SpeedType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'speedType', $pb.PbFieldType.OE, protoName: 'speedType', defaultOrMaker: SpeedType.LEVER_UP, valueOf: SpeedType.valueOf, enumValues: SpeedType.values)
    ..hasRequiredFields = false
  ;

  SpeedAction._() : super();
  factory SpeedAction({
    SpeedType? speedType,
  }) {
    final _result = create();
    if (speedType != null) {
      _result.speedType = speedType;
    }
    return _result;
  }
  factory SpeedAction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpeedAction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpeedAction clone() => SpeedAction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpeedAction copyWith(void Function(SpeedAction) updates) => super.copyWith((message) => updates(message as SpeedAction)) as SpeedAction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpeedAction create() => SpeedAction._();
  SpeedAction createEmptyInstance() => create();
  static $pb.PbList<SpeedAction> createRepeated() => $pb.PbList<SpeedAction>();
  @$core.pragma('dart2js:noInline')
  static SpeedAction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpeedAction>(create);
  static SpeedAction? _defaultInstance;

  @$pb.TagNumber(1)
  SpeedType get speedType => $_getN(0);
  @$pb.TagNumber(1)
  set speedType(SpeedType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpeedType() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpeedType() => clearField(1);
}

class NumberDataReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NumberDataReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vehicle'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rpm', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'speed', $pb.PbFieldType.OD)
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fuel', $pb.PbFieldType.OD)
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'temperature', $pb.PbFieldType.OD)
    ..a<$core.double>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'distance', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  NumberDataReply._() : super();
  factory NumberDataReply({
    $core.double? rpm,
    $core.double? speed,
    $core.double? fuel,
    $core.double? temperature,
    $core.double? distance,
  }) {
    final _result = create();
    if (rpm != null) {
      _result.rpm = rpm;
    }
    if (speed != null) {
      _result.speed = speed;
    }
    if (fuel != null) {
      _result.fuel = fuel;
    }
    if (temperature != null) {
      _result.temperature = temperature;
    }
    if (distance != null) {
      _result.distance = distance;
    }
    return _result;
  }
  factory NumberDataReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NumberDataReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NumberDataReply clone() => NumberDataReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NumberDataReply copyWith(void Function(NumberDataReply) updates) => super.copyWith((message) => updates(message as NumberDataReply)) as NumberDataReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NumberDataReply create() => NumberDataReply._();
  NumberDataReply createEmptyInstance() => create();
  static $pb.PbList<NumberDataReply> createRepeated() => $pb.PbList<NumberDataReply>();
  @$core.pragma('dart2js:noInline')
  static NumberDataReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NumberDataReply>(create);
  static NumberDataReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get rpm => $_getN(0);
  @$pb.TagNumber(1)
  set rpm($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRpm() => $_has(0);
  @$pb.TagNumber(1)
  void clearRpm() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get speed => $_getN(1);
  @$pb.TagNumber(2)
  set speed($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpeed() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpeed() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get fuel => $_getN(2);
  @$pb.TagNumber(3)
  set fuel($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFuel() => $_has(2);
  @$pb.TagNumber(3)
  void clearFuel() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get temperature => $_getN(3);
  @$pb.TagNumber(4)
  set temperature($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTemperature() => $_has(3);
  @$pb.TagNumber(4)
  void clearTemperature() => clearField(4);

  @$pb.TagNumber(5)
  $core.double get distance => $_getN(4);
  @$pb.TagNumber(5)
  set distance($core.double v) { $_setDouble(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDistance() => $_has(4);
  @$pb.TagNumber(5)
  void clearDistance() => clearField(5);
}

