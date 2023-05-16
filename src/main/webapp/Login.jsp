<script>

    function valida() {
        mensaje = "";
        usuario = document.getElementById("usuario").value;
        if (usuario == "") {
            mensaje = mensaje + "*usuario esta en blanco \n";
        }

        password = document.getElementById("password").value;
        if (password == "") {
            mensaje = mensaje + "*password esta en blanco \n";
        }
        cargo = document.getElementById("cargo").value;
        if (cargo == "") {
            mensaje = mensaje + "*cargo esta en blanco \n";
        }


        if (mensaje != "") {
            mensaje = "*datos faltantes en el formulario \n\n" + mensaje;
            alert(mensaje);
            return false;
        }
    }

    function validar() {
        var cargo = document.getElementbyId('cargo');
        if (cargo.value == 0 ||
                cargo.value == "")
        {
            alert("Selecciona una opcion para continuar");
            cargo.focus();
        } else
            alert("opcion de cargo Seleccionada con exito");
        cargo.focus();
    }

</script>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
body {
  background-color: whitesmoke;
}

h1 {
  color: black;
  text-align: center;
}
h2 {
  color: black;
  
}

p {
  font-family: verdana;
  font-size: 25px;
}
</style>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca Ciisa</title>
    </head>
    <body>
        <h1>Bciisa</h1>
        <h2> LA MEJOR BIBLIOTECA DEL MUNDO!!<h2>
        <form action="NewServletLogin" method="POST" onsubmit="return valida()">

            <label> Usuario: </label>
            <input type="text" name="usuario" id="usuario"  /> <br><br>

            <label> Password: </label>
            <input type="password" name="password" id="password" /> <br><br>

            <label for="cargo">Elije tu cargo</label>
            <select id="cargo" name="cargo" >
                <option value=""></option>
                <option value="Administrativo">Administrativo</option>
                <option value="Administrador">Administrador</option>
            </select>
            <br><br>

            <button type="submit" name="Enviar" onclick="validar();" value="validar" />Enviar</button>

</body>
</html>
