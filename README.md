# Proyecto Robótica :robot: 
 
Proyecto final de la asignatura Robótica de la Universidad Nacional de Colombia en su sede Bogotá. 
 
## Autores :busts_in_silhouette: 
 
|               Nombre               |GitHub nickname| 
|------------------------------------|---------------| 
|  Nikolai Alexander Caceres Penagos |[nacaceresp](https://github.com/nacaceresp)| 
|     Andrés Felipe Forero Salas     |[fore1806](https://github.com/fore1806)| 
|   Iván Mauricio Hernández Triana   |[elestrategaactual](https://github.com/elestrategaactual)|
|    Juan Fernando Ramírez Montes    |[jramirezmon](https://github.com/jramirezmon)|
|   Allan Giordy Serrato Gutierrez   |[alllangsg](https://github.com/alllangsg)|

## Video del Proyecto
Duración entre 7 y 10 min
- Intro al LabSir
- Front de la UN
- Autores, Profesor, Curso, año, etc..
- Video Simulación (estimado de tiempo)
- Video en el Lab (mostrando panel de control).
- Zoom en el gripper al final del ensamblaje. (moviendose en su puesto)
- Demostración del Gripper ensamblado.

## Gripper diseñado

Planos, Diseño 3D, Fotografias y piezas. 

## Bases Diseñadas

### Base posicion inicial

Modelo 3D,Fotografia, Piezas utilizadas, proceso de ensamble.

### Base del Ensamble Final

Modelo 3D, Fotografia, Piezas utilizadas, proceso de ensamble.

## Porta Ventosa Diseñado

Modelo 3D, Fotografia, Piezas utilizadas, proceso de ensamble.

## Estación en Robot Studio

Para este proyecto se utilizaron dos estaciones de trabajo en RoboStudio, una para simulación y una para desarrollar el codigo RAPID que se subio al controlador del LABSIR para la práctica.

### Estación Simulación

La estación para simulación contaba con objetos inteligentes *attacher* y *detacher* controlados por 14 salidas digitales en total que permitieron simular que la herramienta tomara y soltara las piezas. Dos salidas digitales por pieza: una para activar el objeto *attacher* para que se uniera al TCP y otra para activar el *detacher* para soltar la pieza del TCP cuando llegaba a la posición de destino. También se usaron objetos inteligentes tipo *placer* para devolver las piezas a sus posiciones iniciales para facilitar las iteraciones. 

En la figura contigua son las que estan con el valor binario 1 (aparte de las tres que son nativas del controlador). También se pueden apreciar las 7 piezas a mover, y los dos *worldobjets* diseñados, el de la tabla de ubicación inicial, y el de la tabla que soporta el ensamble final.

![StationSimulationGood](https://user-images.githubusercontent.com/62154397/203449370-814f3697-8ef5-4d7d-8ee2-042a63d5a756.jpg)

Esta simulación permitió ver como el robot rotaba las piezas durante las trayectorias programadas que fueron después exportadas a la estación de laboratorio para una edición posterior. El código RAPID generado para está estación se encuentra en la carpeta Simulacion de la carpeta RAPID del repositorio.

### Estación Práctica

Como la estación de trabajo del LabSIR solo reconoce 3 salidas y entradas digitales con nombre especificos, se creo otra estación de trabajo donde se accionaba la salida DO_01 para activar la ventosa, la DO_02 para desactivar la ventosa, y la salida DO_03 para prender el led correspondiente. Solo se usó la entrada digital DI_01 para el inicio de la rutina. Debido a esto, no se usaron objetos inteligentes tipo *attacher*, pero si se usaron los *placer* para poner las piezas en sus posiciones iniciales y finales para poder ubicar con precisión los targets de cada rutina. A continuación se muestra una imagen de esta estación.

![StationLabGood](https://user-images.githubusercontent.com/62154397/203449697-a98e4cf2-625b-42bf-9e7d-476211c43337.jpg)

En esta estación se tuvo en cuenta el offset en z de la plataforma que se usa como suelo en el LABSIR, de forma que se pudieran programar de una forma más precisa los targets de las trayectorias de las rutinas de definir los *workobjects*, ya que estas tienen como padre un **workobject *World* que esta posicionado en el (0,0,0) del mundo; (0,0,25) con el offset planteado. Todas las piezas y tablas vistas en la imagen tienen un offset de 25 en z con respecto al 0 de la estación.

El codigo RAPID generado por esta estación es discutido en la siguiente sección y también se encuentra en la carpeta ProyectoLab de la sección RAPID del repositorio.


## Código RAPID

Codigo de cada modulo con una breve descripcion.
Recordar definir las dos rutinas para definir los workobjects. 


