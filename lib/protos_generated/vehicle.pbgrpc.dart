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
      $grpc.ClientMethod<$0.SpeedAction, $0.NumberDataReply>(
          '/vehicle.DataExchanger/GetNumberDataFlow',
          ($0.SpeedAction value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.NumberDataReply.fromBuffer(value));
  static final _$getNumberData =
      $grpc.ClientMethod<$0.SpeedAction, $0.NumberDataReply>(
          '/vehicle.DataExchanger/GetNumberData',
          ($0.SpeedAction value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.NumberDataReply.fromBuffer(value));
  static final _$fillFuel = $grpc.ClientMethod<$0.FuelAmount, $0.FuelAmount>(
      '/vehicle.DataExchanger/FillFuel',
      ($0.FuelAmount value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FuelAmount.fromBuffer(value));
  static final _$getTotalFuel = $grpc.ClientMethod<$0.Ping, $0.FuelAmount>(
      '/vehicle.DataExchanger/GetTotalFuel',
      ($0.Ping value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.FuelAmount.fromBuffer(value));

  DataExchangerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.NumberDataReply> getNumberDataFlow(
      $0.SpeedAction request,
      {$grpc.CallOptions? options}) {
    return $createStreamingCall(
        _$getNumberDataFlow, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$0.NumberDataReply> getNumberData($0.SpeedAction request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getNumberData, request, options: options);
  }

  $grpc.ResponseFuture<$0.FuelAmount> fillFuel($0.FuelAmount request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$fillFuel, request, options: options);
  }

  $grpc.ResponseFuture<$0.FuelAmount> getTotalFuel($0.Ping request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getTotalFuel, request, options: options);
  }
}

abstract class DataExchangerServiceBase extends $grpc.Service {
  $core.String get $name => 'vehicle.DataExchanger';

  DataExchangerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SpeedAction, $0.NumberDataReply>(
        'GetNumberDataFlow',
        getNumberDataFlow_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.SpeedAction.fromBuffer(value),
        ($0.NumberDataReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SpeedAction, $0.NumberDataReply>(
        'GetNumberData',
        getNumberData_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SpeedAction.fromBuffer(value),
        ($0.NumberDataReply value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FuelAmount, $0.FuelAmount>(
        'FillFuel',
        fillFuel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FuelAmount.fromBuffer(value),
        ($0.FuelAmount value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Ping, $0.FuelAmount>(
        'GetTotalFuel',
        getTotalFuel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Ping.fromBuffer(value),
        ($0.FuelAmount value) => value.writeToBuffer()));
  }

  $async.Stream<$0.NumberDataReply> getNumberDataFlow_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SpeedAction> request) async* {
    yield* getNumberDataFlow(call, await request);
  }

  $async.Future<$0.NumberDataReply> getNumberData_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SpeedAction> request) async {
    return getNumberData(call, await request);
  }

  $async.Future<$0.FuelAmount> fillFuel_Pre(
      $grpc.ServiceCall call, $async.Future<$0.FuelAmount> request) async {
    return fillFuel(call, await request);
  }

  $async.Future<$0.FuelAmount> getTotalFuel_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Ping> request) async {
    return getTotalFuel(call, await request);
  }

  $async.Stream<$0.NumberDataReply> getNumberDataFlow(
      $grpc.ServiceCall call, $0.SpeedAction request);
  $async.Future<$0.NumberDataReply> getNumberData(
      $grpc.ServiceCall call, $0.SpeedAction request);
  $async.Future<$0.FuelAmount> fillFuel(
      $grpc.ServiceCall call, $0.FuelAmount request);
  $async.Future<$0.FuelAmount> getTotalFuel(
      $grpc.ServiceCall call, $0.Ping request);
}
