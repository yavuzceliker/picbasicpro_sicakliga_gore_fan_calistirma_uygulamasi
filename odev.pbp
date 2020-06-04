
TRISA=%00000001
TRISB=%00000000
'-------------------------------------------------------------------------------

'-------------------------------------------------------------------------------
DEFINE LCD_DREG		PORTB	'LCD data bacaklarý hangi porta baðlý?
DEFINE LCD_DBIT		4		'LCD data bacaklarý hangi bitten baþlýyor?
DEFINE LCD_EREG		PORTB	'LCD Enable Bacaðý Hangi Porta baðlý?
DEFINE LCD_EBIT		3		'LCD Enable Bacaðý Hangi bite baðlý ?
define LCD RWREG    PORTB   'LCD R/W Bacaðý Hangi Porta baðlý?
define LCD_RWBIT    2       'LCD R/W Bacaðý Hangi bite baðlý ?
DEFINE LCD_RSREG	PORTB	'LCD RS Bacaðý Hangi Porta baðlý ?
DEFINE LCD_RSBIT	1		'LCD RS bacaðý Hangi Bite baðlý  ?
DEFINE LCD_BITS		4		'LCD 4 bit mi yoksa 8 bit olarak baðlý?
DEFINE LCD_LINES	2		'LCD Kaç sýra yazabiliyor

DEFINE	ADC_BITS	10	    'A/D çevirim sonucu kaç bit olacak
DEFINE	ADC_CLOCK	3	    'Clock kaynaðý (3=rc)
DEFINE	ADC_SAMPLEUS	100	'Örnekleme zamaný mikro saniye cinsinden.
'-------------------------------------------------------------------------------
ADCON1=%10001110 '7. bit 1 yapýldý 10 bit sonuç almak için.
'-------------------------------------------------------------------------------
HAM    var  word
derece var word
oran var word

'-------------------------------------------------------------------------------
Low PORTB.2		' LCD R/W line low (W), þemada direkt GND ye baðlanabilir.
LCDOut $FE,1	' LCD de CLS yapar
pause 200       ' LCD nin açýlmasý için gerekli süredir.
'------------------------------------------------------------------------------- 

   
BASLA:
          pause 100
    lcdout $FE,1
      ADCIN 0,HAM  '0 nolu kanaldan Analog deðeri oku ve RAW deðiþkenine aktar.
             
    lcdout $FE,1,"SICAKLIK:",#HAM*490/1000,"C"
BAK:  IF ADCON0.2=1 THEN BAK 'Çevirme iþlemi tamamlanýnca Adcon0.2=0 olacak.        
      if HAM<=21 then 
        goto COKSOGUK
      endif        
     
      if HAM>21 and HAM<=41 then 
        goto SOGUK
      endif        
     
      if HAM>42 and HAM <=56 then 
        goto NORMAL
      endif        
     
      if HAM>56 and HAM<=78 then 
        goto SICAK
      endif        
     
      if HAM>78 and HAM<134 then 
        goto COKSICAK
      endif
      
      if HAM>=134 then 
        goto USTSINIR
      endif
      
      goto BASLA              
                                                                             
COKSOGUK:
    lcdout $FE,$C0, "COK SOGUK"
    PORTA.1=1
    PORTA.2=1
    PORTA.3=0
    PORTA.5=1
    goto BASLA
                                                                                 
SOGUK:
    lcdout $FE,$C0, "SOGUK"
    PORTA.1=1
    PORTA.2=0
    PORTA.3=0
    PORTA.5=1
    goto BASLA
                                                                            
NORMAL:
    lcdout $FE,$C0, "IDEAL"
    PORTA.1=0
    PORTA.2=0
    PORTA.3=0
    PORTA.5=0
    goto BASLA
                                                                                 
SICAK:         
    lcdout $FE,$C0, "SICAK"
    PORTA.1=1
    PORTA.2=0
    PORTA.3=1
    PORTA.5=0
    goto BASLA   
                                                                  
COKSICAK:     
    lcdout $FE,$C0, "COK SICAK"
    PORTA.1=1
    PORTA.2=1
    PORTA.3=1
    PORTA.5=0
    goto BASLA   
                                                                  
USTSINIR:     
    lcdout $FE,$C0, "USTSINIR ASILDI"
    PORTA.1=0
    PORTA.2=0
    PORTA.3=0
    PORTA.5=0
    goto BASLA

