#include "fuel_storage.h"



double FuelStorage::getTotalFuel()
{
return this->total_fuel;
}

void FuelStorage::calculateFuel(double rpm)
{
    if ( rpm <= 1 )
        this->total_fuel -= 1;

    else if ( rpm > 2 && rpm <= 3 )
        this->total_fuel -= 2;
    else if (rpm > 4 && rpm <= 5)
        this->total_fuel -= 3;
    else if (rpm > 6 && rpm <= 7)
        this->total_fuel -= 4;
    else if ( rpm >= 8)
        this->total_fuel -= 5;
}

void FuelStorage::fillFuel(double fuel)
{
    this->total_fuel += fuel;
}
