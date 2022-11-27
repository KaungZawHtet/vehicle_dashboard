#include "data_exchanger_service.h"
#include <thread>
#include "engine.h"
using namespace std;

Status DataExchangerServiceImpl::GetNumberDataFlow(ServerContext * context, const DisplayDataRequest * request, ServerWriter<NumberDataReply>* writer)
{

    Engine engine;

    NumberDataReply reply;

    reply.set_fuel(engine.getFuel());
    reply.set_rpm(engine.getRpm());
    reply.set_speed(engine.getSpeed());
    reply.set_temperature(43);

    // this_thread::sleep_for(chrono::milliseconds(10000));

    writer->Write(reply);



    return Status::OK;
}

Status DataExchangerServiceImpl::GetNumberData(ServerContext * context, const DisplayDataRequest * request, NumberDataReply * response)
{

    Engine engine;

    response->set_fuel(engine.getFuel());
    response->set_rpm(engine.getRpm());
    response->set_speed(engine.getSpeed());
    response->set_temperature(engine.getTemperature());

    return Status::OK;

}

Status DataExchangerServiceImpl::GetBooleanData(ServerContext * context, const DisplayDataRequest * request, BooleanDataReply * response)
{
    return Status::OK;
}

Status DataExchangerServiceImpl::InformSeatBeltIsUsed(ServerContext * context, const SeatBeltUsage * request, SeatBeltUsage * response)
{
return Status::OK;
}
