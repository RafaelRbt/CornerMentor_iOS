# CornerMentor_iOS
Prototipo de aplicacion Corner mentor para dispositivos iOS, proyecto hecho para la materia de Proyecto de desarrollo de dispositivos moviles 

Empresa: Instituto Tecnológico y de Estudios Superiores de Monterrey
Proyecto: Corner Mentor
Materia: Proyecto de Aplicaciones Móviles
Profesor: Roberto Martínez Román  

Requerimientos de la aplicación:

Uno de los procesos fundamentales para poder empezar con la definición de requerimientos en el modelo de cascada es consultar a los usuarios objetivos para así poder ampliar la perspectiva como desarrolladores y entender claramente las necesidades de los usuarios. Los requerimientos funcionales y no funcionales listados a continuación fueron elegidos basándose en una encuesta que fue respondida por alumnos del Tecnológico de Monterrey, Campus Estado de México.


Funcionales:

    1.- La aplicación debe mostrar una lista de asesorías y horarios para materias específicas.

    2.- La aplicación debe permitir la creación de dos tipos de perfiles: alumno y asesor.

    3.- La aplicación debe tener una interfaz “amigable” que cumpla con los principios de diseño interactivo.

    4.- Un filtro por materias que permita realizar búsquedas más específicas.

    5- Un sistema de clasificación por puntos que permita tanto a alumnos como asesores evaluarse entre ello

    6.- El sistema debe incorporar una base de datos que relacione las materias con los asesores que las imparten. Cuando una materia sea seleccionada, el sistema debe desplegar los asesores asociados a ella. 

    7.- Al agendar la asesoría, se le hará un seguimiento hasta que sea la hora acordada por el asesor. Se enviará una notificación para cada alumno inscrito en esta 10 min antes de la asesoría


No funcionales:

     1.- La aplicación debe ser rápida, eficiente, así como fácil para ser usada por todos los miembros del campus y asesores.

    2.- Debe de haber una gran variedad de asesores capacitados.
    
3.-La aplicación debe de estar disponible en un inicio de lunes a viernes, que son los días que por lo regular hay clases, e idealmente estar disponible siempre.

4.- La aplicación debe estar disponible en una gran variedad de dispositivos móviles

5.-Los datos de asesores y alumnos deben ser tratados de acuerdo a la ley Federal de Protección de datos personales

6.- La aplicación estará disponible para dispositivos Android

7.- El proceso de desarrollo se llevará a cabo con Android Studio. Al igual que las pruebas

8.- El sistema solamente aceptará credenciales del personal del Tecnológico de Monterrey 


Diseño:

En cuanto al diseño, para este avance se crearon las pantallas de Login, se modificó el fragmento Home para desplegar una lista de materias (Recycler View), se implementó una pantalla que mostrará las asesorías programadas y al seleccionar una materia se envía al usuario a una nueva pantalla donde se mostrarán las asesorías disponibles para la materia seleccionada. Se utilizó Firebase para el inicio de sesión y para hacer conexiones de prueba escribiendo datos sobre asesorías.

De acuerdo al charter y al entregable establecido por nosotros al inicio del curso, abajo se presenta una tabla que documenta las nuevas funciones agregadas en el código. Cada función está asociada a un número que representa un requerimiento funcional de la sección requerimientos de la aplicación

Nombre, función o clase
Propósito
Requerimiento funcional al que contribuye
escribirDatosAsesoríaPrueba()


Conectarse a Firebase y escribir datos de prueba (esta función será modificada para hacer registros de asesorías)
1,6,
InfoMateriaFrag
Desplegar la información de la asesoría seleccionada por el usuario
1,4,3
DashboardFragment
Mostrar las asesorías programadas por el usuario
1,4,3




Avance 3ra Entrega:

Se crearon data class de materias, asesoría y usuarios para representar los datos que serán descargados de la base de datos y se implementaron funciones con estas data class en las pantallas. Existió un avance con respecto a los requerimientos funcionales 1,3,4,5 y 6. 

Si bien hubo un avance en el proyecto, aún hay algunas funciones y conceptos que se podrían mejorar, tales como el aspecto visual de la app y el uso de un spinner que descarga en tiempo real de Firebase para mostrar todas las asesorías disponibles. Los requerimientos 5: el sistema de puntuación de usuarios y 7: las notificaciones antes de una asesoría aún están pendientes. 

Aún falta terminar de diseñar el logo de la aplicación y el fondo de cada pantalla, también falta elegir colores de acuerdo al logo. A continuación se enlistan los logros, problemas y retrasos de este avance, además se mencionan las actividades a futuro para lograr cumplir con el proyecto en tiempo y forma. 


Logros: 

a) Conexión con Firebase para crear datos de prueba por el momento.

b) Pase de parámetros como token o nombre de usuario de la pantalla login al HomeFragment.

c) Avance con respecto a la mayoría de requerimientos funcionales del proyecto.




Problemas:

a) La conexión entre pantallas.

b) Compartir el Firebase e implementar el json para compartir la base de datos.

c) Implementar un Spinner con los datos dados para el Firebase y guardarlos.

d) Ajustar el layouts de manera correcta y fácil de entender.

e) Encontrar un esquema de colores llamativo apropiado para la app.

f) Un diseño minimalista y acorde a la funcionalidad de la aplicación.


Actividades a futuro:

Terminar de crear el logo de la aplicación y mejorar las pantallas para que no se vea tan plana la aplicación. 

Buscar la manera de convertir las asesorías de Firebase a un archivo string que pueda usar el spinner para mostrar datos. 

Desarrollar el sistema de puntuación de usuarios una vez que ya se tengan cuentas de asesores.

Implementar una pantalla que con ayuda de Firebase pregunté a un usuario nuevo si quiere ser un asesor o un estudiante y de acuerdo a su respuesta asignarle un rol que quedará registrado en la base de datos. 

Botón para cambiar entre usuario y asesor


Avance 4.ª entrega:
Prototipo de iOS

Pantallas 

Navigation Controller y pantalla Login(al dar a la pantalla login se entra a tab bar Controller)


Pantalla de Agenda, el controlador del tab bar y la pantalla de Perfil




En orden de izquierda a derecha: Pantalla de las materias disponible, al seleccionar se despliega la pantalla de sub materias disponibles, al seleccionar una opción se despliega la pantalla de selección de maestros y por último la pantalla de confirmación, al confirmar este te regresa al menú principal.


Comparación del desarrollo entre Android vs. iOS (lenguaje, simuladores, IDE, frameworks, etc.)

Lenguaje:

Una diferencia notable entre Android y iOS es sin duda el lenguaje utilizado para realizarlas. El sistema usado para Android de Google es de código abierto y emplea principalmente Java, aunque igualmente se ha optado por Kotlin, el cual resulta más sencillo para los programadores, por lo que últimamente se usa más. Mientras que iOS usa Swift y Objective-C.En nuestro caso, se programo la app de IOS utilizando el lenguaje Swift.


Entorno:

Otra diferencia serían las herramientas usadas para el desarrollo de aplicaciones. Los IDE más empleados para Android es Android Studio, mientras que por para IOS es Xcode.


Interfaz gráfica:

La diferencia en cuanto al énfasis que se le pone a las componentes gráficos de las aplicaciones en Android y IOS es evidente: En IOS se cuida mucho este aspecto para que el usuario se sienta atraído y con más ganas de utilizar la app de nuevo, mientras que en Android no se hace tanto énfasis en eso y los componentes gráficos son menos complejos.


Número de Productores:

Apple tiene como objetivo principal el tener el total control de su software y dispositivos. Esto incluye la experiencia del usuario, puesto que iOS solo se encuentra en iPhone e iPad. Esto tiene tanto sus ventajas, ya que la experiencia del usuario se mantiene intacta, así como sus desventajas al tener un margen bajo a innovar. Y el caso de Android seria al revés, dado que se puede instalar básicamente en cualquier dispositivo.


Simuladores:

Las diferencias más notables para iOS es que este es mucho más rápido que el de Android. Pero Android le lleva la ventaja en que es una máquina virtual efectiva con una CPU virtualizada, por lo que en otras palabras la hace más realista que el de iOS. 

Facilidad de Uso

Si se compara Xcode con Android Studio en cuanto a la dificultad para implementar componentes, es mucho más fácil e intuitivo arrastrar y soltar los componentes de la interfaz gráfica de Xcode al código que hacerlo todo directamente en el código como en Android Studio.




