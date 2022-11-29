// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:grpc/grpc.dart';

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

  Stream<NumberDataReply> watchNumberDataFlow(SpeedType action) async* {
    try {
      SpeedAction request = SpeedAction()..speedType = action;

      final response = await stub.getNumberData(
        request,
        options: CallOptions(compression: const GzipCodec()),
      );
        print('distance : ${response.distance}');
      print('fuel : ${response.fuel}');
      print('rpm : ${response.rpm}');
      print('speed : ${response.speed}');
      print('temperatuure : ${response.temperature}');
      print("==============");

      yield response;

     /*  await for (var numberDataReply in stub.getNumberDataFlow(request)) {
        print(numberDataReply.distance);
        print(numberDataReply.fuel);
        print(numberDataReply.rpm);
        print(numberDataReply.speed);
        print(numberDataReply.temperature);
        print("==============");

        yield numberDataReply; */

    } catch (e) {
      print('Caught error: $e');


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
