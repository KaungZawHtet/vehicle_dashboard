
#include "engine.h"
#include <cstdlib>
#include <ctime>
using namespace std;
double Engine::getRpm()
{

    return this->rpm;
}

double Engine::getDistance()
{
return this->distance;
}


double Engine::getSpeed()
{

    return this->speed;
}

double Engine::getTemperature()
{

    return this->temperature;
}

void Engine::calculatePreserve()
{
    // Calculation are just for demonstration. Don't use this in real world driving.
    if(this->speed!=0)
    {
        this->distance += DISTANCE_PER_CLICK;
        this->temperature += 1;
        this->lever_count = 1;


    }
}

void Engine::calculateLeverUp()
{
    // Calculation are just for demonstration. Don't use this in real world driving.
    this->rpm += 0.6;
    this->temperature += 10;
    this->speed += DISTANCE_PER_CLICK;
    ++(this->lever_count);
    this->distance += this->speed * this->lever_count;
}

void Engine::calculateSlow()
{
    // Calculation are just for demonstration. Don't use this in real world driving.
    if (this->rpm - 0.6 < 0)
    {
        this->rpm = 0;
        this->speed = 0;
    }
    else{
        this->speed -= DISTANCE_PER_CLICK;
        this->rpm -= 0.6;
    }

        // this->temperature += (this->temperature - 10) < 0 ? 0 : (this->temperature - 10);



    this->distance += this->speed;
    this->lever_count = 1;
}

void Engine::calculateStop()
{
    // Calculation are just for demonstration. Don't use this in real world driving.
    this->rpm = 0;
    this->speed = 0;
    this->lever_count = 0;
    this->distance = 0;
}
