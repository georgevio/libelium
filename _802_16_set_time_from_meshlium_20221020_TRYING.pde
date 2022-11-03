#include <WaspXBee802.h>

// Destination MAC address MESHLIUM 20221020
//char MESHLIUM_ADDRESS[] = "0013A200414F5598"; 
  char MESHLIUM_ADDRESS[] = "0013A20041678A0E";

uint8_t socket = SOCKET0;

uint8_t error;

void setup(){
  USB.ON(); 
  RTC.ON();
  xbee802.ON(socket);
//}
//void loop(){    
  //USB.println(F("Setting RTC time from Meshlium settings"));

  USB.println(F("AAAAAAAAAAAA"));//error,DEC);
  
  // set RTC time
  error = xbee802.setRTCfromMeshlium(MESHLIUM_ADDRESS);
  
  USB.println(F("DDDDDDDDD"));//error,DEC);
  
  if( error == 0 ){
    USB.print(F("SET RTC ok. "));
  }else{
    USB.print(F("SET RTC error. "));
  }  
  
  USB.print(F("RTC Time:"));
  USB.println(RTC.getTime());
  
  //delay(5000);
}
void loop(){ }

