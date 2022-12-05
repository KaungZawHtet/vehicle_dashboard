// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:grpc/grpc.dart';
import 'package:vehicle_dashboard/db/db_client.dart';

import 'package:vehicle_dashboard/protos_generated/vehicle.pbgrpc.dart';

class VehicleClient {
  late final DataExchangerClient stub;
  VehicleClient() {
    final channel = ClientChannel(
      '0.0.0.0',
      port: 8888,
      options: ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
    stub = DataExchangerClient(channel);
  }

  Stream<NumberDataReply> manageSpeed(
      SpeedType action, AppDb db) async* {
    try {
      SpeedAction request = SpeedAction()..speedType = action;

      final response = await stub.manageSpeed(
        request,
        options: CallOptions(compression: const GzipCodec()),
      );
      db.insertRecord(action.toString(), response.distance, response.rpm,
          response.speed, response.fuel, response.temperature, DateTime.now());

      yield response;
    } catch (e) {
      if (kDebugMode) {
        print('Caught error: $e');
      }
    }
  }


  Future<NumberDataReply> getNumberData( ) async {

    Ping request = Ping()..binary = true;

      final response = await stub.getNumberData(
        request,
        options: CallOptions(compression: const GzipCodec()),
      );


      return response;
  }





  Stream<double> watchFillFuel({double amount = 0}) async* {
    try {
      final response = await stub.fillFuel(
        FuelAmount()..fuel = amount,
        options: CallOptions(compression: const GzipCodec()),
      );

      yield response.fuel;
    } catch (e) {
      if (kDebugMode) {
        print('Caught error: $e');
      }
    }
  }

  Future<void> fillFuel({double amount = 0}) async {
    if (kDebugMode) {
      print(amount);
    }
    try {
      final response = await stub.fillFuel(
        FuelAmount()..fuel = amount,
        options: CallOptions(compression: const GzipCodec()),
      );
      if (kDebugMode) {
        print(response.fuel);
      }
    } catch (e) {
      if (kDebugMode) {
        print('Caught error: $e');
      }
    }
  }

  Future<double> getFuelLeft() async {
    var ping = Ping(binary: true);



    try {
      final response = await stub.getTotalFuel(
        ping,
        options: CallOptions(compression: const GzipCodec()),
      );


      return response.fuel;
    } catch (e) {
      if (kDebugMode) {
        print('Caught error: $e');
      }
      return -1;
    }
  }

/*   Future<int> getTemperature(String name) async {
    try {
      final response = await stub.getNumberData(
        DisplayDataRequest()..request = true,
        options: CallOptions(compression: const GzipCodec()),
      );
      return response.temperature;
    } catch (e) {
      print('Caught error: $e');
      return -1;
    }
  } */
}
