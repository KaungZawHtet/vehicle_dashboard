///
//  Generated code. Do not modify.
//  source: vehicle.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'vehicle.pb.dart' as $0;
export 'vehicle.pb.dart';

class DataExchangerClient extends $grpc.Client {
  static final _$getNumberDataFlow =
      $grpc.ClientMethod<$0.DisplayDataRequest, $0.NumberDataReply>(
          '/vehicle.DataExchanger/GetNumberDataFlow',
          ($0.DisplayDataRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.NumberDataReply.fromBuffer(value));
  static final _$getNumberData =
      $grpc.ClientMethod<$0.DisplayDataRequest, $0.NumberDataReply>(
          '/vehicle.DataExchanger/GetNumberData',
          ($0.DisplayDataRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.NumberDataReply.fromBuffer(value));
  static final _$getBooleanData =
      $grpc.ClientMethod<$0.DisplayDataRequest, $0.BooleanDataReply>(
          '/vehicle.DataExchanger/GetBooleanData',
          ($0.DisplayDataRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.BooleanDataReply.fromBuffer(value));
  static final _$informSeatBeltIsUsed =
      $grpc.ClientMethod<$0.SeatBeltUsage, $0.SeatBeltUsage>(
          '/vehicle.DataExchanger/InformSeatBeltIsUsed',
          ($0.SeatBeltUsage value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SeatBeltUsage.fromBuffer(value));

  DataExchangerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.NumberDataReply> getNumberDataFlow(
      $0.DisplayDataRequest request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getNumberDataFlow, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.NumberDataReply> getNumberData(
      $0.DisplayDataRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNumberData, request, options: options);
  }

  $grpc.ResponseFuture<$0.BooleanDataReply> getBooleanData(
      $0.DisplayDataRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getBooleanData, request, options: options);
  }

  $grpc.ResponseFuture<$0.SeatBeltUsage> informSeatBeltIsUsed(
      $0.SeatBeltUsage request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$informSeatBeltIsUsed, request, options: options);
  }
}

abstract class DataExchangerServiceBase extends $grpc.Service {
  $core.String get $name => 'vehicle.DataExchanger';

  DataExchangerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.DisplayDataRequest, $0.NumberDataReply>(
        'GetNumberDataFlow',
        getNumberDataFlow_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.DisplayDataRequest.fromBuffer(value),
        ($0.NumberDataReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DisplayDataRequest, $0.NumberDataReply>(
        'GetNumberData',
        getNumberData_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DisplayDataRequest.fromBuffer(value),
        ($0.NumberDataReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DisplayDataRequest, $0.BooleanDataReply>(
        'GetBooleanData',
        getBooleanData_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DisplayDataRequest.fromBuffer(value),
        ($0.BooleanDataReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SeatBeltUsage, $0.SeatBeltUsage>(
        'InformSeatBeltIsUsed',
        informSeatBeltIsUsed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SeatBeltUsage.fromBuffer(value),
        ($0.SeatBeltUsage value) => value.writeToBuffer()));
  }

  $async.Stream<$0.NumberDataReply> getNumberDataFlow_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DisplayDataRequest> request) async* {
    yield* getNumberDataFlow(call, await request);
  }

  $async.Future<$0.NumberDataReply> getNumberData_Pre($grpc.ServiceCall call,
      $async.Future<$0.DisplayDataRequest> request) async {
    return getNumberData(call, await request);
  }

  $async.Future<$0.BooleanDataReply> getBooleanData_Pre($grpc.ServiceCall call,
      $async.Future<$0.DisplayDataRequest> request) async {
    return getBooleanData(call, await request);
  }

  $async.Future<$0.SeatBeltUsage> informSeatBeltIsUsed_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SeatBeltUsage> request) async {
    return informSeatBeltIsUsed(call, await request);
  }

  $async.Stream<$0.NumberDataReply> getNumberDataFlow(
      $grpc.ServiceCall call, $0.DisplayDataRequest request);
  $async.Future<$0.NumberDataReply> getNumberData(
      $grpc.ServiceCall call, $0.DisplayDataRequest request);
  $async.Future<$0.BooleanDataReply> getBooleanData(
      $grpc.ServiceCall call, $0.DisplayDataRequest request);
  $async.Future<$0.SeatBeltUsage> informSeatBeltIsUsed(
      $grpc.ServiceCall call, $0.SeatBeltUsage request);
}
