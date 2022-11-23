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

Con el objetivo de hacer el ensamblaje del mecanismo es necesario diseñar dos estructuras que permitan, por un lado, acceder a las piezas en un lugar especifico y en una posición determinada y, por otro lado, alojar estas mismas en una estructura que facilite el ensamblaje final del mecanismo. Con esto en mente se diseña una base de sujeción de piezas y una base de alojamiento de las mismas, tal y como se muestra a continuación:

### Base de sujeción de piezas 

Haciendo uso de la herramienta Inventor se diseña el siguiente modelo 3d, en este se le asigna una posición especifica a cada una de las piezas del gripper tratando de utilizar la menor área posible y, teniendo en cuenta, que debe existir un espacio considerable entre las mismas.

![](https://github.com/fore1806/Proyecto-Rob/blob/master/Imagenes/SoporteInicial.jpg) 

Las piezas lucirán de la siguiente manera acto previo al inicio del proceso de ensamblaje.

![](https://github.com/fore1806/Proyecto-Rob/blob/master/Imagenes/SoporteInicial2.jpg) 

A continuación se presenta la base de sujeción elaborada con madera MDF en un espesor de 5mm mediante un proceso de corte láser:

![](https://github.com/fore1806/Proyecto-Rob/blob/master/Imagenes/BaseSujecion.png) 


### Base del Ensamble Final

En lo que respecta a la base del alojamiento del ensamblaje final se diseña el siguiente modelo 3D:

![](https://github.com/fore1806/Proyecto-Rob/blob/master/Imagenes/portaEnsamble.jpg) 

Como es posible observar, este cuenta con tres capas traslapadas una encima de otra, esto con el fin de alojar cada una de las piezas del ensamblaje final de la forma mas natural posible, de manera que sea cómodo y fácil el proceso de ensamble. Vale la pena aclarar que este molde cuenta con una tolerancia de alrededor de 2mm con respecto a las piezas que se albergan en el mismo, lo que facilita el ensamble final y evita cualquier inconveniente que pueda darse en el caso de que el posicionamiento no sea el correcto.

El resultado final es el siguiente:

![](https://github.com/fore1806/Proyecto-Rob/blob/master/Imagenes/BaseEnsamblaje.png) 

Para llegar al resultado anterior es necesario pegar las tres capas con colbon, pegante ideal para el material trabajado. Esta base cuenta con diferentes agujeros que permiten albergar los diferentes tornillos que se ubican en cada una de las articulaciones del mecanismo a ensamblar. 

## Porta Ventosa Diseñado

Modelo 3D, Fotografia, Piezas utilizadas, proceso de ensamble.
Válvula Electrómecánica 3 a 2 para activar la succión.

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
EL código RAPID que se corrio en el controlador del LABSIR fue el siguiente.

### CalibData


En el archivo de CalibData se subió la información del TCP de la herramienta utilizada, y la de los tres workobjects definidos: 
- NewWorld que estaba en (0,0,35) que sirvio para ubicar los puntos de las rutinas *DefinePick* y *DefinePlace*
- Pick que correspondia a la tabla donde se ponian las piezas en sus posiciones iniciales.
- Place que correspondia a la tabla que sopotaba el ensamblaje.

```console
MODULE CalibData
    PERS tooldata NewChupa:=[TRUE,[[127.2,0.485,126.368],[0.707106781,-0.005923775,0.707081968,0]],[1,[83.322,0.242,104.5],[1,0,0,0],0,0,0]];
    TASK PERS wobjdata Pick:=[FALSE,TRUE,"",[[510,-270,25],[0,1,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata Place:=[FALSE,TRUE,"",[[730,80,55],[0,1,0,0]],[[0,0,15],[1,0,0,0]]];
    TASK PERS wobjdata NewWorld:=[FALSE,TRUE,"",[[0,0,20],[1,0,0,0]],[[0,0,35],[1,0,0,0]]];
ENDMODULE
```

### Module1
Este es el modulo que se corre en el flexpendant. Donde aparecen todos los targets y las rutinas (trayectorias) ejecutadas por el robot durante la práctica.

#### Definición de Targets

Al inicio del modulo se definieron todos los *targets* a usar en las trayectorias, incluyendo los tres *jointarget*: *Home* con la articulación 5 en 30°, *HomeFinal* con todas las articulaciones en 0, y *tool* que es el target donde se coloca el robot para ponerle la herramienta. Los primeros 4 targets *Limit..* son targets que se usaron en la estación para testear el alcance del robot con la orientación del TCP usada para recoger las piezas.

```console
MODULE Module1
    CONST robtarget LimInf:=[[-1.268558474,-443.594527115,14.946918722],[0,0.707106781,0.707106781,0],[1,0,1,6],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LimSup:=[[2.920655475,-964.874814922,14.510384672],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget LimSup4:=[[463.722752628,-820,30.05181616],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Lim3Sup:=[[735.880314711,71.133179396,32.548470254],[-0.000000014,0.707106783,0.707106779,0.000000019],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Lim2Inf:=[[50.955,350.025,17.249],[0,0.707106781,0.707106781,0],[0,-1,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PickApp:=[[-110.342872773,120.113138802,-128.175841477],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Base105:=[[-207.99,364.51,-25],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Base10:=[[-207.99,364.51,0],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget PlaceApp:=[[-125.227,130.603,-70],[0.707106781,0,0,-0.707106781],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Base205:=[[-125.23,130.6,-50],[0.707106781,0,0,-0.707106781],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Base20:=[[-125.23,130.6,5],[0.707106781,0,0,-0.707106781],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T105:=[[-210.324,237.721,-25],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T10:=[[-210.32,237.72,0],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TPick:=[[-80.342872773,280.113138802,-158.175841477],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget TApp:=[[-90.227,130.604,-136.705],[0,0,0,1],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T205:=[[-171.71,130.6,-50],[0,0,0,1],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget T20:=[[-171.71,130.6,0],[0,0,0,1],[-1,-1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1105:=[[-100.29,69.5,-25],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P110:=[[-100.29,69.5,0],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P1App:=[[-125.227,130.604,-71.705],[0.382683433,0,0,-0.923879532],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P125:=[[-57.96,47.69,-50],[0.382683432,0,0,-0.923879533],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P120:=[[-57.96,47.69,0],[0.382683432,0,0,-0.923879533],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P2Pick:=[[-121.178397921,126.307,-278.381942838],[0,0,0,1],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P2105:=[[-280.8,126.31,-25],[0,0,0,1],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P210:=[[-280.8,126.31,0],[0,0,0,1],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P2App:=[[-142.214371526,187.704774603,-240.969916699],[0.382683433,0,0,-0.923879532],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P225:=[[-57.96,213.51,-50],[0.382683432,0,0,-0.923879533],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget P220:=[[-57.96,213.51,0],[0.382683432,0,0,-0.923879533],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F15:=[[-137.67,214.25,-25],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F10:=[[-137.67,214.25,0],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F25:=[[-206.24,130.61,-50],[0.707106781,0,0,-0.707106781],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget F20:=[[-206.24,130.61,-5],[0.707106781,0,0,-0.707106781],[0,1,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET215:=[[-36.81,394.5,-25],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET210:=[[-36.81,394.5,0],[0.707106781,0,0,-0.707106781],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET2App:=[[-141.14536065,182.779436275,-69.962726226],[0.382683433,0,0,-0.923879532],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET225:=[[-123.36,204.82,-50],[0.422618262,0,0,-0.906307787],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET220:=[[-123.36,204.82,-5],[0.422618262,0,0,-0.906307787],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET115:=[[-70.29,254.48,-25],[0,0,0,1],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET110:=[[-70.29,254.48,0],[0,0,0,1],[-1,1,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET1App:=[[-97.458484126,249.43301943,-141.897823694],[0.336487213,0,0,-0.941688035],[-1,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET125:=[[-123.28,56.29,-50],[0.336487213,0,0,-0.941688035],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget ET120:=[[-123.28,56.29,-5],[0.336487213,0,0,-0.941688035],[0,0,-1,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget Home:=[[0,0,0,0,30,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget tool:=[[-89.3,42.5,-51.4,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick1:=[[190,-270,25],[0,-0.707106781,0.707106781,0],[-1,-2,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick2:=[[510,-270,25],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick25:=[[510,-270,265],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick35:=[[510,-740,115],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick3:=[[510,-740,25],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget place1:=[[500,80,50],[0,0,1,0],[0,-2,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget place2:=[[730,80,50],[0,0,1,0],[0,-2,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget place3:=[[730,-180,50],[0,0,1,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget HomeFinal:=[[0,0,0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget place25:=[[730,80,189.221358685],[0,0,1,0],[0,-2,-3,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget place35:=[[709.843744914,-125.823426519,203.377654421],[0,0,1,0],[-1,-1,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick155:=[[190,-270,85],[0,-0.707106781,0.707106781,0],[-1,-2,0,1],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pick15:=[[344.16462737,-416.981851031,243.887447253],[0,0.707106781,0.707106781,0],[-1,-2,1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
```

#### Main
En el main del programa, que define que trayectorias y en que orden se ejecutan se organizo la rutina del robot de la siguiente manera: 

Primero se lleva el programa a la posición de Home. Luego se espera a que se oprima el botón de la entrada digital DI_01. Una vez oprimido el botón se enciende el LED conectado a la salida DO_03 y se ejecuta la trayectoria de recoger la Basa del gripper y ponerla en el ensamble. Luego se mueve la pieza T, después la Pinza1, luego la Pinza2, despúes los dos Eslabones de Transmisión, y por último la placa de retención. Una vez se termina de ensamblar el gripper, el Robot se va a la posición de *HomeFinal* y se paga el LED indicando que se termino de ejecutar la rutina.

Las rutinas de *DefinePick* y *DefinePlace* que ayudan a definir los objetos de trabajo solo se ejecutan una vez, antes de ejecutar el programa de ensamble, se descomentan estas cuatro lineas de código, se definen los *workobjects* y una vez definidos se pone el *Program Pointer* en main otra vez, se comentan otra vez las lineas de código y se vuelve a ejecutar el programa.

```console
PROC main()
        Homing;
        WaitDI DI_01,1;
        Set DO_03;
        !DefinePick;
        !WaitDI DI_01,1;
        !DefinePlace;
        !WaitDI DI_01,1;
        MoveBase;
        MoveT;
        MoveP1;
        MoveP2;
        MoveET1;
        MoveET2;
        MovePR;
        Final;
        Reset DO_03;
    ENDPROC
```
#### Comentarios Generales Trayectorias

Al inicio de todas la rutinas hay un movimiento de *joint*  a un target intermedio 80mm arriba de la tabla inicial, esto para evitar conflictos si se paraba el programa en algun punto no esperado, ya que en este caso el robot parte de la posición *Home*, inhabilitando la opción de un movimiento lineal por la posición de la herramienta mirando hacia el eje -y. Este target intermedio es a donde van la mayoria de trayectorias después de subir 25mm después de haber tomado o dejado una pieza. Hay un target intermedio definido para el workobject *Pick* llamado *PickApp* y uno para el workobject *Place* llamado *PlaceApp*, ambos cumplen la misma funcionalidad en su respectivo workobject. De hecho para pasar de un workobject a otro , se hace un movimiento lineal desde *PickApp* hacia *PlaceApp*. En el caso de las piezas que requiren rotación se crearon otros targets análogos en el workboject *Place* con la orientación final requerida pero a una altura aproximada a la de *PlaceApp*.

Todas las rutinas también tiene un punto de aproximación 25mm encima del target esperado de recogida, y de soltada, de forma que la recogida y la soltada se hacen con un movimiento recto descendiente de 25mm, disminuyendo la fuerza ejercida sobre la pieza y aumentando la precisión de estos movimientos. Entonces, el robot llega al target de aproximación, baja al target esperado, vuelve a subir a este target de aproximación y de ahi pasa al atrget intermedio *PickApp* para luego saltar al otro punto intermedio del target *Place* y repite un proceso análogo al de aproximación pero para el target en *Place*.

También se programo que al llegar al punto de recogida, el robot encienda la succión, espere 3 segundos en dicha posición, luego vuelva a apagar la señal que activa la valvula y ahi si ejecute la siguiente instrucción de movimiento. Esto le da tiempo a la succión de atrapar bien la pieza y evita el conflicto de que ambas salidas digitales conectadas a la valvula esten activas al mismo tiempo en algún momento. Cuando llega al punto de dejada, hace el mismo proceso de espera, pero en este caso activa y desactiva la salida que apaga la succión en la valvula.

Todas las instrucciones *Move* terminan en el target *PickApp* para darle continuación a la siguiente traycetoria, ya que se definió este target como el movimento inicial de todas las trayectorias que mueven las piezas.

#### MoveBase
Esta trayectoria lleva al robot a recoger la Base del gripper en el workobject *Pick* y la lleva hasta su posición final en el ensamble definido como el workobject *Place*. Esta pieza no requiere de ninguna rotación por lo que casi todos los movimientos son lineales, excepto la primera línea de aproximación.

```console
    PROC MoveBase()
        MoveJ PickApp,v100,fine,NewChupa\WObj:=Pick;
        MoveL Base105,v100,fine,NewChupa\WObj:=Pick;
        MoveL Base10,v50,fine,NewChupa\WObj:=Pick;
        Set DO_01;
        WaitTime 3;
        Reset DO_01;
        MoveL Base105,v50,fine,NewChupa\WObj:=Pick;
        MoveL PickApp,v100,fine,NewChupa\WObj:=Pick;
        MoveL PlaceApp,v100,fine,NewChupa\WObj:=Place;
        MoveL Base205,v100,fine,NewChupa\WObj:=Place;
        MoveL Base20,v50,fine,NewChupa\WObj:=Place;
        Set DO_02;
        WaitTime 3;
        Reset DO_02;
        MoveL Base205,v50,fine,NewChupa\WObj:=Place;
        MoveL PlaceApp,v100,fine,NewChupa\WObj:=Place;
        MoveL PickApp,v100,fine,NewChupa\WObj:=Pick;
    ENDPROC
```

#### MoveT
La T es la pieza que requirió la mayor rotación con 90° de rotación sobre el eje z, por lo que requirió una trayectoria especial, declarando dos targets nuevos intermedios de aproximación *Tpick* y *TApp* más altos por seguridad, y donde *TApp* tenia la orientación final requirida para la T. La rotación se dio en el plano xy por lo que el offset en z necesario no fue mucho, pero aun así se requirio un moveJ para pasar entre workobjects desde *Tpick* a *TApp* y viseversa al final de la rutina.

```console
    PROC MoveT()
        MoveJ PickApp,v100,fine,NewChupa\WObj:=Pick;
        MoveL T105,v100,fine,NewChupa\WObj:=Pick;
        MoveL T10,v50,fine,NewChupa\WObj:=Pick;
        Set DO_01;
        WaitTime 3;
        Reset DO_01;
        MoveL T105,v100,fine,NewChupa\WObj:=Pick;
        MoveL TPick,v100,fine,NewChupa\WObj:=Pick;
        MoveJ TApp,v100,fine,NewChupa\WObj:=Place;
        MoveL T205,v100,fine,NewChupa\WObj:=Place;
        MoveL T20,v50,fine,NewChupa\WObj:=Place;
        Set DO_02;
        WaitTime 3;
        Reset DO_02;
        MoveL T205,v100,fine,NewChupa\WObj:=Place;
        MoveL TApp,v100,fine,NewChupa\WObj:=Place;
        MoveJ TPick,v100,fine,NewChupa\WObj:=Pick;
    ENDPROC
```

#### MoveP1
Para mover la primera Pinza, que termina al extremo más alejado de la zona trabajada, se uso un proceso análogo al de la T. Aunque solo se definio un nuevo target, el de aproximación en el workobject *Place* llamado *P1App* que tenia la orientación final requirida para la pinza. Esto debido a que la pinza debio ser girada 45° en z, y la configuración usada para el robot soportaba dicho movimiento con facilidad. Entonces, se programo que se moviera desde el *pickApp* con moveJ mientras que los movimientos porteriores son lineales con la nueva orientación adquirida. Al final de la rutina se devuelve a *PickApp* retomando la orientación original usada.

```console
    PROC MoveP1()
        MoveJ PickApp,v100,fine,NewChupa\WObj:=Pick;
        MoveL P1105,v100,fine,NewChupa\WObj:=Pick;
        MoveL P110,v50,fine,NewChupa\WObj:=Pick;
        Set DO_01;
        WaitTime 3;
        Reset DO_01;
        MoveL P1105,v100,fine,NewChupa\WObj:=Pick;
        MoveL PickApp,v100,fine,NewChupa\WObj:=Pick;
        MoveJ P1App,v100,fine,NewChupa\WObj:=Place;
        MoveL P125,v100,fine,NewChupa\WObj:=Place;
        WaitDI DI_01,1;
        MoveL P120,v50,fine,NewChupa\WObj:=Place;
        Set DO_02;
        WaitTime 3;
        Reset DO_02;
        MoveL P125,v100,fine,NewChupa\WObj:=Place;
        MoveL P1App,v100,fine,NewChupa\WObj:=Place;
        MoveJ PickApp,v100,fine,NewChupa\WObj:=Pick;
    ENDPROC
```

#### MoveP2
La Pinza2, la que va al extremo más alejado del eje x en el ensamble, requería de una rotación de -90° en z. Dicha rotación negativa no podia hacerse con la configuración usada, por lo que se debio hacer una rutina especial en la que primero se tomó la pinza con la herramienta orientada viendo hacia el eje x positivo. Para ello se programo un nuevo target *P2Pick* 60mm más alto en z que el target *PickApp*, con la orientacón deseada de recogida. También se programo un target en el workobject de dejada llamado *P2App* que estaba a la misma altura que *P2Pick*. Estos dos targets se pusieron en alturas elevadas de forma que al hacer la rotación de la pinza, no colisionará con ningún objeto debajo de ella, ya que durante el moveJ desde *P2Pick* a *P2App* la pieza rota hacia abajo respecto al eje y disminuyendo su altura respecto a las demás piezas.

```console
    PROC MoveP2()
        MoveJ P2Pick,v100,fine,NewChupa\WObj:=Pick;
        MoveL P2105,v100,fine,NewChupa\WObj:=Pick;
        MoveL P210,v50,fine,NewChupa\WObj:=Pick;
        Set DO_01;
        WaitTime 3;
        Reset DO_01;
        MoveL P2105,v100,fine,NewChupa\WObj:=Pick;
        MoveJ P2Pick,v100,fine,NewChupa\WObj:=Pick;
        MoveJ P2App,v100,fine,NewChupa\WObj:=Place;
        MoveL P225,v100,fine,NewChupa\WObj:=Place;
        MoveL P220,v50,fine,NewChupa\WObj:=Place;
        Set DO_02;
        WaitTime 3;
        Reset DO_02;
        MoveL P225,v100,fine,NewChupa\WObj:=Place;
        MoveL P2App,v100,fine,NewChupa\WObj:=Place;
    ENDPROC
```
