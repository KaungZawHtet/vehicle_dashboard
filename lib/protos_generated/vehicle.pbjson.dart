///
//  Generated code. Do not modify.
//  source: vehicle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use speedTypeDescriptor instead')
const SpeedType$json = const {
  '1': 'SpeedType',
  '2': const [
    const {'1': 'LEVER_UP', '2': 0},
    const {'1': 'PRESERVE', '2': 1},
    const {'1': 'SLOW', '2': 2},
    const {'1': 'STOP', '2': 3},
  ],
};

/// Descriptor for `SpeedType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List speedTypeDescriptor = $convert.base64Decode('CglTcGVlZFR5cGUSDAoITEVWRVJfVVAQABIMCghQUkVTRVJWRRABEggKBFNMT1cQAhIICgRTVE9QEAM=');
@$core.Deprecated('Use pingDescriptor instead')
const Ping$json = const {
  '1': 'Ping',
  '2': const [
    const {'1': 'binary', '3': 1, '4': 1, '5': 8, '10': 'binary'},
  ],
};

/// Descriptor for `Ping`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pingDescriptor = $convert.base64Decode('CgRQaW5nEhYKBmJpbmFyeRgBIAEoCFIGYmluYXJ5');
@$core.Deprecated('Use fuelAmountDescriptor instead')
const FuelAmount$json = const {
  '1': 'FuelAmount',
  '2': const [
    const {'1': 'fuel', '3': 1, '4': 1, '5': 1, '10': 'fuel'},
  ],
};

/// Descriptor for `FuelAmount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fuelAmountDescriptor = $convert.base64Decode('CgpGdWVsQW1vdW50EhIKBGZ1ZWwYASABKAFSBGZ1ZWw=');
@$core.Deprecated('Use speedActionDescriptor instead')
const SpeedAction$json = const {
  '1': 'SpeedAction',
  '2': const [
    const {'1': 'speedType', '3': 1, '4': 1, '5': 14, '6': '.vehicle.SpeedType', '10': 'speedType'},
  ],
};

/// Descriptor for `SpeedAction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List speedActionDescriptor = $convert.base64Decode('CgtTcGVlZEFjdGlvbhIwCglzcGVlZFR5cGUYASABKA4yEi52ZWhpY2xlLlNwZWVkVHlwZVIJc3BlZWRUeXBl');
@$core.Deprecated('Use numberDataReplyDescriptor instead')
const NumberDataReply$json = const {
  '1': 'NumberDataReply',
  '2': const [
    const {'1': 'rpm', '3': 1, '4': 1, '5': 1, '10': 'rpm'},
    const {'1': 'speed', '3': 2, '4': 1, '5': 1, '10': 'speed'},
    const {'1': 'fuel', '3': 3, '4': 1, '5': 1, '10': 'fuel'},
    const {'1': 'temperature', '3': 4, '4': 1, '5': 1, '10': 'temperature'},
    const {'1': 'distance', '3': 5, '4': 1, '5': 1, '10': 'distance'},
  ],
};

/// Descriptor for `NumberDataReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List numberDataReplyDescriptor = $convert.base64Decode('Cg9OdW1iZXJEYXRhUmVwbHkSEAoDcnBtGAEgASgBUgNycG0SFAoFc3BlZWQYAiABKAFSBXNwZWVkEhIKBGZ1ZWwYAyABKAFSBGZ1ZWwSIAoLdGVtcGVyYXR1cmUYBCABKAFSC3RlbXBlcmF0dXJlEhoKCGRpc3RhbmNlGAUgASgBUghkaXN0YW5jZQ==');
