#!/bin/bash
#Esta funcion muestra el menú
function _menu(){
  clear
  echo ""
  echo "---PROYECTO DEL PRIMER PARCIAL---"
  echo "-a. Metodologías Ágiles"
  echo "-t. Metodologías Tradicionales"
  echo "-x. Salir"
  echo "Ingresa una opción: "
}
#menu agile
function _menu_a(){
  clear
  echo ""
  echo "Bienvenido a la guía rápida de Agile, para continuar seleccione un tema:"
  echo "1. SCRUM"
  echo "2. X.P."
  echo "3. Kanban"
  echo "4. Crystal"
  echo "5. Salir al menu principal."
  echo "Ingresa una opción: "
}
#menu tradicional
function _menu_t(){
  clear
  echo ""
  echo "Bienvenido a la guía rápida de metodologías tradicionales, para continuar seleccione un tema:"
  echo "1. Cascada"
  echo "2. Espiral"
  echo "3. Modelo V"
  echo "4. Salir al menú principal."
  echo "Ingresa una opción: "
}
#menu informacion
function _menu_i(){
echo "1. Agregar información"
echo "2. Buscar"
echo "3. Eliminar información"
echo "4. Leer base de información"
}

opc=""
until [ "$opc" = "x" ]
do
    case $opc in
        -a)
            opc_a=0
            until [ $opc_a -eq 5 ]
            do
                case $opc_a in
                    1)
                        clear
                        echo " SCRUM "
				        _menu_i
				        read -p "Seleccione la opción que desea utilizar: " op1
					        case $op1 in
						        1)
							        #Agrega información al archivo SCRUM.inf
								        ;;
						        2)
							        #Buscar información en el archivo SCRUM.inf
								        ;;
						        3)
							        #Elimina información del archivo SCRUM.inf
								        ;;
						        4)
							        #Lee información del archivo SCRUM.inf
								        ;;
						        esac
					        ;;
                    2)
                        clear
                        echo " X.P. "
				        _menu_i
				        read -p "Seleccione la opción que desea utilizar: " op2
					        case $op2 in
						        1)
							        #Agrega información al archivo X.P..inf
								        ;;
						        2)
							        #Buscar información en el archivo X.P..inf
								        ;;
						        3)
							        #Elimina información del archivo X.P..inf
								        ;;
						        4)
							        #Lee información del archivo X.P..inf
								        ;;
						        esac
					        ;;
                    3)
                        clear
                        echo " KANBAN "
				        _menu_i
				        read -p "Seleccione la opción que desea utilizar: " op3
					        case $op3 in
						        1)
							        #Agrega información al archivo KANBAN.inf
								        ;;
						        2)
							        #Buscar información en el archivo KANBAN.inf
								        ;;
						        3)
							        #Elimina información del archivo KANBAN.inf
								        ;;
						        4)
							        #Lee información del archivo KANBAN.inf
								        ;;
						        esac
					        ;;
                    4)
                        clear
                        echo " CRYSTAL "
				        _menu_i
				        read -p "Seleccione la opción que desea utilizar: " op4
					        case $op4 in
						        1)
							        #Agrega información al archivo CRYSTAL.inf
								        ;;
						        2)
							        #Buscar información en el archivo CRYSTAL.inf
								        ;;
						        3)
							        #Elimina información del archivo CRYSTAL.inf
								        ;;
						        4)
							        #Lee información del archivo CRYSTAL.inf
								        ;;
						        esac
					        ;;
                    *)
                        _menu_a
                esac
                read opc_a
            done
            ;;
        -t)
            opc_t=0
            until [ $opc_t -eq 4 ]
            do
                case $opc_t in
                    1)
                        clear
                        _menu_i
				        read -p "Seleccione la opción que desea utilizar: " op1
					        case $op1 in
						        1)
							        #Agrega información al archivo CASCADA.inf
								        ;;
						        2)
							        #Buscar información en el archivo CASCADA.inf
								        ;;
						        3)
							        #Elimina información del archivo CASCADA.inf
								        ;;
						        4)
							        #Lee información del archivo CASCADA.inf
								        ;;
						        esac
					        ;;
                    2)
                        clear
                        echo " ESPIRAL "
				        _menu_i
				        read -p "Seleccione la opción que desea utilizar: " op2
					        case $op2 in
						        1)
							        #Agrega información al archivo ESPIRAL.inf
								        ;;
						        2)
							        #Buscar información en el archivo ESPIRAL.inf
								        ;;
						        3)
							        #Elimina información del archivo ESPIRAL.inf
								        ;;
						        4)
							        #Lee información del archivo ESPIRAL.inf
								        ;;
						        esac
					        ;;
                    3)
                        clear
                        echo " MODELO V "
                        _menu_i
				        read -p "Seleccione la opción que desea utilizar: " op3
					        case $op3 in
						        1)
							        #Agrega información al archivo MODELOV.inf
								        ;;
						        2)
							        #Buscar información en el archivo MODELOV.inf
								        ;;
						        3)
							        #Elimina información del archivo MODELOV.inf
								        ;;
						        4)
							        #Lee información del archivo MODELOV.inf
								        ;;
						        esac
					        ;;
                    *)
                        _menu_t
                esac
                read opc_t
            done
            ;;
        *)
            _menu
    esac
    read opc
done
