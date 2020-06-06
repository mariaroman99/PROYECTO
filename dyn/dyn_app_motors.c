/*
 * dyn_app_motors.c
 */
#include <pthread.h>
#include <signal.h>
#include <assert.h>
#include <stdio.h>
#include <inttypes.h>

#include <stdlib.h>
#include <string.h>



#include "dyn/dyn_frames.h"
#include "dyn/dyn_app_motors.h"
#include "dyn_app_motors.h"
#include "dyn_frames.h"
#include "dyn_test/dyn_emu.h"
#include "../dyn_test/movement_simulator.h"
#include "../dyn_test/dyn_emu.h"
#include "../posicion.h"



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
	int paret = pared_mes_propera();

	//Cridem a la funció

}

int pared_mes_propera(){
    uint32_t distEsq = INITIAL_POS_X;
    uint32_t y = INITIAL_POS_Y;
    uint32_t distCentre = 0x1000-y;
    uint32_t distDreta = 0x1000-distEsq;
    uint16_t velocitat = 0xFF;
    printf("Esquerra, dreta i centre \n");
    printf("\n");
    printf("%" PRIu32, distCentre);
    printf("\n");
    printf("%" PRIu8, distEsq);
    printf("\n");
    printf("%" PRIu8, distDreta);
    printf("  principi \n");
    if (distEsq <= distCentre && distEsq < distDreta){//MOVIMENT ESQUERRA
        move_left(ID_MOTOR_L, ID_MOTOR_R, velocitat);
        uint32_t coordX = distEsq;
        printf("MOVIMENT ESQUERRA \n");
        // Fem un while per comprovar cada cop si hi ha un obstacle a 2 mm del robot
        while(coordX>2){
            move_foward(ID_MOTOR_L, ID_MOTOR_R, velocitat);
            coordX--;
        }
        printf("%" PRIu8, coordX);
        // Quan trobi la pared l'haurà de resseguir fent una rotació a la dreta
        //move_right(ID_MOTOR_L, ID_MOTOR_R, SIM_STEP_MS_TIME);
        return 1; //Assignem arbitràriament que la paret esquerra serà 1
    }
    else if (distCentre < distEsq && distCentre < distDreta){ //MOVIMENT CENTRE
        move_foward(ID_MOTOR_L, ID_MOTOR_R, velocitat);
        uint32_t coordCentre= distCentre;
        printf("MOVIMENT CENTRE \n");
        // Fem un while per comprovar cada cop si hi ha un obstacle a 2 mm del robot
        while(coordCentre>2){
            move_foward(ID_MOTOR_L, ID_MOTOR_R, velocitat);
            coordCentre--;
        }
        // Quan trobi la pared l'haurà de resseguir fent una rotació a la dreta
        //move_right(ID_MOTOR_L, ID_MOTOR_R, SIM_STEP_MS_TIME);
        return 2; //Assignem arbitràriament que la paret central serà 2
    }
    else if (distDreta <= distCentre && distDreta < distEsq){ //MOVIMENT DRETA
        move_right(ID_MOTOR_L, ID_MOTOR_R, velocitat);
        uint32_t coordX = distDreta;
        printf("MOVIMENT DRETA \n");
        // Fem un while per comprovar cada cop si hi ha un obstacle a 2 mm del robot
        while(coordX>2){
            move_foward(ID_MOTOR_L, ID_MOTOR_R, velocitat);
            coordX--;
        }
        // Quan trobi la pared l'haurà de resseguir fent una rotació a l'esquerra
        move_left(ID_MOTOR_L, ID_MOTOR_R, velocitat);
        return 3; //Assignem arbitràriament que la paret central serà 3
    }
    else if(distDreta==distCentre && distDreta==distEsq){ //MOVIMENT ESQUERRA
        move_left(ID_MOTOR_L, ID_MOTOR_R, velocitat);
        uint32_t coordX = INITIAL_POS_X;
        printf("MOVIMENT ESQUERRA 1 \n");
        // Fem un while per comprovar cada cop si hi ha un obstacle a 2 mm del robot
        while(coordX>2){
            move_foward(ID_MOTOR_L, ID_MOTOR_R, velocitat);
            coordX--;
        }
        // Quan trobi la pared l'haurà de resseguir fent una rotació a la dreta
        move_right(ID_MOTOR_L, ID_MOTOR_R, velocitat);
        return 1;
    }
    else if(distDreta==distEsq && distDreta<distCentre){ //MOVIMENT ESQUERRA
        move_left(ID_MOTOR_L, ID_MOTOR_R, velocitat);
        uint32_t coordX = INITIAL_POS_X;
        printf("MOVIMENT ESQUERRA 2 \n ");
        // Fem un while per comprovar cada cop si hi ha un obstacle a 2 mm del robot
        while(coordX>2){
            move_foward(ID_MOTOR_L, ID_MOTOR_R, velocitat);
            coordX--;
        }
        // Quan trobi la pared l'haurà de resseguir fent una rotació a la dreta
        move_right(ID_MOTOR_L, ID_MOTOR_R, velocitat);
        return 1;
        }

    return 0;

}
