package cricoin.es.aop;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

//De esta manera le decimos a nuestro programa que:
@Configuration //És nuestro archivo de configuracion
@EnableAspectJAutoProxy //Haremos uso de la libreria AspectJ
@ComponentScan("cricoin.es") // El paquete a donde debe ir a escanear 
public class Configuracion {

}
