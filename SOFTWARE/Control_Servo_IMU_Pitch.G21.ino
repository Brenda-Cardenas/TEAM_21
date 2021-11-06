#include <SPI.h>
#include <Wire.h>
#include <Servo.h>
#include <Simple_MPU6050.h>
#define MPU 0x68  // Direccion I2C del MPU-6050

Servo Servo1;
double AcX,AcY,AcZ;
int Pitch;

void setup(){
  Serial.begin(9600);
  Servo1.attach(9);
  servo1.write(0);//posición inicial angulo 0
  init_MPU(); // Inicializamos el MPU6050
}
 
void loop()
{
  FunctionsMPU(); // Adquirimos los ejex AcX, AcY, AcZ.
    
  Pitch = FunctionsPitch(AcY, AcX, AcZ);  //Calculo del angulo del Pitch

  int ServoPitch = map(Pitch, 0, 30, 0, 179);

  Servo1.write(ServoPitch);

}

void init_MPU(){
  Wire.begin();
  Wire.beginTransmission(MPU);
  Wire.write(0x6B);  // PWR_MGMT_1 register
  Wire.write(0);     // Seteamos a cero (wakes up - Despertamos el MPU-6050)
  Wire.endTransmission(true);
  delay(1000);
}

//Funcion para el calculo del angulo Pitch 
double FunctionsPitch(double A, double B, double C){
  double DatoA, DatoB Value;
  DatoA = A;
  DatoB = (B*B) + (C*C);
  DatoB = sqrt(DatoB);
  
  Value = atan2(DatoA, DatoB);
  Value = Value * 180/3.14;
  
  return (int)Value;
}

//Función para adquirir los ejes X, Y, Z del MPU6050
void FunctionsMPU(){//inicializamos los registros internos que tiene
  Wire.beginTransmission(MPU);
  Wire.write(0x3B);  // Empezamos con el registro 0x3B (ACCEL_XOUT_H)
  Wire.endTransmission(false);
  Wire.requestFrom(MPU,6,true);  // requerimos un total de 6 registers
  AcX=Wire.read()<<8|Wire.read();  // 0x3B (ACCEL_XOUT_H) & 0x3C (ACCEL_XOUT_L)     
  AcY=Wire.read()<<8|Wire.read();  // 0x3D (ACCEL_YOUT_H) & 0x3E (ACCEL_YOUT_L)
  AcZ=Wire.read()<<8|Wire.read();  // 0x3D (ACCEL_YOUT_H) & 0x3E (ACCEL_YOUT_L)
}
