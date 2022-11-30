
#include "data_exchanger_service.h"
#include <thread>
#include "engine.h"
#include "fuel_storage.h"
#include <stdlib.h>
using namespace std;

Status DataExchangerServiceImpl::GetNumberDataFlow(ServerContext *context, const SpeedAction *request, ServerWriter<NumberDataReply> *writer)
{
//TODO: there can be some bug here
    Engine engine;
    FuelStorage fuelStoreage;

    NumberDataReply reply;
    while (true)

{    std::cout << "helle";

    switch (request->speedtype())
    {
    case vehicle::LEVER_UP :
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

    fuelStoreage.calculateFuel(engine.getRpm());

    reply.set_temperature(engine.getTemperature());
    reply.set_rpm(engine.getRpm());
    reply.set_speed(engine.getSpeed());
    reply.set_distance(engine.getDistance());
    reply.set_fuel(fuelStoreage.getTotalFuel());

    // this_thread::sleep_for(chrono::milliseconds(10000));

    std::cout << " Current temperature: " << engine.getTemperature();
    std::cout << " Current rpm: " << engine.getRpm();
    std::cout << " Current speed: " << engine.getSpeed();
    std::cout << " Current distance: " << engine.getDistance();
    std::cout << " Current fuel: " << fuelStoreage.getTotalFuel();

    writer->Write(reply);

}

    return Status::OK;
}

static Engine engine;

Status DataExchangerServiceImpl::GetNumberData(ServerContext *context, const SpeedAction *request, NumberDataReply *response)
{



    NumberDataReply reply;
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

