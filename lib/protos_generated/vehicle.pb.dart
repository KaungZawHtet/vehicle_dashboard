///
//  Generated code. Do not modify.
//  source: vehicle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class DisplayDataRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DisplayDataRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vehicle'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'request')
    ..hasRequiredFields = false
  ;

  DisplayDataRequest._() : super();
  factory DisplayDataRequest({
    $core.bool? request,
  }) {
    final _result = create();
    if (request != null) {
      _result.request = request;
    }
    return _result;
  }
  factory DisplayDataRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DisplayDataRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DisplayDataRequest clone() => DisplayDataRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DisplayDataRequest copyWith(void Function(DisplayDataRequest) updates) => super.copyWith((message) => updates(message as DisplayDataRequest)) as DisplayDataRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DisplayDataRequest create() => DisplayDataRequest._();
  DisplayDataRequest createEmptyInstance() => create();
  static $pb.PbList<DisplayDataRequest> createRepeated() => $pb.PbList<DisplayDataRequest>();
  @$core.pragma('dart2js:noInline')
  static DisplayDataRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DisplayDataRequest>(create);
  static DisplayDataRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get request => $_getBF(0);
  @$pb.TagNumber(1)
  set request($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearRequest() => clearField(1);
}

class NumberDataReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NumberDataReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vehicle'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rpm', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'speed', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fuel', $pb.PbFieldType.O3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'temperature', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  NumberDataReply._() : super();
  factory NumberDataReply({
    $core.int? rpm,
    $core.int? speed,
    $core.int? fuel,
    $core.int? temperature,
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
  $core.int get rpm => $_getIZ(0);
  @$pb.TagNumber(1)
  set rpm($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRpm() => $_has(0);
  @$pb.TagNumber(1)
  void clearRpm() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get speed => $_getIZ(1);
  @$pb.TagNumber(2)
  set speed($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSpeed() => $_has(1);
  @$pb.TagNumber(2)
  void clearSpeed() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get fuel => $_getIZ(2);
  @$pb.TagNumber(3)
  set fuel($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFuel() => $_has(2);
  @$pb.TagNumber(3)
  void clearFuel() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get temperature => $_getIZ(3);
  @$pb.TagNumber(4)
  set temperature($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTemperature() => $_has(3);
  @$pb.TagNumber(4)
  void clearTemperature() => clearField(4);
}

class BooleanDataReply extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BooleanDataReply', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vehicle'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isEngineGood', protoName: 'isEngineGood')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isBreakGood', protoName: 'isBreakGood')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isSeatBeltUsed', protoName: 'isSeatBeltUsed')
    ..hasRequiredFields = false
  ;

  BooleanDataReply._() : super();
  factory BooleanDataReply({
    $core.bool? isEngineGood,
    $core.bool? isBreakGood,
    $core.bool? isSeatBeltUsed,
  }) {
    final _result = create();
    if (isEngineGood != null) {
      _result.isEngineGood = isEngineGood;
    }
    if (isBreakGood != null) {
      _result.isBreakGood = isBreakGood;
    }
    if (isSeatBeltUsed != null) {
      _result.isSeatBeltUsed = isSeatBeltUsed;
    }
    return _result;
  }
  factory BooleanDataReply.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BooleanDataReply.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BooleanDataReply clone() => BooleanDataReply()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BooleanDataReply copyWith(void Function(BooleanDataReply) updates) => super.copyWith((message) => updates(message as BooleanDataReply)) as BooleanDataReply; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BooleanDataReply create() => BooleanDataReply._();
  BooleanDataReply createEmptyInstance() => create();
  static $pb.PbList<BooleanDataReply> createRepeated() => $pb.PbList<BooleanDataReply>();
  @$core.pragma('dart2js:noInline')
  static BooleanDataReply getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BooleanDataReply>(create);
  static BooleanDataReply? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isEngineGood => $_getBF(0);
  @$pb.TagNumber(1)
  set isEngineGood($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsEngineGood() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsEngineGood() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get isBreakGood => $_getBF(1);
  @$pb.TagNumber(2)
  set isBreakGood($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIsBreakGood() => $_has(1);
  @$pb.TagNumber(2)
  void clearIsBreakGood() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isSeatBeltUsed => $_getBF(2);
  @$pb.TagNumber(3)
  set isSeatBeltUsed($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsSeatBeltUsed() => $_has(2);
  @$pb.TagNumber(3)
  void clearIsSeatBeltUsed() => clearField(3);
}

class SeatBeltUsage extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SeatBeltUsage', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'vehicle'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'IsSeatBeltUsed', protoName: 'IsSeatBeltUsed')
    ..hasRequiredFields = false
  ;

  SeatBeltUsage._() : super();
  factory SeatBeltUsage({
    $core.bool? isSeatBeltUsed,
  }) {
    final _result = create();
    if (isSeatBeltUsed != null) {
      _result.isSeatBeltUsed = isSeatBeltUsed;
    }
    return _result;
  }
  factory SeatBeltUsage.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SeatBeltUsage.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SeatBeltUsage clone() => SeatBeltUsage()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SeatBeltUsage copyWith(void Function(SeatBeltUsage) updates) => super.copyWith((message) => updates(message as SeatBeltUsage)) as SeatBeltUsage; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SeatBeltUsage create() => SeatBeltUsage._();
  SeatBeltUsage createEmptyInstance() => create();
  static $pb.PbList<SeatBeltUsage> createRepeated() => $pb.PbList<SeatBeltUsage>();
  @$core.pragma('dart2js:noInline')
  static SeatBeltUsage getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SeatBeltUsage>(create);
  static SeatBeltUsage? _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get isSeatBeltUsed => $_getBF(0);
  @$pb.TagNumber(1)
  set isSeatBeltUsed($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIsSeatBeltUsed() => $_has(0);
  @$pb.TagNumber(1)
  void clearIsSeatBeltUsed() => clearField(1);
}

