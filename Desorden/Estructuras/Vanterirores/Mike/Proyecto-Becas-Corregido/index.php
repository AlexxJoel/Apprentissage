 <?php        
   require 'conexion.php';

    // Esta es la consulta a los municipios

    $CsltMuni= "SELECT Cve_Mun,Nom_Mun FROM localidades GROUP BY Nom_Mun ORDER BY Cve_Mun";

    $JtarMuni = mysqli_query($conex,$CsltMuni) or die(mysqli_error($conex));
 ?>

<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"
    integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
    crossorigin="anonymous"></script>
    <script type="text/javascript" src="js/funciones.js"></script>

    <meta charset="UTF-8">
    <title>Becas Cetis 44</title>
    <style>
        table,tr,th,td {}
    </style>
</head>
<body>

   <main>
       <font face="Caviar Dreams" color="black"><h1>Registro de Alumnos</h1></font>
    </main>
    <section>
        <center>
            <form action="registro_alumno.php" method="POST">
                <font face="Bell MT"><h1>PADRÓN DE BECAS</h1></font>
                <p>ESTIMADO(A) ALUMNO(A):
                  ES MUY IMPORTANTE QUE REALICES LA CAPTURA DE ESTE FORMULARIO CON MUCHO CUIDADO Y RESPONSABILIDAD, DE ELLO DEPENDE QUE TU APOYO DE BECA LLEGUE EN TIEMPO Y FORMA.
                    POR LO ANTERIOR:</p>
                <p>1. LEE CON ATENCIÓN CADA UNA DE LAS CUESTIONES QUE SE TE INDICAN.</p>
              <p>2. PROPORCIONA DATOS VERÍDICOS CON LA FINALIDAD DE BENEFICIARTE EN EL PROCESO Y COBRO DE TU BECA  DE ACUERDO A LA SITUACIÓN QUE SE PRESENTE.</p>
            <p>3. CUIDA QUE EL CORREO ELECTRÓNICO QUE PROPORCIONES PUEDAS TENER ACCESO A EL, YA QUE AHÍ TE LLEGARÁN NOTIFICACIONES.</p>
          
          <table width=28% border="0">
             <tr>
                 <td>Número de Control</td>
                 <script>
                 function soloLetras(e) { //Creamos la función para solo permitir numero
                            var key = e.keyCode || e.which,
                                tecla = String.fromCharCode(key)
                                numeros = "0123456789", //Este es el campo que define que podemos escribir...en este caso solo del 0 al 9 
                                especiales = [8, 37, 39, 46],
                                tecla_especial = false;

                            for (var i in especiales) {
                        if (key == especiales[i]) {
                                tecla_especial = true;
                            break;
                        }
        }

                            if (numeros.indexOf(tecla) == -1 && !tecla_especial) {
                                return false;
                            }
                        }
                 </script>
                 <td><input type="text" onkeypress="return soloLetras(event)" minlenght="14" maxlength="14" name="no_control"/></td>
             </tr>
              <tr>
                  <td>Semestre</td>
                        <td><select name="semestre" required="true"> <!-- INT -->
                           <option value="1">1</option> 
                           <option value="3">3</option> 
                           <option value="5">5</option>
                        </select>
                        </td>
              </tr>
              <tr>
                  <td>Grupo</td>
                  <td><select name="grupo" required="true">  <!-- VARCHAR -->
                     <option value="A">A</option>
                     <option value="B">B</option>
                     <option value="C">C</option>
                  </select></td>
              </tr>
              <tr>
                  <td>Especialidad</td>  <!-- VARCHAR -->
                  <td><select name="especialidad" required="true">
                     <option value="Preparación de Alimentos y Bebidas">Preparación de Alimentos y Bebidas</option>
                     <option value="Contabilidad">Contabilidad</option>
                     <option value="Programación">Programación</option>
                     <option value="Soporte y Mantenimiento de Equipo de Computo">Soporte y Mantenimiento de Equipo de Computo</option>
                     <option value="Electronica">Electronica</option>
                     <option value="Ofimatica">Ofimatica</option>  
                  </select></td>
              </tr>
              <tr>
                  <td>Turno</td> <!-- VARCHAR -->
                  <td><select name="turno" required="true">
                     <option value="Matutino">Matutino</option>
                     <option value="Vespertino">Vespertino</option>
                  </select></td>
              </tr>
          </table>
            <font face="Bell MT"><h1>DATOS DEL ALUMNO(A)</h1></font>

            <p>Ingresa todos tus datos en mayusculas</p>
            <!--Mike Y JOEL NO SE HACEN RESPONSABLES POR LA PERDIDA DE BECAS-->
            <table width=28% border="0">
                <tr>
                    <td>CURP del Estudiante</td> <!-- VARCHAR -->
                    <td>
                        <input type="text" onblur="validarInput(this)"  placeholder="Ingrese su CURP" name="resultado" maxlength="18">
				
			<pre id="resultado"></pre>

	<script type="text/javascript">

		//Función para validar una CURP
function curpValida(curp) {
    var re = /^([A-Z][AEIOUX][A-Z]{2}\d{2}(?:0[1-9]|1[0-2])(?:0[1-9]|[12]\d|3[01])[HM](?:AS|B[CS]|C[CLMSH]|D[FG]|G[TR]|HG|JC|M[CNS]|N[ETL]|OC|PL|Q[TR]|S[PLR]|T[CSL]|VZ|YN|ZS)[B-DF-HJ-NP-TV-Z]{3}[A-Z\d])(\d)$/,
        validado = curp.match(re);
	
    if (!validado)  //Coincide con el formato general?

    	return false;
    
    //Validar que coincida el dígito verificador
    function digitoVerificador(curp17) {
        //Fuente https://consultas.curp.gob.mx/CurpSP/
        var diccionario  = "0123456789ABCDEFGHIJKLMNÑOPQRSTUVWXYZ",
            lngSuma      = 0.0,
            lngDigito    = 0.0;
        for(var i=0; i<17; i++)
            lngSuma = lngSuma + diccionario.indexOf(curp17.charAt(i)) * (18 - i);
        lngDigito = 10 - lngSuma % 10;
        if (lngDigito == 10) return 0;
        return lngDigito;
    }
  
    if (validado[2] != digitoVerificador(validado[1])) 
    	return false;
        
    return true; //Validado
}

//Lleva la CURP a mayúsculas para validarlo
function validarInput(input) {
    var curp = input.value.toUpperCase(),
        resultado = document.getElementById("resultado"),
        valido = "Tu curp no es valido favor de revisarlo";
        
    if (curpValida(curp)) { // ⬅️ Acá se comprueba
    	valido = "Tu curp es valido prosigue con el registro";
        resultado.classList.add("ok");
    } else {
    	resultado.classList.remove("ok");
    }
        
    alert(valido);
}

	</script>
 
                    </td> <!--Condición que valida los 18 caractéres y el orden de los datos del curp-->
                </tr>
                <tr>
                   <script>
                 function letras(e) { //Creamos la función para solo permitir numero
                            var key = e.keyCode || e.which,
                                tecla = String.fromCharCode(key)
                                numeros = "ABCDEFGHIJKLMNÑOPQRSTUVWXYZ ", //Este es el campo que define que podemos escribir...en este caso solo del 0 al 9 
                                especiales = [8, 37, 39, 46],
                                tecla_especial = false;

                            for (var i in especiales) {
                        if (key == especiales[i]) {
                                tecla_especial = true;
                            break;
                        }
        }

                            if (numeros.indexOf(tecla) == -1 && !tecla_especial) {
                                return false;
                            }
                        }
                 </script>
                    <td>Apellido Paterno</td>   <!-- VARCHAR -->
                    <td><input type="text" required="true" placeholder="Evita usar acentos" onkeypress="return letras(event)" name="apellido_paterno"></td> <!--Condición para convertir las letras a Mayusculas-->
                </tr>
                <tr>
                    <td>Apellido Materno</td>  <!-- VARCHAR -->
                    <td><input type="text" required="true" placeholder="Evita usar acentos" onkeypress="return letras(event)" name="apellido_materno"></td> <!--Condición para convertir las letras a Mayusculas-->
                </tr>
                <tr>
                    <td>Nombre(s)</td> <!-- VARCHAR -->
                    <td><input type="text" required="true" placeholder="Evita usar acentos" onkeypress="return letras(event)"  name="nombre"></td>
                </tr>
                <tr>
                    <td>Fecha de Nacimiento</td> <!-- DATE -->
                    <td><input type="date" required="true" name="fecha_nacimiento"></td>
                </tr>
                <tr>
                    <td>Número de Celular</td>  <!-- INT -->
                    <td><input type="text" onkeypress="return soloLetras(event)" minlenght="10" maxlength="10" name="celular"/></td>
                </tr>
                <tr>
                    <td>Número de Teléfono de Casa</td> <!-- INT -->
                    <td><input type="text" onkeypress="return soloLetras(event)" minlenght="10" maxlength="10" name="tel_casa"/></td> 
                </tr>
                <tr>
                  <td>Correo</td>  <!-- VARCHAR -->
                  <td><input type="email" name="correo"></td>
                </tr>
            </table>

            <font face="Bell MT"><h1>DIRECCIÓN DEL ALUMNO(A)</h1></font>
            <table>

                <tr>
                    <td>Entidad</td>  <!-- VARCHAR -->
                        <td><select name="entidad" required="true">
                            <option value="Morelos">MORELOS</option>
                            </select></td>
                </tr>
                <tr>
                    <td>Municipio</td>  <!-- INT -->
                    <td>
                        <div>

                         <select id="municipio" > 

                             <?php foreach ($JtarMuni as $mun) :   ?>

                               <option id="nombre" value="<?php echo $mun['Cve_Mun']; ?>">

                                <?php echo $mun['Nom_Mun']; ?>

                              </option>

                            <?php endforeach ?> 


                          </select></div>
                    </td>
                </tr>
                <tr>
                  <td>Localidades</td>  <!-- INT -->
                  <td>                    
                    <div id="local"></div> <!--ESTÁ PENDIENTE ESTE CÓDIGO...-->

                  </td>
                </tr>
                <tr>
                    <td>Tipo de asentamiento</td> <!-- VARCHAR -->
                    <td><select name="tipo_asentamiento" required="true">
                        <option value="Aeropuerto">Aeropuerto</option>  
                        <option value="Ampliación">Ampliación</option>
                        <option value="Barrio">Barrio</option>
                        <option value="Cantón">Cantón</option>
                        <option value="Ciudad">Ciudad</option>
                        <option value="Ciudad Industrial">Ciudad Industrial</option>
                        <option value="Colonia">Colonia</option>
                        <option value="Condominio">Condominio</option>
                        <option value="Conjunto Habitacional">Conjunto Habitacional</option>
                        <option value="Corredor Industrial">Corredor Industrial</option>
                        <option value="Coto">Coto</option>
                        <option value="Cuartel">Cuartel</option>
                        <option value="Ejido">Ejido</option>
                        <option value="Ex-Hacienda">Ex-Hacienda</option>
                        <option value="Fracción">Fracción</option>
                        <option value="Fraccionamiento">Fraccionamiento</option>
                        <option value="Granja">Granja</option>
                        <option value="Hacienda">Hacienda</option>
                        <option value="Ingenio">Ingenio</option>
                        <option value="Manzana">Manzana</option>
                        <option value="Paraje">Paraje</option>
                        <option value="Parque Industrial">Parque Industrial</option>
                        <option value="Privada">Privada</option>
                        <option value="Prolongación">Prolongación</option>
                        <option value="Pueblo">Pueblo</option>
                        <option value="Puerto">Puerto</option>
                        <option value="Ranchería">Ranchería</option>
                        <option value="Rancho">Rancho</option>
                        <option value="Región">Región</option>
                        <option value="Residencial">Residencial</option>
                        <option value="Rinconada">Rinconada</option>
                        <option value="Sección">Sección</option>
                        <option value="Sector">Sector</option>
                        <option value="Supermanzana">Supermanzana</option>
                        <option value="Unidad">Unidad</option>
                        <option value="Unidad Habitacional">Unidad Habitacional</option>
                        <option value="Villa">Villa</option>    
                        <option value="Zona Federal">Zona Federal</option>
                        <option value="Zona Industrial">Zona Industrial</option>
                        <option value="Zona Militar">Zona Militar</option>
                        <option value="Zona Naval">Zona Naval</option>
                    </select></td>
                </tr>
                <tr>
                    <td>Nombre del Asentamiento</td> <!-- VARCHAR -->
                    <td><input type="text" required="true" name="nom_asentamiento"></td>
                </tr>
                <tr>
                    <td>Código Postal</td> <!-- INT -->
                    <td><input type="text" onkeypress="return soloLetras(event)"   minlenght="5" maxlength="5" required="true" name="cp"/></td>
                </tr>
                <tr>
                    <td>Tipo de Vialidad</td>  <!-- VARCHAR -->
                    <td><select name="tipo_vialidad" required="true">
                        <option value="Ampliacion">Ampliacion</option>
                        <option value="Andador">Andador</option>
                        <option value="Avenida">Avenida</option>
                        <option value="Boulvevard">Boulvevard</option> <!--Of broken dreams? xD ajaja-->
                        <option value="Calle">Calle<option>
                        <option value="Callejón">Callejón</option>
                        <option value="Calazada">Calazada</option>
                        <option value="Cerrada">Cerrada</option>
                        <option value="Circuito">Circuito</option>
                        <option value="Circunvalación">Circunvalación</option>
                        <option value="Continuación">Continuación</option>
                        <option value="Corredor">Corredor</option>
                        <option value="Diagonal">Diagonal</option>
                        <option value="Eje Vial">Eje Vial</option>
                        <option value="Pasaje">Pasaje</option>
                        <option value="Peatonal">Peatonal</option>
                        <option value="Periférico">Periférico</option>
                        <option value="Privada">Privada</option>
                        <option value="Prolongación">Prolongación</option>
                        <option value="Retorno">Retorno</option>
                        <option value="Viaducto">Viaducto</option>
                        <option value="Carretera">Carretera</option>
                        <option value="Brecha">Brecha</option>
                        <option value="Camino">Camino</option>
                        <option value="Terracería">Terracería</option>
                        <option value="Vereda">Vereda</option>
                    </select></td>
                </tr>
                <tr>
                    <td>Nombre de la vialidad</td> <!-- VARCHAR -->
                    <td><input type="text" name="nom_vialidad" required="true"></td>
                </tr>
                <tr>
                    <td>Número exterior</td> <!-- INT -->
                    <td><input type="text" onkeypress="return soloLetras(event)" name="numero_exterior" placeholder="S/N=Dejalo en blanco"/></td>
                </tr>
                <tr>
                    <td>Número Interior</td> <!-- INT -->
                    <td><input type="text" onkeypress="return soloLetras(event)"  name="numero_interior" placeholder="S/N=Dejalo en blanco"/></td>
                </tr>
                <tr>
                    <td>Descripción de la Ubicación</td> <!-- VARCHAR -->
                    <td><input type="text" name="descripcion_ubicacion" required="false"></td>
                </tr>
                <tr>
                    <th><input type="submit" name="enviar"></th>
                </tr>
            </table>
           
            </form>  
        </center>
    </section> 
</body>
</html>