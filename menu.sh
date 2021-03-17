#!/bin/bash

echo "---BIENVENIDO AL MENU PRINCIPAL---"

if [ $1 == -a ];then
	echo "METODOLOGIAS AGILES"
	echo " 1. SCRUM"
	echo " 2. X.P"
	echo " 3. Kanban"
	echo " 4. Crystal"
	read -p "Seleccione la opción que desea utilizar: " opcion1
		case $opcion1 in
			1)
				echo " SCRUM "
				echo "1. Agregar información"
				echo "2. Buscar"
				echo "3. Eliminar información"
				echo "4. Leer base de información"
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
				echo " X.P "
                                echo "1. Agregar información"
                                echo "2. Buscar"
                                echo "3. Eliminar información"
                                echo "4. Leer base de información"
				read -p "Seleccione la opción que desea utilizar: " op2
                                        case $op2 in
                                                1)
                                                        #Agrega información al archivo XP.inf
								;;
                                                2)
                                                        #Buscar información en el archivo XP.inf
								;;
                                                3)
                                                        #Elimina información del archivo XP.inf
								;;
                                                4)
                                                        #Lee información del archivo XP.inf
                                               			 ;;
						esac
					;;
			3)
				echo " Kanban "
                                echo "1. Agregar información"
                                echo "2. Buscar"
                                echo "3. Eliminar información"
                                echo "4. Leer base de información"
				read -p "Seleccione la opción que desea utilizar: " op3
                                        case $op3 in
                                                1)
                                                        #Agrega información al archivo Kanban.inf
								;;
                                                2)
                                                        #Buscar información en el archivo Kanban.inf
								;;
                                                3)
                                                        #Elimina información del archivo Kanban.inf
								;;
                                                4)
                                                        #Lee información del archivo Kanban.inf
                                                		;;
						esac
					;;
			4)
				echo " Crystal "
                                echo "1. Agregar información"
                                echo "2. Buscar"
                                echo "3. Eliminar información"
                                echo "4. Leer base de información"
				read -p "Seleccione la opción que desea utilizar: " op4
                                        case $op4 in
                                                1)
                                                        #Agrega información al archivo Crystal.inf
								;;
                                                2)
                                                        #Buscar información en el archivo Crystal.inf
								;;
                                                3)
                                                        #Elimina información del archivo Crystal.inf
								;;
                                                4)
                                                        #Lee información del archivo Crystal.inf
                                                		;;
						esac
					;;
			esac
else
	echo "METODOLOGIAS TRADICIONALES"
	echo " 1. Cascada"
	echo " 2. Espiral"
	echo " 3. Modelo V"
	read -p "Seleccione la opción que desea utilizar: " opcion2
		case $opcion2 in
			1)
				echo " Cascada "
                                echo "1. Agregar información"
                                echo "2. Buscar"
                                echo "3. Eliminar información"
                                echo "4. Leer base de información"
				read -p "Seleccione la opción que desea utilizar: " opc1
                                        case $opc1 in
                                                1)
                                                        #Agrega información al archivo Cascada.inf
								;;
                                                2)
                                                        #Buscar información en el archivo Cascada.inf
								;;
                                                3)
                                                        #Elimina información del archivo Cascada.inf
								;;
                                                4)
                                                        #Lee información del archivo Cascada.inf
                                                		;;
						esac
					;;
			2)
				echo " Espiral "
                                echo "1. Agregar información"
                                echo "2. Buscar"
                                echo "3. Eliminar información"
                                echo "4. Leer base de información"
				read -p "Seleccione la opción que desea utilizar: " opc2
                                        case $opc2 in
                                                1)
                                                        #Agrega información al archivo Espiral.inf
								;;
                                                2)
                                                        #Buscar información en el archivo Espiral.inf
								;;
                                                3)
                                                        #Elimina información del archivo Espiral.inf
								;;
                                                4)
                                                        #Lee información del archivo Espiral.inf
                                                		;;
						esac
					;;
			3)
				echo " Modelo V "
                                echo "1. Agregar información"
                                echo "2. Buscar"
                                echo "3. Eliminar información"
                                echo "4. Leer base de información"
				read -p "Seleccione la opción que desea utilizar: " opc3
                                        case $opc3 in
                                                1)
                                                        #Agrega información al archivo ModeloV.inf
								;;
                                                2)
                                                        #Buscar información en el archivo ModeloV.inf
								;;
                                                3)
                                                        #Elimina información del archivo ModeloV.inf
								;;
                                                4)
                                                        #Lee información del archivo ModeloV.inf
                                                		;;
						esac
					;;
			esac
fi
