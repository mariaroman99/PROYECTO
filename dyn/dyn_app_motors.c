/*
 * dyn_app_motors.c
 */
#include <pthread.h>
#include <signal.h>
#include <assert.h>
#include <stdio.h>
#include <inttypes.h>
#include <zconf.h>

#include <stdlib.h>
#include <string.h>


#include "dyn/dyn_instr.h"
#include "dyn/dyn_frames.h"
#include "dyn/dyn_app_motors.h"
#include "dyn_app_motors.h"
#include "dyn_frames.h"
#include "dyn_test/dyn_emu.h"
#include "../dyn_test/movement_simulator.h"
#include "../dyn_test/dyn_emu.h"
#include "../posicion.h"
#include "dyn_test/movement_simulator.h"




void moure_roda(uint8_t module_id, bool sentit_horari, uint16_t speed){
	byte mov_speed_l, mov_speed_h;
	if(sentit_horari){
		mov_speed_h =0x04; //cap a la dreta. Possant el tercer bit a 1, la roda es mourà cap a la dreta
	}else{
		mov_speed_h=0x00; //cap a l'esquerra. Possant el terccer bit a 0, la roda es mourà cap a l'esquerra
	}

    mov_speed_l= speed & 0xFF; //agafem els primers 8 bits de la velocitat i els possem a mov speed l
    mov_speed_h|= (speed >> 8); //afegim aquest últims dos bits de la velocitat i els afagim a mov speed h que ja te la direcció
	uint8_t parameters[3];
	parameters[0]= _DYN_REG__MOV_SPEED__L;
	parameters[1]=mov_speed_l; //Posem a mov_speed_l el Moving Speed(L)
	parameters[2]=mov_speed_h; //Posem a mov_speed_h el Moving Speed (H)

	struct RxReturn resposta=RxTxPacket(module_id, 3, _DYN_INSTR__WRITE, parameters);
    /*
	//Per comprovar si funciona:
    uint16_t vel = resposta.StatusPacket[6] | (resposta.StatusPacket[7] & 0x03); // Hem de juntarlos amb els 2 primers bits del paràmetre 7
    uint8_t dire = resposta.StatusPacket[7] & 0x04; // Hem d'agafar el tercer bit del reguistre low retornat a l'status packet
    printf("Sortida donada: \n ");
    printf("Moven roda ");
    printf("%" PRIu16, resposta.StatusPacket[2]);
    printf(" a velocitat ");
	printf("%" PRIu16 ,vel);
	printf(" i amb direccio ");
    if(dire==4){
        printf("dreta");
    }else{
        printf("esquerra");
    }
	printf("\n");
*/
}

void move_foward(uint8_t roda_1, uint8_t roda_2, uint16_t speed){
	bool sentit_horari=true;
	moure_roda(roda_1, !sentit_horari, speed); //Roda esquerra amb direcció esquerra
	moure_roda(roda_2, !sentit_horari, speed); //Roda dreta amb direcció dreta
}

void move_backward(uint8_t roda_1, uint8_t roda_2,  uint16_t speed){
	bool sentit_horari=true;
	moure_roda(roda_1, sentit_horari, speed); //Roda esquerra amb direcció dreta
	moure_roda(roda_2, sentit_horari, speed); //Roda dreta amb direcció esquerra
}

void move_left(uint8_t roda_1, uint8_t roda_2, uint16_t speed){
	bool sentit_horari=true;
	moure_roda(roda_1, !sentit_horari, speed); // Roda esquerra amb direcció esquerra
	moure_roda(roda_2, !sentit_horari, (speed+5)); // Roda dreta amb direcció dreta. Augmenta la velocitat
}

void move_right(uint8_t roda_1, uint8_t roda_2, uint16_t speed){
	bool sentit_horari=true;
	moure_roda(roda_1, !sentit_horari, (speed+5));// Roda esquerra amb direcció esquerra. Augmenta la velocitat
	moure_roda(roda_2, !sentit_horari, speed);


    //Roda dreta amb direcció dreta.
}


void rotar_dreta(uint8_t roda_1, uint8_t roda_2){
    bool sentit_horari=true;
    uint8_t dreta = (dyn_mem[SENSOR_MEM_ROW][DYN_REG__IR_RIGHT]);
    while(dreta!=dyn_mem[SENSOR_MEM_ROW][DYN_REG__IR_CENTER]){
        update_sensor_data();
        moure_roda(roda_2, 0x00, 0x00);
        moure_roda(roda_1, !sentit_horari, 0xFF);
    }
    moure_roda(roda_1, 0x00, 0x00);
    moure_roda(roda_2, 0x00, 0x00);


}

void rotar_esquerra(uint8_t roda_1, uint8_t roda_2) {
    bool sentit_horari = true;
    uint8_t esquerra = (dyn_mem[SENSOR_MEM_ROW][DYN_REG__IR_LEFT]);
    printf("%" PRIu8, esquerra);
    while (esquerra != dyn_mem[SENSOR_MEM_ROW][DYN_REG__IR_CENTER]) {
        update_sensor_data();
        moure_roda(roda_1, 0x00, 0x00);
        moure_roda(roda_2, !sentit_horari, 0xFF);
    }
    printf("%" PRIu8, dyn_mem[SENSOR_MEM_ROW][DYN_REG__IR_CENTER]);
    printf("%" PRIu8, dyn_mem[SENSOR_MEM_ROW][DYN_REG__IR_LEFT]);
    moure_roda(roda_2, 0x00, 0x00);
    moure_roda(roda_1, 0x00, 0x00);



}



void canviar_velocitat(uint8_t module_id, uint16_t speed, uint8_t direction){

	byte mov_speed_l, mov_speed_h;
    //Associem a l'mov_speed_l els primers 8 bytes de speed value
	mov_speed_l= speed & 0xFF;
    //Associem a l'mov_speed_h els 2 bytes que falten de speed value i la direcci�
	mov_speed_h=( (direction << 2) & 0x04) | ((speed >> 8) & 0x03);
	uint8_t parameters[3];
	parameters[0]= _DYN_REG__MOV_SPEED__L;
	parameters[1]=mov_speed_l; //Posem a mov_speed_l el Moving Speed(L)
	parameters[2]=mov_speed_h; //Posem a mov_speed_h el Moving Speed(H)

    struct RxReturn resposta=RxTxPacket(module_id, 3, _DYN_INSTR__WRITE, parameters);
    //Per comprovar si funciona:
    uint16_t vel = resposta.StatusPacket[6] | (resposta.StatusPacket[7] & 0x03); // Hem de juntarlos amb els 2 primers bits del paràmetre 7
    uint8_t dire = resposta.StatusPacket[7] & 0x04; // Hem d'agafar el tercer bit del reguistre low retornat a l'status packet

    printf("Sortida donada: \n");
    printf("Canvi de velocitat per la roda ");
    printf("%" PRIu16, resposta.StatusPacket[2]);
    printf(" a velocitat ");
    printf("%" PRIu16 ,vel);
    printf(" i amb direccio ");
    if(dire==4){
        printf("dreta");
    }else{
        printf("esquerra");
    }
    printf("\n");
}

void moure_continuament(uint8_t module_id){
	struct RxReturn resposta;
	uint8_t parameters[5];
	parameters[0]=_DYN_CW_Angle_Limit__L; //Comencem per la adre�a 0x06, on hem de ecriure la informaci�
	parameters[1]=0; //Posem a 0 el CW Angle Limit L
	parameters[2]=0; //Posem a 0 el CW Angle Limit H
	parameters[3]=0; //Posem a 0 el CCW Angle Limit L
	parameters[4]=0; //Posem a 0 el CCW Angle Limit H

	resposta=RxTxPacket(module_id, 5, _DYN_INSTR__WRITE, parameters);

	//Fem que trobi la paret mes propera i la ressegueixi
	//int paret = pared_mes_propera();

	//Cridem a la funció

}

void pared_mes_propera(){
    uint32_t distEsq = INITIAL_POS_X;
    uint32_t y = INITIAL_POS_Y;
    uint32_t distCentre = 0x1000-y;
    uint32_t distDreta = 0x1000-distEsq;
    uint16_t velocitat = 0xFF;
    if (distEsq <= distCentre && distEsq < distDreta){//MOVIMENT ESQUERRA
        printf("MOVIMENT ESQUERRA \n");
        rotar_esquerra(ID_MOTOR_L, ID_MOTOR_R);
        // Fem un while per comprovar cada cop si hi ha un obstacle a 10 mm del robot
        while(dyn_mem[SENSOR_MEM_ROW][DYN_REG__IR_CENTER]>0x0A){
           move_foward(ID_MOTOR_L, ID_MOTOR_R, velocitat);
        }
        // Quan trobi la pared l'haurà de resseguir fent una rotació a la dreta
        rotar_dreta(ID_MOTOR_L, ID_MOTOR_R);

    }
    else if (distCentre < distEsq && distCentre < distDreta){ //MOVIMENT CENTRE
        printf("MOVIMENT CENTRE \n");
        move_foward(ID_MOTOR_L, ID_MOTOR_R, velocitat);
        // Fem un while per comprovar cada cop si hi ha un obstacle a 10 mm del robot
        while(dyn_mem[SENSOR_MEM_ROW][DYN_REG__IR_CENTER]>0x0A){
            move_foward(ID_MOTOR_L, ID_MOTOR_R, velocitat);
        }
        // Quan trobi la pared l'haurà de resseguir fent una rotació a la dreta
        rotar_dreta(ID_MOTOR_L, ID_MOTOR_R);

    }
    else if (distDreta <= distCentre && distDreta < distEsq){ //MOVIMENT DRETA
        printf("MOVIMENT DRETA \n");
        rotar_dreta(ID_MOTOR_L, ID_MOTOR_R);
         // Fem un while per comprovar cada cop si hi ha un obstacle a 10 mm del robot
        while(dyn_mem[SENSOR_MEM_ROW][DYN_REG__IR_CENTER]>0x0A){
            move_foward(ID_MOTOR_L, ID_MOTOR_R, velocitat);
        }
        // Quan trobi la pared l'haurà de resseguir fent una rotació a l'esquerra
        rotar_dreta(ID_MOTOR_L, ID_MOTOR_R);

    }
    else if(distDreta==distCentre && distDreta==distEsq){ //MOVIMENT ESQUERRA
        printf("MOVIMENT ESQUERRA 1 \n");
        rotar_esquerra(ID_MOTOR_L, ID_MOTOR_R);
        // Fem un while per comprovar cada cop si hi ha un obstacle a 10 mm del robot
        while(dyn_mem[SENSOR_MEM_ROW][DYN_REG__IR_CENTER]>0x0A){
            move_foward(ID_MOTOR_L, ID_MOTOR_R, velocitat);
        }
        // Quan trobi la pared l'haurà de resseguir fent una rotació a la dreta
        rotar_dreta(ID_MOTOR_L, ID_MOTOR_R);

    }
    else if(distDreta==distEsq && distDreta<distCentre){ //MOVIMENT ESQUERRA
        printf("MOVIMENT ESQUERRA 2 \n ");
        rotar_esquerra(ID_MOTOR_L, ID_MOTOR_R);
        // Fem un while per comprovar cada cop si hi ha un obstacle a 10 mm del robot
        while(dyn_mem[SENSOR_MEM_ROW][DYN_REG__IR_CENTER]>0x0A){
            move_foward(ID_MOTOR_L, ID_MOTOR_R, velocitat);
        }
        // Quan trobi la pared l'haurà de resseguir fent una rotació a la dreta
        rotar_dreta(ID_MOTOR_L, ID_MOTOR_R);

        }






}

void evitar_obstacle(uint16_t speed){
    rotar_dreta(ID_MOTOR_L, ID_MOTOR_R);
    while(dyn_mem[SENSOR_MEM_ROW][DYN_REG__IR_LEFT]<0x0A){
        move_foward(ID_MOTOR_L, ID_MOTOR_R, speed );
    }
    rotar_esquerra(ID_MOTOR_L, ID_MOTOR_R);
    while(dyn_mem[SENSOR_MEM_ROW][DYN_REG__IR_LEFT]<0x0A){
        move_foward(ID_MOTOR_L, ID_MOTOR_R, speed );
    }
    rotar_esquerra(ID_MOTOR_L, ID_MOTOR_R);
    while(dyn_mem[SENSOR_MEM_ROW][DYN_REG__IR_CENTER]<0x0A){
        move_foward(ID_MOTOR_L, ID_MOTOR_R, speed );
    }
    rotar_dreta(ID_MOTOR_L, ID_MOTOR_R);
}

void resseguir(uint16_t speed){
    uint32_t y = INITIAL_POS_Y;
    while(y<4095){
        move_foward(ID_MOTOR_L, ID_MOTOR_R, speed);
        y++;
        if(dyn_mem[SENSOR_MEM_ROW][DYN_REG__IR_CENTER]<0x0A){
            evitar_obstacle(speed);
        }

    }
}

