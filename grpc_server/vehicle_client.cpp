
#include <chrono>
#include <iostream>
#include <memory>
#include <random>
#include <string>
#include <thread>



#include <grpc/grpc.h>
#include <grpcpp/channel.h>
#include <grpcpp/client_context.h>
#include <grpcpp/create_channel.h>
#include <grpcpp/security/credentials.h>
#include "vehicle.grpc.pb.h"


using grpc::Channel;
using grpc::ClientContext;
using grpc::ClientReader;
using grpc::ClientReaderWriter;
using grpc::ClientWriter;
using grpc::Status;

using vehicle::BooleanDataReply;
using vehicle::DataExchanger;
using vehicle::DisplayDataRequest;
using vehicle::NumberDataReply;

using vehicle::SeatBeltUsage;

using namespace std;


int main(int argc, char **argv)
{


    return 0;
}