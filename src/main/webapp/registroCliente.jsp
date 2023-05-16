<script>
     function validaRut() {
        var arut = new Array(8);
        var i, j, dv;
        if ((document.getElementById("rutC").value.length) = 0) {
            alert("debe ingresar un numero de rut");
        } else {
            for (i = 1; i < 9; i++) {
                arut[i] = 0;
            }
            i = 0;
            for (j = (9 - (document.getElementById("rutC").value.length)); j < 9; j++) {
                if ((document.getElementById("rutC").value.substr(i, 1) >= 0) & (document.getElementById("rutC").value.substr(i, 1) <= 9)) {
                    arut[j] = document.getElementById("rutC").value.substr(i, 1);
                    i++;

                } else {
                    alert("debe ingresar solo numeros!");
                    i = 0;
                    break;
                }
            }
            if (i > 0) {
                dv = 11 - (((arut[1] * 3) + (arut[2] * 2) + (arut[3] * 7) + (arut[4] * 6) + (arut[5] * 5) + (arut[6] * 4) + (arut[7] * 3) + (arut[8] * 2)) % 11)
                if (dv === 10) {
                    dv = "K";
                } else if (dv === 11) {
                    dv = "0";
                }
                document.getElementById("dig").value = dv;
                return dv;
            }
        }
    }
    
    
    function valida() {

        mensaje = "";
        rutC = document.getElementById("rutC").value;
        if (rutC == "") {
            mensaje = mensaje + "*Rut esta en blanco \n";
        }
        
        nombreC = document.getElementById("nombreC").value;
        if (nombreC == "") {
            mensaje = mensaje + "*Nombre esta en blanco \n";
        }
        telefono = document.getElementById("telefono").value;
        if (telefono == "") {
            mensaje = mensaje + "*telefono esta en blanco \n";
        }
        correoElectronico = document.getElementById("correoElectronico").value;
        if (correoElectronico == "") {
            mensaje = mensaje + "*correoElectronico esta en blanco \n";
        }
        fechaNacimiento = document.getElementById("fechaNacimiento").value;
        if (fechaNacimiento == "") {
            mensaje = mensaje + "*fechaNacimiento esta en blanco \n";
        }
        
        if (mensaje != "") {
            mensaje = "*Datos faltantes en el formulario \n\n" + mensaje;
            alert(mensaje);
            return false;
            
    }
    }
</script>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>


    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario</title>
    </head>
     <h1 align="center">REGISTRO DE CLIENTES</h1>

    <body>
        <h1 align="center">Formulario Registro de clientes</h1>
        <form action="registroCliente" method="POST" onsubmit="return valida()" >
            <table border="" align="center" width="50%">

                <tbody>
                    <tr>
                        <td>Rut Cliente:</td>
                        <td> <input type="text" name="rutC" id="rutC" onkeyup="validaRut()" > <br><br></td>
                    </tr>
                    <tr>
                        <td>DV</td>
                        <td>   <input type="text" name="dig" id="dig"  disabled="true"  /> <br><br></td>
                    </tr>
                    <tr>
                        <td>Nombre:</td>
                        <td><input type="text" name="nombreC" id="nombreC" > <br><br></td>
                    </tr>
                    <tr>
                        <td>Telefono:</td>
                        <td><input type="text" name="telefono" id="telefono" /> <br><br></td>
                    </tr>
                    <tr>
                        <td>Correo Electronico:</td>
                        <td> <input type="text" name="correoElectronico" id="correoElectronico" /> <br><br>      </td>
                    </tr>
                    <tr>
                        <td>Fecha Nacimiento:</td>
                        <td>  <input type="date" name="fechaNacimiento"  id="fechaNacimiento"/> <br><br>      </td>
                    </tr>
                    <tr>

                        <td> <button type="submit" name="Registrar" onclick="valida();" value="valida">Registrar</button>
                        </td>
                    </tr>
                </tbody>
            </table>

        </form>
    </body>
    
</html>
