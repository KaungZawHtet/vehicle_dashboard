///
//  Generated code. Do not modify.
//  source: vehicle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class SpeedType extends $pb.ProtobufEnum {
  static const SpeedType LEVER_UP = SpeedType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LEVER_UP');
  static const SpeedType PRESERVE = SpeedType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PRESERVE');
  static const SpeedType SLOW = SpeedType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SLOW');
  static const SpeedType STOP = SpeedType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STOP');

  static const $core.List<SpeedType> values = <SpeedType> [
    LEVER_UP,
    PRESERVE,
    SLOW,
    STOP,
  ];

  static final $core.Map<$core.int, SpeedType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static SpeedType? valueOf($core.int value) => _byValue[value];

  const SpeedType._($core.int v, $core.String n) : super(v, n);
}

