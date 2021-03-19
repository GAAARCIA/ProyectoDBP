
FROM bash
COPY ./ProyectoPrimerParcial.sh ./ProyectoPrimerParcial.sh
ADD ./INF/SCRUM.inf ./INF/SCRUM.inf
ADD ./INF/CRYSTAL.inf ./INF/CRYSTAL.inf
ADD ./INF/CASCADA.inf ./INF/CASCADA.inf
ADD ./INF/ESPIRAL.inf ./INF/ESPIRAL.inf
ADD ./INF/KANBAN.inf ./INF/KANBAN.inf
ADD ./INF/MODELOV.inf ./INF/MODELOV.inf
ADD ./INF/XP.inf ./INF/XP.inf    
ARG variable
CMD bash /ProyectoPrimerParcial.sh "${variable}"

