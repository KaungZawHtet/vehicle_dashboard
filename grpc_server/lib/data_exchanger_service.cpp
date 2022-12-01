
#include <thread>
#include "engine.h"
#include "fuel_storage.h"
#include <stdlib.h>
#include "data_exchanger_service.h"
using namespace std;



static Engine engine;

Status DataExchangerServiceImpl::GetNumberData(ServerContext *context, const Ping *request, NumberDataReply *response)
{

    response->set_temperature(engine.getTemperature());
    response->set_rpm(engine.getRpm());
    response->set_speed(engine.getSpeed());
    response->set_distance(engine.getDistance());
    response->set_fuel(engine.getFuel());

    return Status::OK;

}

Status DataExchangerServiceImpl::ManageSpeed(ServerContext *context, const SpeedAction *request, NumberDataReply *response)
{


    vehicle::SpeedType type = request->speedtype();
    switch (type)
    {
    case vehicle::LEVER_UP:
        engine.calculateLeverUp();
        break;

    case vehicle::PRESERVE:
        engine.calculatePreserve();
        break;

    case vehicle::SLOW:
        engine.calculateSlow();
        break;

    case vehicle::STOP:
        engine.calculateStop();
        break;

    default:
        break;
    }

    response->set_temperature(engine.getTemperature());
    response->set_rpm(engine.getRpm());
    response->set_speed(engine.getSpeed());
    response->set_distance(engine.getDistance());
    response->set_fuel(engine.getFuel());

    return Status::OK;
}

Status DataExchangerServiceImpl::FillFuel(ServerContext * context, const FuelAmount * request, FuelAmount * response)
{
    engine.fuelStorage.fillFuel(request->fuel());

    response->set_fuel(engine.getFuel());

    return Status::OK;
}

Status DataExchangerServiceImpl::GetTotalFuel(ServerContext * context, const Ping * request, FuelAmount * response)
{

response->set_fuel(engine.getFuel());

return Status::OK;
}

