

#include "engine.h"
#include <cstdlib>
#include <ctime>
using namespace std;
int Engine::getRpm()
{

    srand((unsigned)time(NULL)); // Providing a seed value
    return 0 + (rand() % 8001);
}

int Engine::getSpeed()
{

    srand((unsigned)time(NULL)); // Providing a seed value
    return 0 + (rand() % 241);
}

int Engine::getTemperature()
{

    srand((unsigned)time(NULL)); // Providing a seed value
    return 0 + (rand() % 201);
}

int Engine::getFuel()
{

    srand((unsigned)time(NULL)); // Providing a seed value
    return 0 + (rand() % 47);
}
