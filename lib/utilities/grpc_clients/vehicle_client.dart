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
// TODO: bug here. Need to fix the function;
  Stream<String> watchNumberDataFlow() async* {
    try {
      DisplayDataRequest request = DisplayDataRequest()..request = true;



      /* await for (var numberDataReply in stub.getNumberData(request)) {
        yield '1';
      } */
    } catch (e) {
      print('Caught error: $e');
    }
  }

  Future<int> getTemperature(String name) async {
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
  }
}
