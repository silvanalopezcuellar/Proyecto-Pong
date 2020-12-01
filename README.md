# Proyecto-Pong
En el presente documento se presenta la concepción, diseño e implementación de una versión propia del juego “pong”, basado en el deporte de tenis de mesa o ping pong, el cual es para 2 jugadores y consiste en que uno de los jugadores controla en el juego una paleta moviéndola verticalmente en el extremo izquierdo de la pantalla, mientras el otro jugador controla una segunda paleta en el extremo derecho. Los jugadores usan las paletas para pegarle a la pelota de forma que objetivo consiste en que uno de los jugadores consiga más puntos que el oponente al finalizar el juego. Estos puntos se obtienen cuando el jugador adversario falla al devolver la pelota. El proyecto fue implementado en VHDL por medio del programa Quartus II 13.0, utilizando la tarjeta de desarrollo de ALTERA DE0 Cyclone III EP3C16F484C6, el juego se diseñó de tal forma que puede visualizarse desde cualquier pantalla con entrada VGA, por medio de un cable VGA-VGA el cual se conecta directamente desde la tarjeta a la pantalla. Para los controles  de los jugadores se utilizaron Joysticks y el puntaje se muestra en 2 de los display LED 7 segmentos de la tarjeta. 

En el presente proyecto presenta la metodología seguida para el desarrollo del juego “pong”, se exponen las especificaciones del mismo junto con los requerimientos establecidos para el desarrollo del presente proyecto, sobre la forma de mostrar imágenes en una pantalla por medio de un conector VGA-VGA utilizando la FPGA de Altera. 

En la siguiente sección se presenta la concepción del diseño en diagrama de bloques y posteriormente en máquina de estados finitos de la arquitectura del juego, detallando cada uno de los mismos. Seguido a esto se presentan las pruebas de funcionamiento de los resultados obtenidos del proyecto, con sus respectivas simulaciones. También se presentan pantallazos de una implementación en una pantalla y de adjunta el link del video de la misma presentación del juego resultante. Se exponen las conclusiones del proyecto y las referencias utilizadas para el desarrollo del mismo.

En la carpeta VGA_Sync se encuentran los códigos de implementación del proyecto.
