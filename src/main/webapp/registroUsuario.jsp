<script>
     function validaRut() {
        var arut = new Array(8);
        var i, j, dv;
        if ((document.getElementById("rut").value.length) = 0) {
            alert("debe ingresar un numero de rut");
        } else {
            for (i = 1; i < 9; i++) {
                arut[i] = 0;
            }
            i = 0;
            for (j = (9 - (document.getElementById("rut").value.length)); j < 9; j++) {
                if ((document.getElementById("rut").value.substr(i, 1) >= 0) & (document.getElementById("rut").value.substr(i, 1) <= 9)) {
                    arut[j] = document.getElementById("rut").value.substr(i, 1);
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
        rut = document.getElementById("rut").value;
        if (rut == "") {
            mensaje = mensaje + "*Rut esta en blanco \n";
        }
        
        nombreU = document.getElementById("nombreU").value;
        if (nombreU == "") {
            mensaje = mensaje + "*Nombre esta en blanco \n";
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
    <h1  align="center">Formulario Registro de Usuario</h1>
    <body>
        <form action="registroUsuario" method="POST" onsubmit="return valida()" >
            <table border="1" align="center" width="50%">

                <tbody>
                    <tr>
                        <td>Rut:</td>
                        <td><input type="text" name="rut" id="rut" onkeyup="validaRut()"  /> </td>
                    </tr>
                    <tr>
                        <td>DV</td>
                        <td><input type="text" name="dig" id="dig"  disabled="true"  />  <br><br></td>
                    </tr>
                    <tr>
                        <td>Nombre Usuario:</td>
                        <td> <input type="text" name="nombreU" id="nombreU" > <br><br></td>
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