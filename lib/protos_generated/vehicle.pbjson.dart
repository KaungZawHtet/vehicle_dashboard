///
//  Generated code. Do not modify.
//  source: vehicle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use displayDataRequestDescriptor instead')
const DisplayDataRequest$json = const {
  '1': 'DisplayDataRequest',
  '2': const [
    const {'1': 'request', '3': 1, '4': 1, '5': 8, '10': 'request'},
  ],
};

/// Descriptor for `DisplayDataRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List displayDataRequestDescriptor = $convert.base64Decode('ChJEaXNwbGF5RGF0YVJlcXVlc3QSGAoHcmVxdWVzdBgBIAEoCFIHcmVxdWVzdA==');
@$core.Deprecated('Use numberDataReplyDescriptor instead')
const NumberDataReply$json = const {
  '1': 'NumberDataReply',
  '2': const [
    const {'1': 'rpm', '3': 1, '4': 1, '5': 5, '10': 'rpm'},
    const {'1': 'speed', '3': 2, '4': 1, '5': 5, '10': 'speed'},
    const {'1': 'fuel', '3': 3, '4': 1, '5': 5, '10': 'fuel'},
    const {'1': 'temperature', '3': 4, '4': 1, '5': 5, '10': 'temperature'},
  ],
};

/// Descriptor for `NumberDataReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List numberDataReplyDescriptor = $convert.base64Decode('Cg9OdW1iZXJEYXRhUmVwbHkSEAoDcnBtGAEgASgFUgNycG0SFAoFc3BlZWQYAiABKAVSBXNwZWVkEhIKBGZ1ZWwYAyABKAVSBGZ1ZWwSIAoLdGVtcGVyYXR1cmUYBCABKAVSC3RlbXBlcmF0dXJl');
@$core.Deprecated('Use booleanDataReplyDescriptor instead')
const BooleanDataReply$json = const {
  '1': 'BooleanDataReply',
  '2': const [
    const {'1': 'isEngineGood', '3': 1, '4': 1, '5': 8, '10': 'isEngineGood'},
    const {'1': 'isBreakGood', '3': 2, '4': 1, '5': 8, '10': 'isBreakGood'},
    const {'1': 'isSeatBeltUsed', '3': 3, '4': 1, '5': 8, '10': 'isSeatBeltUsed'},
  ],
};

/// Descriptor for `BooleanDataReply`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List booleanDataReplyDescriptor = $convert.base64Decode('ChBCb29sZWFuRGF0YVJlcGx5EiIKDGlzRW5naW5lR29vZBgBIAEoCFIMaXNFbmdpbmVHb29kEiAKC2lzQnJlYWtHb29kGAIgASgIUgtpc0JyZWFrR29vZBImCg5pc1NlYXRCZWx0VXNlZBgDIAEoCFIOaXNTZWF0QmVsdFVzZWQ=');
@$core.Deprecated('Use seatBeltUsageDescriptor instead')
const SeatBeltUsage$json = const {
  '1': 'SeatBeltUsage',
  '2': const [
    const {'1': 'IsSeatBeltUsed', '3': 1, '4': 1, '5': 8, '10': 'IsSeatBeltUsed'},
  ],
};

/// Descriptor for `SeatBeltUsage`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List seatBeltUsageDescriptor = $convert.base64Decode('Cg1TZWF0QmVsdFVzYWdlEiYKDklzU2VhdEJlbHRVc2VkGAEgASgIUg5Jc1NlYXRCZWx0VXNlZA==');
