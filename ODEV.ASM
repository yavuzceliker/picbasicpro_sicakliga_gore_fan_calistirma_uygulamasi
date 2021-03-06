
; PICBASIC PRO(TM) Compiler 3.1.2.2, (c) 1997, 2019 ME Labs, Inc. All Rights Reserved. 
MPASMX_USED			EQU	1

#define	PBP_PATH	C:\PROGRAM FILES (X86)\PBP3_1\




        NOLIST
    ifdef PM_USED
        LIST
        include 'M16F88.INC'	; PM header
        XALL
        NOLIST
    else
        LIST
        LIST p = 16F88, r = dec, w = -302, c = 255
        INCLUDE "P16F88.INC"	; MPASM  Header
        NOLIST
    endif
        LIST


PBP_HARDWAREDEF  macro
  endm


    __config _CONFIG1, _HS_OSC & _WDT_ON & _LVP_OFF & _CP_OFF



; Define statements.
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00144	DEFINE  CODE_SIZE 4
#define		CODE_SIZE		 4
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00007	DEFINE LCD_DREG		PORTB	'LCD data bacaklar� hangi porta ba�l�?
#define		LCD_DREG				PORTB	
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00008	DEFINE LCD_DBIT		4		'LCD data bacaklar� hangi bitten ba�l�yor?
#define		LCD_DBIT				4		
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00009	DEFINE LCD_EREG		PORTB	'LCD Enable Baca�� Hangi Porta ba�l�?
#define		LCD_EREG				PORTB	
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00010	DEFINE LCD_EBIT		3		'LCD Enable Baca�� Hangi bite ba�l� ?
#define		LCD_EBIT				3		
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00011	define LCD RWREG    PORTB   'LCD R/W Baca�� Hangi Porta ba�l�?
#define		LCD		 RWREG    PORTB   
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00012	define LCD_RWBIT    2       'LCD R/W Baca�� Hangi bite ba�l� ?
#define		LCD_RWBIT		    2       
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00013	DEFINE LCD_RSREG	PORTB	'LCD RS Baca�� Hangi Porta ba�l� ?
#define		LCD_RSREG			PORTB	
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00014	DEFINE LCD_RSBIT	1		'LCD RS baca�� Hangi Bite ba�l�  ?
#define		LCD_RSBIT			1		
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00015	DEFINE LCD_BITS		4		'LCD 4 bit mi yoksa 8 bit olarak ba�l�?
#define		LCD_BITS				4		
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00016	DEFINE LCD_LINES	2		'LCD Ka� s�ra yazabiliyor
#define		LCD_LINES			2		
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00018	DEFINE	ADC_BITS	10	    'A/D �evirim sonucu ka� bit olacak
#define		ADC_BITS			10	    
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00019	DEFINE	ADC_CLOCK	3	    'Clock kayna�� (3=rc)
#define		ADC_CLOCK			3	    
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00020	DEFINE	ADC_SAMPLEUS	100	'�rnekleme zaman� mikro saniye cinsinden.
#define		ADC_SAMPLEUS			100	

RAM_START       		EQU	00020h
RAM_END         		EQU	001EFh
RAM_BANKS       		EQU	00004h
BANK0_START     		EQU	00020h
BANK0_END       		EQU	0007Fh
BANK1_START     		EQU	000A0h
BANK1_END       		EQU	000EFh
BANK2_START     		EQU	00110h
BANK2_END       		EQU	0016Fh
BANK3_START     		EQU	00190h
BANK3_END       		EQU	001EFh
EEPROM_START    		EQU	02100h
EEPROM_END      		EQU	021FFh

; C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.RAM	00012	A00020	R0      VAR     WORD BANK0 SYSTEM       ' System Register
R0              		EQU	RAM_START + 000h
; C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.RAM	00013	A00022	R1      VAR     WORD BANK0 SYSTEM       ' System Register
R1              		EQU	RAM_START + 002h
; C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.RAM	00014	A00024	R2      VAR     WORD BANK0 SYSTEM       ' System Register
R2              		EQU	RAM_START + 004h
; C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.RAM	00015	A00026	R3      VAR     WORD BANK0 SYSTEM       ' System Register
R3              		EQU	RAM_START + 006h
; C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.RAM	00016	A00028	R4      VAR     WORD BANK0 SYSTEM       ' System Register
R4              		EQU	RAM_START + 008h
; C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.RAM	00017	A0002A	R5      VAR     WORD BANK0 SYSTEM       ' System Register
R5              		EQU	RAM_START + 00Ah
; C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.RAM	00018	A0002C	R6      VAR     WORD BANK0 SYSTEM       ' System Register
R6              		EQU	RAM_START + 00Ch
; C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.RAM	00019	A0002E	R7      VAR     WORD BANK0 SYSTEM       ' System Register
R7              		EQU	RAM_START + 00Eh
; C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.RAM	00020	A00030	R8      VAR     WORD BANK0 SYSTEM       ' System Register
R8              		EQU	RAM_START + 010h
; C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.RAM	00026	A00032	FLAGS   VAR     BYTE BANK0 SYSTEM       ' Static flags
FLAGS           		EQU	RAM_START + 012h
; C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.RAM	00025	A00033	GOP     VAR     BYTE BANK0 SYSTEM       ' Gen Op Parameter
GOP             		EQU	RAM_START + 013h
; C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.RAM	00022	A00034	RM1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Mask
RM1             		EQU	RAM_START + 014h
; C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.RAM	00024	A00035	RM2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Mask
RM2             		EQU	RAM_START + 015h
; C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.RAM	00021	A00036	RR1     VAR     BYTE BANK0 SYSTEM       ' Pin 1 Register
RR1             		EQU	RAM_START + 016h
; C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.RAM	00023	A00037	RR2     VAR     BYTE BANK0 SYSTEM       ' Pin 2 Register
RR2             		EQU	RAM_START + 017h
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00025	A00038	derece var word
_derece          		EQU	RAM_START + 018h
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00024	A0003A	HAM    var  word
_HAM             		EQU	RAM_START + 01Ah
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00026	A0003C	oran var word
_oran            		EQU	RAM_START + 01Ch
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00001	A0003E	
T1              		EQU	RAM_START + 01Eh
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00001	A00040	
T2              		EQU	RAM_START + 020h
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00145	PORTL   VAR     PORTB
_PORTL           		EQU	 PORTB
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00146	PORTH   VAR     PORTA
_PORTH           		EQU	 PORTA
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00147	TRISL   VAR     TRISB
_TRISL           		EQU	 TRISB
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00148	TRISH   VAR     TRISA
_TRISH           		EQU	 TRISA
#define _PORTB??2        	 PORTB, 002h
#define _ADCON0??2       	 ADCON0, 002h
#define _PORTA??1        	 PORTA, 001h
#define _PORTA??2        	 PORTA, 002h
#define _PORTA??3        	 PORTA, 003h
#define _PORTA??5        	 PORTA, 005h
	INCLUDE	"ODEV.MAC"
	INCLUDE	"C:\PROGRAM FILES (X86)\PBP3_1\PBPPIC14.LIB"


; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00036	#HEADER
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00060	#CONFIG
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00134	BANK0   $0020, $007F
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00135	BANK1   $00A0, $00EF
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00136	BANK2   $0110, $016F
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00137	BANK3   $0190, $01EF
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00139	EEPROM  $2100, $21FF
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00141	    #ERROR "-n option (PBPL) is not supported for this device."
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00142	#ENDIF
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00143	LIBRARY "PBPPIC14"
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00144	DEFINE  CODE_SIZE 4

; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00149	include "PBPPIC14.RAM"
; C:\PROGRAM FILES (X86)\PBP3_1\DEVICES\PIC16F88.PBPINC	00153	#HEADER

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00002	TRISA=%00000001
	MOVE?CB	001h, TRISA

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00003	TRISB=%00000000
	MOVE?CB	000h, TRISB
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00007	DEFINE LCD_DREG		PORTB	'LCD data bacaklar� hangi porta ba�l�?
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00008	DEFINE LCD_DBIT		4		'LCD data bacaklar� hangi bitten ba�l�yor?
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00009	DEFINE LCD_EREG		PORTB	'LCD Enable Baca�� Hangi Porta ba�l�?
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00010	DEFINE LCD_EBIT		3		'LCD Enable Baca�� Hangi bite ba�l� ?
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00011	define LCD RWREG    PORTB   'LCD R/W Baca�� Hangi Porta ba�l�?
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00012	define LCD_RWBIT    2       'LCD R/W Baca�� Hangi bite ba�l� ?
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00013	DEFINE LCD_RSREG	PORTB	'LCD RS Baca�� Hangi Porta ba�l� ?
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00014	DEFINE LCD_RSBIT	1		'LCD RS baca�� Hangi Bite ba�l�  ?
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00015	DEFINE LCD_BITS		4		'LCD 4 bit mi yoksa 8 bit olarak ba�l�?
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00016	DEFINE LCD_LINES	2		'LCD Ka� s�ra yazabiliyor
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00018	DEFINE	ADC_BITS	10	    'A/D �evirim sonucu ka� bit olacak
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00019	DEFINE	ADC_CLOCK	3	    'Clock kayna�� (3=rc)
; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00020	DEFINE	ADC_SAMPLEUS	100	'�rnekleme zaman� mikro saniye cinsinden.

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00022	ADCON1=%10001110 '7. bit 1 yap�ld� 10 bit sonu� almak i�in.
	MOVE?CB	08Eh, ADCON1

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00029	Low PORTB.2		' LCD R/W line low (W), �emada direkt GND ye ba�lanabilir.
	LOW?T	_PORTB??2

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00030	LCDOut $FE,1	' LCD de CLS yapar
	LCDOUT?C	0FEh
	LCDOUT?C	001h

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00031	pause 200       ' LCD nin a��lmas� i�in gerekli s�redir.
	PAUSE?C	0C8h

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00035	BASLA:

	LABEL?L	_BASLA	

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00036	          pause 100
	PAUSE?C	064h

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00037	    lcdout $FE,1
	LCDOUT?C	0FEh
	LCDOUT?C	001h

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00038	      ADCIN 0,HAM  '0 nolu kanaldan Analog de�eri oku ve RAW de�i�kenine aktar.
	ADCIN?CW	000h, _HAM

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00040	    lcdout $FE,1,"SICAKLIK:",#HAM*490/1000,"C"
	LCDOUT?C	0FEh
	LCDOUT?C	001h
	LCDOUT?C	053h
	LCDOUT?C	049h
	LCDOUT?C	043h
	LCDOUT?C	041h
	LCDOUT?C	04Bh
	LCDOUT?C	04Ch
	LCDOUT?C	049h
	LCDOUT?C	04Bh
	LCDOUT?C	03Ah
	MUL?WCW	_HAM, 001EAh, T1
	DIV?WCW	T1, 003E8h, T1
	LCDOUTD?W	T1
	LCDOUT?C	043h

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00041	BAK:  IF ADCON0.2=1 THEN BAK '�evirme i�lemi tamamlan�nca Adcon0.2=0 olacak.        

	LABEL?L	_BAK	

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00041	BAK:  IF ADCON0.2=1 THEN BAK '�evirme i�lemi tamamlan�nca Adcon0.2=0 olacak.        
	CMPEQ?TCL	_ADCON0??2, 001h, _BAK

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00042	      if HAM<=21 then 
	CMPGT?WCL	_HAM, 015h, L00001

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00043	        goto COKSOGUK
	GOTO?L	_COKSOGUK

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00044	      endif        
	LABEL?L	L00001	

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00046	      if HAM>21 and HAM<=41 then 
	CMPGT?WCB	_HAM, 015h, T1
	CMPLE?WCB	_HAM, 029h, T2
	LAND?BBW	T1, T2, T2
	CMPF?WL	T2, L00003

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00047	        goto SOGUK
	GOTO?L	_SOGUK

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00048	      endif        
	LABEL?L	L00003	

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00050	      if HAM>42 and HAM <=56 then 
	CMPGT?WCB	_HAM, 02Ah, T1
	CMPLE?WCB	_HAM, 038h, T2
	LAND?BBW	T1, T2, T2
	CMPF?WL	T2, L00005

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00051	        goto NORMAL
	GOTO?L	_NORMAL

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00052	      endif        
	LABEL?L	L00005	

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00054	      if HAM>56 and HAM<=78 then 
	CMPGT?WCB	_HAM, 038h, T1
	CMPLE?WCB	_HAM, 04Eh, T2
	LAND?BBW	T1, T2, T2
	CMPF?WL	T2, L00007

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00055	        goto SICAK
	GOTO?L	_SICAK

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00056	      endif        
	LABEL?L	L00007	

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00058	      if HAM>78 and HAM<134 then 
	CMPGT?WCB	_HAM, 04Eh, T1
	CMPLT?WCB	_HAM, 086h, T2
	LAND?BBW	T1, T2, T2
	CMPF?WL	T2, L00009

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00059	        goto COKSICAK
	GOTO?L	_COKSICAK

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00060	      endif
	LABEL?L	L00009	

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00062	      if HAM>=134 then 
	CMPLT?WCL	_HAM, 086h, L00011

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00063	        goto USTSINIR
	GOTO?L	_USTSINIR

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00064	      endif
	LABEL?L	L00011	

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00066	      goto BASLA              
	GOTO?L	_BASLA

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00068	COKSOGUK:

	LABEL?L	_COKSOGUK	

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00069	    lcdout $FE,$C0, "COK SOGUK"
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	043h
	LCDOUT?C	04Fh
	LCDOUT?C	04Bh
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	04Fh
	LCDOUT?C	047h
	LCDOUT?C	055h
	LCDOUT?C	04Bh

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00070	    PORTA.1=1
	MOVE?CT	001h, _PORTA??1

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00071	    PORTA.2=1
	MOVE?CT	001h, _PORTA??2

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00072	    PORTA.3=0
	MOVE?CT	000h, _PORTA??3

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00073	    PORTA.5=1
	MOVE?CT	001h, _PORTA??5

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00074	    goto BASLA
	GOTO?L	_BASLA

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00076	SOGUK:

	LABEL?L	_SOGUK	

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00077	    lcdout $FE,$C0, "SOGUK"
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	053h
	LCDOUT?C	04Fh
	LCDOUT?C	047h
	LCDOUT?C	055h
	LCDOUT?C	04Bh

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00078	    PORTA.1=1
	MOVE?CT	001h, _PORTA??1

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00079	    PORTA.2=0
	MOVE?CT	000h, _PORTA??2

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00080	    PORTA.3=0
	MOVE?CT	000h, _PORTA??3

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00081	    PORTA.5=1
	MOVE?CT	001h, _PORTA??5

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00082	    goto BASLA
	GOTO?L	_BASLA

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00084	NORMAL:

	LABEL?L	_NORMAL	

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00085	    lcdout $FE,$C0, "IDEAL"
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	049h
	LCDOUT?C	044h
	LCDOUT?C	045h
	LCDOUT?C	041h
	LCDOUT?C	04Ch

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00086	    PORTA.1=0
	MOVE?CT	000h, _PORTA??1

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00087	    PORTA.2=0
	MOVE?CT	000h, _PORTA??2

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00088	    PORTA.3=0
	MOVE?CT	000h, _PORTA??3

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00089	    PORTA.5=0
	MOVE?CT	000h, _PORTA??5

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00090	    goto BASLA
	GOTO?L	_BASLA

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00092	SICAK:         

	LABEL?L	_SICAK	

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00093	    lcdout $FE,$C0, "SICAK"
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	053h
	LCDOUT?C	049h
	LCDOUT?C	043h
	LCDOUT?C	041h
	LCDOUT?C	04Bh

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00094	    PORTA.1=1
	MOVE?CT	001h, _PORTA??1

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00095	    PORTA.2=0
	MOVE?CT	000h, _PORTA??2

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00096	    PORTA.3=1
	MOVE?CT	001h, _PORTA??3

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00097	    PORTA.5=0
	MOVE?CT	000h, _PORTA??5

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00098	    goto BASLA   
	GOTO?L	_BASLA

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00100	COKSICAK:     

	LABEL?L	_COKSICAK	

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00101	    lcdout $FE,$C0, "COK SICAK"
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	043h
	LCDOUT?C	04Fh
	LCDOUT?C	04Bh
	LCDOUT?C	020h
	LCDOUT?C	053h
	LCDOUT?C	049h
	LCDOUT?C	043h
	LCDOUT?C	041h
	LCDOUT?C	04Bh

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00102	    PORTA.1=1
	MOVE?CT	001h, _PORTA??1

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00103	    PORTA.2=1
	MOVE?CT	001h, _PORTA??2

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00104	    PORTA.3=1
	MOVE?CT	001h, _PORTA??3

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00105	    PORTA.5=0
	MOVE?CT	000h, _PORTA??5

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00106	    goto BASLA   
	GOTO?L	_BASLA

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00108	USTSINIR:     

	LABEL?L	_USTSINIR	

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00109	    lcdout $FE,$C0, "USTSINIR ASILDI"
	LCDOUT?C	0FEh
	LCDOUT?C	0C0h
	LCDOUT?C	055h
	LCDOUT?C	053h
	LCDOUT?C	054h
	LCDOUT?C	053h
	LCDOUT?C	049h
	LCDOUT?C	04Eh
	LCDOUT?C	049h
	LCDOUT?C	052h
	LCDOUT?C	020h
	LCDOUT?C	041h
	LCDOUT?C	053h
	LCDOUT?C	049h
	LCDOUT?C	04Ch
	LCDOUT?C	044h
	LCDOUT?C	049h

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00110	    PORTA.1=0
	MOVE?CT	000h, _PORTA??1

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00111	    PORTA.2=0
	MOVE?CT	000h, _PORTA??2

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00112	    PORTA.3=0
	MOVE?CT	000h, _PORTA??3

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00113	    PORTA.5=0
	MOVE?CT	000h, _PORTA??5

; C:\USERS\YAVUZ\DESKTOP\YAVUZODEVPROTEUS\ODEV.PBP	00114	    goto BASLA
	GOTO?L	_BASLA

	END
