#ifndef CC92F405_9FE0_4A48_9A96_10BC7D305BC6
#define CC92F405_9FE0_4A48_9A96_10BC7D305BC6

#include <iostream>
#include <memory>
#include <string>

#include <grpc++/grpc++.h>
#include "vehicle.grpc.pb.h"


using grpc::ServerContext;
using grpc::ServerWriter;
using grpc::Status;

using vehicle::BooleanDataReply;
using vehicle::DataExchanger;
using vehicle::DisplayDataRequest;
using vehicle::NumberDataReply;

using vehicle::SeatBeltUsage;

class DataExchangerServiceImpl final : public DataExchanger::Service
{

    Status GetNumberData(ServerContext *context, const DisplayDataRequest *request, ServerWriter<NumberDataReply> *writer) override;
    Status GetBooleanData(ServerContext *context, const DisplayDataRequest *request, BooleanDataReply *response) override;
    Status InformSeatBeltIsUsed(ServerContext *context, const SeatBeltUsage *request, SeatBeltUsage *response) override;
};

#endif /* CC92F405_9FE0_4A48_9A96_10BC7D305BC6 */
