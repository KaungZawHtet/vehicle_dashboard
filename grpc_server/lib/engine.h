#ifndef CF13800C_7789_4EF6_99C9_49BC2E4D7002
#define CF13800C_7789_4EF6_99C9_49BC2E4D7002


#include "fuel_storage.h"
constexpr double DISTANCE_PER_CLICK = 20;
constexpr double LEVER_COUNT_MAX = 6;
constexpr bool NO_MORE_DRIVE = true;
constexpr bool KEEP_DRIVING = false;

class Engine
{

    /*
    unit for speed in this app = distance per click

    */
private:
    double temperature = 0;
    double rpm = 0;
    double speed = 0;
    double lever_count = 0;
    double distance = 0;

    bool canNotDrive();

public:
    FuelStorage fuelStorage;
    double getTemperature();
    double getSpeed();
    double getRpm();
    double getDistance();

    double getFuel();


    void calculatePreserve();
    void calculateLeverUp();
    void calculateSlow();
    void calculateStop();

};

#endif /* CF13800C_7789_4EF6_99C9_49BC2E4D7002 */
