#include <inttypes.h>
#include <avr/io.h>


//------------------------------------------------
// Programme Hello World pour carte à puce ISO 7816
// répond au reset
// reconnait une commande sortante "qui suis-je"
// 81 00 00 00 06 qui renvoie "Bonjour!"
// renvoie une erreur sur toute autre commande
//------------------------------------------------


// fonctions d'entrée/sortie écrites en assembleur dans le fichier io.s
extern void sendbytet0(uint8_t b);
extern uint8_t recbytet0(void);

// variables globales en static ram
uint8_t cla, ins, p1, p2, p3;  // en-tête de commande apdu
uint8_t sw1, sw2;              // status word

// Procédure qui renvoie l'ATR
void atr(uint8_t n, char* hist)
{
    sendbytet0(0x3b); 	// définition du protocole
    sendbytet0(n);		// nombre d'octets d'historique
    while(n--)			// Boucle d'envoi des octets d'historique
    {
        sendbytet0(*hist++);
    }
}

// commande qui suis-je ?
// envoie le message msg de taille t
void quisuisje(int t, char*msg)
{

     // vérification de la taille
    if (p3!=t)
	{
	    sw1=0x6c;	// P3 incorrect
        sw2=t;		// sw2 contient l'information de la taille correcte
		return;
    }
	sendbytet0(ins);	// acquittement
	while(t--)			// boucle d'envoi du message
	{
	    sendbytet0(*msg++);
	}
	sw1=0x90;
}


// Programme principal
//--------------------
int main()
{
  	// initialisation des ports
  	ACSR=0x80;      // désactive le comparateur analogique (réduit la consommation)
  	DDRA=0xff;
  	DDRB=0xff;
  	DDRC=0xff;
  	DDRD=0xbf;      // PD6 est une entrée
  	PORTA=0xff;
  	PORTB=0xff;
  	PORTC=0xff;
  	PORTD=0xbf;

  	// ATR
  	atr(12,"Hello World!");

  	// boucle de traitement des commandes
  	for(;;)
  	{
        // lecture d'une commande ISO
        cla=recbytet0();
    	ins=recbytet0();
    	p1=recbytet0();
    	p2=recbytet0();
    	p3=recbytet0();
    	sw2=0;
		switch (cla)
		{
	  	case 0x81:
            switch(ins)
			{
		  	case 0x00:
	        	quisuisje(8 ,"Bonjour!");
	        	break;
          	default:
		    	sw1=0x6d; // ins inconnu
        	}
			break;
      	default:
        	sw1=0x6e; // classe inconnue
		}
		sendbytet0(sw1); // status word
		sendbytet0(sw2);
  	}
  	return 0;
}

// fin de l'histoire
