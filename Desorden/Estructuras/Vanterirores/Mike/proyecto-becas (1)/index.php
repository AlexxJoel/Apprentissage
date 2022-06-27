<!DOCTYPE html>
<html lang="en">
<head>
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
            <?php
            
            if(!$_POST){
            ?>
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
                  <td>Semestre</td>
                        <td><select name="semestre" required="true">
                           <option value="1">1</option> 
                           <option value="2">3</option> 
                           <option value="3">5</option>
                        </select>
                        </td>
              </tr>
              <tr>
                  <td>Grupo</td>
                  <td><select name="grupo" required="true">
                     <option value="1">A</option>
                     <option value="2">B</option>
                     <option value="3">C</option>
                  </select></td>
              </tr>
              <tr>
                  <td>Especialidad</td>
                  <td><select name="especialidad" required="true">
                     <option value="1">Preparación de Alimentos y Bebidas</option>
                     <option value="2">Contabilidad</option>
                     <option value="3">Programación</option>
                     <option value="4">Soporte y Mantenimiento de Equipo de Computo</option>
                     <option value="5">Electronica</option>
                     <option value="6">Ofimatica</option>  
                  </select></td>
              </tr>
              <tr>
                  <td>Turno</td>
                  <td><select name="turno" required="true">
                     <option value="1">Matutino</option>
                     <option value="2">Vespertino</option>
                  </select></td>
              </tr>
          </table>
            <font face="Bell MT"><h1>DATOS DEL ALUMNO(A)</h1></font>
            <table width=28% border="0">
                <tr>
                    <td>CURP del Estudiante</td>
                    <td><input type="text" name="curp" placeholder="18 DIGITOS" required="true" minlenght="18" maxlength="18" pattern="^([A-Z&]|[a-z&]{1})([AEIOU]|[aeiou]{1})([A-Z&]|[a-z&]{1})([A-Z&]|[a-z&]{1})([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|1[0-9]|2[0-9]|3[0-1])([HM]|[hm]{1})([AS|as|BC|bc|BS|bs|CC|cc|CS|cs|CH|ch|CL|cl|CM|cm|DF|df|DG|dg|GT|gt|GR|gr|HG|hg|JC|jc|MC|mc|MN|mn|MS|ms|NT|nt|NL|nl|OC|oc|PL|pl|QT|qt|QR|qr|SP|sp|SL|sl|SR|sr|TC|tc|TS|ts|TL|tl|VZ|vz|YN|yn|ZS|zs|NE|ne]{2})([^A|a|E|e|I|i|O|o|U|u]{1})([^A|a|E|e|I|i|O|o|U|u]{1})([^A|a|E|e|I|i|O|o|U|u]{1})([0-9]{2})$"></td> <!--Condición que valida los 18 caractéres y el orden de los datos del curp-->
                </tr>
                <tr>
                    <td>Apellido Paterno</td>
                    <td><input type="text" required="true" placeholder="Evita usar acentos" style="text-transform:uppercase;" name="apellido_paterno"></td> <!--Condición para convertir las letras a Mayusculas-->
                </tr>
                <tr>
                    <td>Apellido Materno</td>
                    <td><input type="text" required="true" placeholder="Evita usar acentos" style="text-transform:uppercase;" name="apellido_materno"></td> <!--Condición para convertir las letras a Mayusculas-->
                </tr>
                <tr>
                    <td>Nombre(s)</td>
                    <td><input type="text" required="true" style="text-transform:uppercase;" name="nombre"></td>
                </tr>
                <tr>
                    <td>Fecha de Nacimiento</td>
                    <td><input type="date" required="true" name="fecha_nacimiento"></td>
                </tr>
                <tr>
                    <td>Número de Celular</td>
                    <td><input type="tel" maxlenght="10"  name="celular" required="true"> </td>
                </tr>
                <tr>
                    <td>Número de Teléfono de Casa</td>
                    <td><input type="tel" maxlenght="10"  name="telefono_casa" required="true"> </td>
                </tr>
                <tr>
                    <td>Correo Electronico</td>
                    <td><input type="email" required="true" name="correo"> </td>
                </tr>
            </table>
            <font face="Bell MT"><h1>DIRECCIÓN DEL ALUMNO(A)</h1></font>
            <table>
                <tr>
                    <td>Entidad</td>
                        <td><select name="entidad" required="true">
                            <option value="1">MORELOS</option>
                            </select></td>
                </tr>
                <tr>
                    <td>Municipio</td>
                    <td>
                        <label> <select name="municipio">
                            <?php 
                                   include 'conexion.php'; /*Conexion a BD*/
                                   $consulta="SELECT * FROM localidades";
                                   $ejecutar=mysqli_query($conexion,$consulta) or die (mysqli_error($conexion));
                               ?>
                                
                            <?php foreach ($ejecutar as $opciones): ?>
                                <option value="<?php echo $opciones ['Nom_Mun'];?>"><?php echo $opciones['Nom_Loc'];?></option>
                            <?php endforeach ?>
                            
                        </select>
                            
                        </label>
                    </td>
                </tr>
            </table>
           
            </form>  
        </center>
    </section> 
</body>
</html>