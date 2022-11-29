#ifndef CF13800C_7789_4EF6_99C9_49BC2E4D7002
#define CF13800C_7789_4EF6_99C9_49BC2E4D7002

constexpr double DISTANCE_PER_CLICK = 20;
constexpr double LEVER_COUNT_MAX = 6;
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

public:
    double getTemperature();
    double getSpeed();
    double getRpm();
    double getDistance();

    void calculatePreserve();
    void calculateLeverUp();
    void calculateSlow();
    void calculateStop();
};


#endif /* CF13800C_7789_4EF6_99C9_49BC2E4D7002 */
