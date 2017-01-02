#include "mbed.h"
// generate some traffic on CAN
Serial pc(SERIAL_TX, SERIAL_RX);
 
DigitalOut myled(LED1);
CAN can1(PA_11, PA_12);
//CAN can1(D10, D2);
 

char counter = 0;
int main() {
    can1.frequency(1000000);
    int handle = can1.filter(0x1338, 0xFFFFFFFF, CANExtended, 1);
    printf("%d", handle);
    while(handle) {
        // CANMessage(int _id, const char *_data, char _len = 8, CANType _type = CANData, CANFormat _format = CANStandard)
        can1.write(CANMessage(0x1337, &counter, 1, CANData, CANExtended));
        counter++;
        
        CANMessage msg;
        if(can1.read(msg, handle)) {
            printf("%d\t", msg.id);
            for(int i=0; i<8; i++) {
                printf("%d\t", msg.data[i]);
            }
            printf("\n");
            counter = 0;
        }
        
        myled = !myled;
        wait(0.1);
    }
}
