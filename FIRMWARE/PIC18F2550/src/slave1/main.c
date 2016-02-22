#include "system.h"

#include "app_slave1.h"

MAIN_RETURN main(void) {
    SYSTEM_Initialize();

    while(1) {
        SYSTEM_Tasks();

        APP_tick();
    }
}




