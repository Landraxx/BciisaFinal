<script>
    function valida() {

        mensaje = "";

        nombreL = document.getElementById("nombreL").value;
        if (nombreL == "") {
            mensaje = mensaje + "*Nombre esta en blanco \n";
        }
        stock = document.getElementById("stock").value;
        if (stock == "") {
            mensaje = mensaje + "*Stock esta en blanco \n";
        }
        cantidadA = document.getElementById("cantidadA").value;
        if (cantidadA == "") {
            mensaje = mensaje + "*Cantidad Actual esta en blanco \n";
        }
        restriccion = document.getElementById("restriccion").value;
        if (restriccion == "") {
            mensaje = mensaje + "*Restriccion esta en blanco \n";
        }
        editorial = document.getElementById("editorial").value;
        if (editorial == "") {
            mensaje = mensaje + "*Editorial esta en blanco \n";
        }
         autor = document.getElementById("autor").value;
        if (autor == "") {
            mensaje = mensaje + "*Autor esta en blanco \n";
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
        <title>Catalogo de libros</title>
    </head>

    <h1 align="center">Catalogo de Libros</h1>

    <body>
        <form action="CatalogoL" method="POST" onsubmit="return valida()" >
            <table border="" align="center" width="50%">

                <tbody>
                    <tr>
                        <td>Nombre Libro:</td>
                        <td> <input type="text" name="nombreL" id="nombreL" > <br><br></td>
                    </tr>
                    <tr>
                        <td>Stock:</td>
                        <td><input type="text" name="stock" id="stock"  "  /> <br><br></td>
                    </tr>
                    <tr>
                        <td>Cantidad Actual:</td>
                        <td><input type="text" name="cantidadA" id="cantidadA" /> <br><br></td>
                    </tr>
                    <tr>
                        <td>Restriccion:</td>
                        <td><input type="text" name="restriccion" id="restriccion" /> <br><br></td>
                    </tr>
                    <tr>
                        <td>Editorial:</td>
                        <td> <input type="text" name="editorial"  id="editorial"/> <br><br>      </td>
                    </tr>
                     <tr>
                        <td>Autor:</td>
                        <td> <input type="text" name="autor"  id="autor"/> <br><br>      </td>
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
