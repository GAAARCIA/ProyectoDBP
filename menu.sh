#!/bin/bash
#menu agile
function _menu_a() {
  clear
  echo "Bienvenido a la guía rápida de metodologías ágiles, para continuar seleccione un tema:"
  echo "1. SCRUM"
  echo "2. X.P."
  echo "3. Kanban"
  echo "4. Crystal"
  echo "5. Salir"
}
#menu tradicional
function _menu_t() {
  clear
  echo ""
  echo "Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema:"
  echo "1. Cascada"
  echo "2. Espiral"
  echo "3. Modelo V"
  echo "4. Salir "
}
#menu informacion
function _menu_i() {
  nombre=($nombre_seccion)
  clear
  echo "Usted esta en la sección $nombre, seleccione la opción que desea utilizar."
  echo "1. Agregar información"
  echo "2. Buscar"
  echo "3. Eliminar información"
  echo "4. Leer base de información"
  echo "5. Regresar al menu de metodologias"
}

function _terminar() {
  read -p "Desea regresar al menu de metodologias? (si/no): " opcionFinal
  if [ $opcionFinal == no ]; then
    exit
  else
    bash menu.sh $opcionInicial | $opcionMenuRegreso
  fi
}

opcionInicial=$1
opcionMenuRegreso=0
ejecutar=1

while [ $ejecutar -ne 0 ]; do
  nombre_seccion=""
  if [ $1 == ""]; then
    echo "Parametro inesperado. Por favor vuelva a ejecutar y seleccione un parametro."
    echo "-a"
    echo "-t"
  elif [ $1 == -a ]; then
    _menu_a
    read opcion1
    case $opcion1 in
    1)
      nombre_seccion="SCRUM"
      _menu_i
      read op1
      case $op1 in
      1)
        #Agrega información al archivo SCRUM.inf
        opcionMenuRegreso=0
        _terminar
        ;;
      2)
        #Buscar información en el archivo SCRUM.inf
        _terminar
        ;;
      3)
        #Elimina información del archivo SCRUM.inf
        _terminar
        ;;
      4)
        #Lee información del archivo SCRUM.inf
        _terminar
        ;;

      esac
      ;;
    2)
      nombre_seccion="X.P."
      _menu_i
      read op2
      case $op2 in
      1)
        #Agrega información al archivo XP.inf
        _terminar
        ;;
      2)
        #Buscar información en el archivo XP.inf
        _terminar
        ;;
      3)
        #Elimina información del archivo XP.inf
        _terminar
        ;;
      4)
        #Lee información del archivo XP.inf
        _terminar
        ;;
      esac
      ;;
    3)
      nombre_seccion="Kanban"
      _menu_i
      read op3
      case $op3 in
      1)
        #Agrega información al archivo Kanban.inf
        _terminar
        ;;
      2)
        #Buscar información en el archivo Kanban.inf
        _terminar
        ;;
      3)
        #Elimina información del archivo Kanban.inf
        _terminar
        ;;
      4)
        #Lee información del archivo Kanban.inf
        _terminar
        ;;
      esac
      ;;
    4)
      nombre_seccion="Crystal"
      _menu_i
      read op4
      case $op4 in
      1)
        #Agrega información al archivo Crystal.inf
        _terminar
        ;;
      2)
        #Buscar información en el archivo Crystal.inf
        _terminar
        ;;
      3)
        #Elimina información del archivo Crystal.inf
        _terminar
        ;;
      4)
        #Lee información del archivo Crystal.inf
        _terminar
        ;;
      esac
      ;;
    5)
      exit
      ;;
    esac
  elif [ $1 == -t ]; then
    _menu_t
    read opcion2
    case $opcion2 in
    1)
      nombre_seccion="Cascada"
      _menu_i
      read opc1
      case $opc1 in
      1)
        #Agrega información al archivo Cascada.inf
        _terminar
        ;;
      2)
        #Buscar información en el archivo Cascada.inf
        _terminar
        ;;
      3)
        #Elimina información del archivo Cascada.inf
        _terminar
        ;;
      4)
        #Lee información del archivo Cascada.inf
        _terminar
        ;;
      esac
      ;;
    2)
      nombre_seccion="Espiral"
      _menu_i
      read opc2
      case $opc2 in
      1)
        #Agrega información al archivo Espiral.inf
        read -p "Escriba el nombre del concepto: " concepto
        read -p "Escriba la definición del concepto: " definicion

        echo "[$concepto].- $definicion" >>./ESPIRAL.inf

        _terminar
        ;;
      2)
        #Buscar información en el archivo Espiral.inf
        read -p "Escriba el concepto que busca: " concepto
        grep $concepto ./ESPIRAL.inf
        _terminar
        ;;
      3)
        #Elimina información del archivo Espiral.inf
        _terminar
        ;;
      4)
        #Lee información del archivo Espiral.inf
        _terminar
        cat ./ESPIRAL.inf
        ;;
      esac
      ;;
    3)
      nombre_seccion="ModeloV"
      _menu_i
      read opc3
      case $opc3 in
      1)
        #Agrega información al archivo ModeloV.inf
        _terminar
        ;;
      2)
        #Buscar información en el archivo ModeloV.inf
        _terminar
        ;;
      3)
        #Elimina información del archivo ModeloV.inf
        _terminar
        ;;
      4)
        #Lee información del archivo ModeloV.inf
        _terminar
        ;;
      esac
      ;;
    4)
      exit
      ;;
    esac
  else
    echo "Parametro inesperado. Por favor vuelva a ejecutar y seleccione un parametro."
    echo "-a"
    echo "-t"
    ejecutar=0

  fi

done