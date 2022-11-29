#ifndef CC92F405_9FE0_4A48_9A96_10BC7D305BC6
#define CC92F405_9FE0_4A48_9A96_10BC7D305BC6

#include <iostream>
#include <memory>
#include <string>
#include "engine.h"
#include <grpc++/grpc++.h>
#include "vehicle.grpc.pb.h"


using grpc::ServerContext;
using grpc::ServerWriter;
using grpc::Status;

using vehicle::SpeedAction;
using vehicle::DataExchanger;
using vehicle::Ping;
using vehicle::SpeedType;
using vehicle::FuelAmount;
using vehicle::NumberDataReply;



class DataExchangerServiceImpl final : public DataExchanger::Service
{

    Status GetNumberDataFlow(ServerContext *context, const SpeedAction *request, ServerWriter<NumberDataReply> *writer) override;
    Status GetNumberData(ServerContext *context, const SpeedAction *request, NumberDataReply *response) override;
    Status FillFuel(ServerContext *context, const FuelAmount *request, FuelAmount *response) override;
    Status GetTotalFuel(ServerContext *context, const Ping *request, FuelAmount *response) override;
};

#endif /* CC92F405_9FE0_4A48_9A96_10BC7D305BC6 */
