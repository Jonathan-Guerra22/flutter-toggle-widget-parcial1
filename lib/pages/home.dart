import 'package:flutter/material.dart';

/* 
  Se utiliza StatefulWidget para poder hacer cambios de estado
  en la pagina que en este caso seran cambios de color al 
  interactuar ya sea con el CHECKBOX o con el SWITCH.
*/
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  /*
    Se crearon 2 variables(check y check2), esto con el fin de
    manipular estados, ya que estas variables con de tipo 
    boolean, sera false o true y de esta forma se puede cambiar
    mucho mas sencillo el estado.
  */
  bool check = false;
  bool check2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      /*
        Se declara la propiedad de backgroundColor haciendo una 
        condicion, en la cual pregunta si check2 tiene como valor 
        actual true, si es el caso colocara el fonde de color lima,
        en caso contrario, el fondo sera de color azul.
       */
      backgroundColor: check2 ? Colors.lime : Colors.blue,
      /*
        Se usa en la propiedad body, la propiedad de container ya que
        se necesita dividir la pantalla en 2, por lo cual se requiere
        la propiedad de Column, donde este contendra como hijos(children):
        
        - 1. Un contenedor que con el uso de media query para el ancho y alto 
        se cuadra para poder dividir la pantalla en 2. Ademas de esto, el hijo
        de este contenedor, sera el primer widget a implementar/usar que es el
        de Checkbox.

        - 2. 
      */
      body: Container(
          child: Column(
        children: [
          Container(
            // Uso de media query para usar valores de ancho y alto segun sea el dispositivo
            width: MediaQuery.of(context).size.width,
            // Este media query se duvide por 2 para dividir la pantalla en 2
            height: (MediaQuery.of(context).size.height) / 2,
            /*
              Asi como se hizo con el background general, se usa una condicion que
              evalue si check es verdadero para que el color del contenedor sea rojo,
              pero en caso contrario si check es falso el contenedor tendra el color verde
            */
            color: check ? Colors.red : Colors.green,

            // Uso de widget Checkbox
            child: Checkbox(
              // La propiedad checkColor declara el color que se le desea poner al Checkbox
              checkColor: Colors.white,
              // Como el nombre lo dice es el valor que el checkbox tomara
              value: check,
              /* 
                En este caso el onChanged para lo que ayuda es a poder cambiar el 
                estado/valor de la  variable check
              */
              onChanged: (bool? value) {
                setState(() {
                  check = value!;
                });
              },
            ),
          ),

          // Uso de widget Switch
          Switch(
              // Como el nombre lo dice es el valor que el checkbox tomar
              value: check2,
              /* 
                Asi como en el checkbox, la propiedad onChanged para lo que ayuda es 
                a poder cambiar el estado/valor de la  variable check2
              */
              onChanged: (bool? value) {
                setState(() {
                  check2 = value!;
                });
              })
        ],
      )),
    );
  }
}
