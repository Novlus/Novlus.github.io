	
;---------------------------------------------------------------------------------------

;faire une calculatrice

;---------------------------------------------------------------------------------------

TITLE DISPLAY -programme prototype

.286

;----------------------------------------------------------------------------------------STACK segment

SSEG SEGMENT STACK

DB 32 DUP("STACK---")

SSEG ENDS

;----------------------------------------------------------------------------------------DATA segment



DSEG SEGMENT

TITRE1 DB ' / ====================================/ ',10,24H ;10 = fin de ligne

TITRE2 DB ' / PROJET ASSEMBLEUR /',10,24H ;=24H code ASCII en hexa decimal de $

TITRE3 DB ' / CALCULATRICE /',10,24H

TITRE4 DB ' / PAR : WOILLARD Eric ET /',10,24H

TITRE5 DB ' / CREMON Damien /',10,24H

TITRE6 DB '/=====================================/',10,24H

MENU DB ' 1:(+) 2:(-) 3:(x)',10,' taper le numero de votre operation: ',24H



RET_LIGNE DB ' ',24H

SYMB_ADD DB ' + ',24H

SYMB_SOU DB ' - ',24H

SYMB_MUL DB ' x ',24H

SYMB_EGAL DB ' = ',24H



QUITTER DB ' > quitter (o/n)?',24H

OK DB 13 ;13 = saut charriot (saut de ligne)

ASCII_RET DB 8 ; retour arriere

SUPPRIMER DB 8,' ',8,24H

DSEG ENDS

;------------------------------------------------------------------------------------------------ CODE segment

CSEG SEGMENT 'CODE'

ASSUME CS:CSEG, SS:SSEG, DS:DSEG

RETOUR_LIGNE PROC NEAR

PUSH AX

PUSH DX

MOV DL,10;fin de ligne

MOV AH,2;interruption 21H fonction 2 par rapport à AH qui la vaut 2 donc affichage de texte

INT 21H

POP DX

POP AX

RET

RETOUR_LIGNE ENDP

SCANINT PROC NEAR

;output di



PUSH AX

PUSH BX

PUSH CX

PUSH DX

MOV DI,0

MOV CX,4; limiter taille du nombre à 4 chiffres

SILECTURECARACTERE:

MOV AH,8

INT 21H ; 21H interruption fonction 8 saisie clavier

; valeur saisie --> AL

CMP AL,ASCII_RET

JE SIACTION_SUPPR

CMP AL,OK

JE SIACTION_OK

CMP CX,0

JE SILECTURECARACTERE

CMP AL,48; 48 = 0 en ascii

JB SILECTURECARACTERE

CMP AL,57;57 = 9 en ascii

JA SILECTURECARACTERE

MOV DL,AL

MOV AH,2

INT 21H; 21H interruption fonction 2 affichage à l'écran

SUB AL,48

;di=number al=digit

MOV BL,AL ;bl=digit

MOV AX,10

MUL DI ;dx:ax=di x 10

ADD AL,BL ;ax = ax + digit

MOV DI,AX

;di=number

DEC CX



JMP SILECTURECARACTERE



SIACTION_SUPPR:

CMP CX,4

JNB SILECTURECARACTERE; = rien avant

LEA DX, SUPPRIMER

MOV AH,9

INT 21H; interrutpion 21 fonction 9 envoie d'un message entier à l'écran

;di=number

MOV DX,0

MOV AX,DI

MOV BX,10

DIV BX ;dx:ax DIV bx => AX (MOD => DX)

MOV DI,AX ;di <= di div 10

;

INC CX

JMP SILECTURECARACTERE



SIACTION_OK:

CMP CX,4

JNE SIFIN

MOV DL,48

MOV AH,2

INT 21H



SIFIN:

POP DX

POP CX

POP BX

POP AX

RET

SCANINT ENDP





SCANINTMULT PROC NEAR

;output di



PUSH AX

PUSH BX

PUSH CX

PUSH DX

MOV DI,0

MOV CX,2; limiter taille du nombre à 2 chiffres

SILECTURECARACTEREMULT:

MOV AH,8

INT 21H ; 21H interruption fonction 8 saisie clavier

; valeur saisie --> AL

CMP AL,ASCII_RET

JE SIACTION_SUPPRMULT

CMP AL,OK

JE SIACTION_OKMULT

CMP CX,0

JE SILECTURECARACTERE

CMP AL,48; 48 = 0 en ascii

JB SILECTURECARACTERE

CMP AL,57;57 = 9 en ascii

JA SILECTURECARACTERE

MOV DL,AL

MOV AH,2

INT 21H; 21H interruption fonction 2 affichage à l'écran

SUB AL,48

;di=number al=digit

MOV BL,AL ;bl=digit

MOV AX,10

MUL DI ;dx:ax=di x 10

ADD AL,BL ;ax = ax + digit

MOV DI,AX

;di=number

DEC CX



JMP SILECTURECARACTEREMULT



SIACTION_SUPPRMULT:

CMP CX,4

JNB SILECTURECARACTEREMULT; = rien avant

LEA DX, SUPPRIMER

MOV AH,9

INT 21H; interrutpion 21 fonction 9 envoie d'un message entier à l'écran

;di=number

MOV DX,0

MOV AX,DI

MOV BX,10

DIV BX ;dx:ax DIV bx => AX (MOD => DX)

MOV DI,AX ;di <= di div 10

;

INC CX

JMP SILECTURECARACTEREMULT



SIACTION_OKMULT:

CMP CX,4

JNE SIFINMULT

MOV DL,48

MOV AH,2

INT 21H



SIFINMULT:

POP DX

POP CX

POP BX

POP AX

RET

SCANINTMULT ENDP



PRINTINT16 PROC NEAR

;input di

PUSH AX

PUSH BX

PUSH CX

PUSH DX



MOV CX,0

MOV AX,DI;résultat de l'opération

MOV BX,10



PI16CALC_DIGITS:

MOV DX,0

DIV BX;AX = quotient; DX = reste

PUSH DX

INC CX

CMP AX,0

JNE PI16CALC_DIGITS



PI16AFF_DIGITS:

POP DX

ADD DL,48

MOV AH,2

INT 21H

LOOP PI16AFF_DIGITS



POP DX

POP CX

POP BX

POP AX

RET

PRINTINT16 ENDP





PROG_ADDITION PROC NEAR

PUSH AX

PUSH DX

PUSH SI

PUSH DI

;' '

LEA DX,RET_LIGNE

MOV AH,9

INT 21H; interruption 21h fonction 9 afficher retour à la ligne

;nbr 1 dans si

CALL SCANINT

MOV SI,DI

;' + '

LEA DX,SYMB_ADD

MOV AH,9

INT 21H

;nbr 2 dans di

CALL SCANINT

;' = '

LEA DX,SYMB_EGAL

MOV AH,9

INT 21H

;result

ADD DI,SI

CALL PRINTINT16

CALL RETOUR_LIGNE



POP DI

POP SI

POP DX

POP AX

RET

PROG_ADDITION ENDP







PROG_SOUSTRACTION PROC near ; near = désigne une etiquette dans le segment

PUSH AX

PUSH DX

PUSH SI

PUSH DI

;' '

LEA DX,RET_LIGNE

MOV AH,9

INT 21H

;nbr 1 dans si

CALL SCANINT

MOV SI,DI

;' - '

LEA DX,SYMB_SOU

MOV AH,9

INT 21H

;nbr 2 dans di

CALL SCANINT

;' = '

LEA DX,SYMB_EGAL

MOV AH,9

INT 21H

;resultat

SUB SI,DI

JNS SOUS_FIN ;jns jump si not sign

;resultat negatif

MOV DL,'-'

MOV AH,2

INT 21H

NEG SI ; neg complément à deux négation

SOUS_FIN:

MOV DI,SI

CALL PRINTINT16

CALL RETOUR_LIGNE



POP DI

POP SI

POP DX

POP AX

RET

PROG_SOUSTRACTION ENDP



PROG_MULTIPLICATION PROC NEAR

;mul source ->> dx:ax = ax * source

PUSH AX

PUSH DX

PUSH SI

PUSH DI



;' '

LEA DX,RET_LIGNE

MOV AH,9

INT 21H

;nbr 1 dans si

CALL SCANINTMULT

MOV SI,DI

;' x '

LEA DX,SYMB_MUL

MOV AH,9

INT 21H

;nbr 2 dans di

CALL SCANINTMULT

;' = '

LEA DX,SYMB_EGAL

MOV AH,9

INT 21H

;resultat

MOV AX,SI

MUL DI ;=> dx:ax = ax * di

MOV SI,DX

MOV DI,AX

CALL PRINTINT16

CALL RETOUR_LIGNE



POP DI

POP SI

POP DX

POP AX

RET

PROG_MULTIPLICATION ENDP





PROG PROC NEAR

MOV AX,DSEG

MOV DS,AX



;affichage de l'entete

MOV AH,9

LEA DX,TITRE1

INT 21H

LEA DX,TITRE2

INT 21H

LEA DX,TITRE3

INT 21H

LEA DX,TITRE4

INT 21H

LEA DX,TITRE5

INT 21H

LEA DX,TITRE6

INT 21H ;interrupption 21h fonction 9 affichage de chaine de caractere



P_MENU:;afichage du menu

MOV AH,9

LEA DX,MENU

INT 21H

;choix

MOV AH,1

INT 21H

CALL RETOUR_LIGNE

;test selection

P_ADDITION:

CMP AL,'1'

JNE P_SOUSTRACTION

CALL PROG_ADDITION

JMP P_REPETITION

P_SOUSTRACTION:

CMP AL,'2'

JNE P_MULTIPLICATION

CALL PROG_SOUSTRACTION

JMP P_REPETITION

P_MULTIPLICATION:

CMP AL,'3'

JNE P_MENU

CALL PROG_MULTIPLICATION

JMP P_REPETITION



P_REPETITION:

MOV AH,9

LEA DX, QUITTER

INT 21H

;saisi de la reponse

MOV AH,1

INT 21H

CALL RETOUR_LIGNE

;traitement

CMP AL,'n'

JE P_MENU

CMP AL,'o'

JNE P_REPETITION

P_FIN:

MOV AX,4C00H ;retour au DOS

INT 21H



PROG ENDP

CSEG ENDS

END PROG

;-----------------------------------------------------------------------------
