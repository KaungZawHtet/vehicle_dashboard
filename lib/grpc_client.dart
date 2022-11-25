
import 'package:grpc/grpc.dart';
import 'package:vehicle_dashboard/protos_generated/ping.pbgrpc.dart';

class GrpcClient {
    late final GreeterClient stub;
  GrpcClient() {
    final channel = ClientChannel(
      '0.0.0.0',
      port: 8888,
      options: ChannelOptions(
        credentials: const ChannelCredentials.insecure(),
        codecRegistry:
            CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
      ),
    );
    stub = GreeterClient(channel);
  }

  Future<String> getMessage(String name) async {
    try {
      final response = await stub.sayHello(
        HelloRequest()..name = name,
        options: CallOptions(compression: const GzipCodec()),
      );
      return 'Greeter client received: ${response.message}';
    } catch (e) {
      return 'Caught error: $e';
    }
  }


}
