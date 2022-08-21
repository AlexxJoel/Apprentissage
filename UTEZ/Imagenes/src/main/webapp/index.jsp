<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>

<div class="container  mt-4">
   <form action="ImgenServlet?accion=guardar" method="post" enctype="multipart/form-data" class="col-6">
       <div class="card" >
           <div class="card-header">
               <h3>Agregar Imagenes </h3>
           </div>
           <div class="card-body">
               <div class="form-group">
                   <label >Nombre del producto</label>
                   <input type="text" name="txtNOmbre"   class="form-control">
               </div>
               <div class="form-group">
                   <label >Imagen</label>
                   <input type="file" name="fileImagen" id="mainImage" class="form-control">
               </div>
           </div>
           <div class="card-footer">
               <button class="btn btn-outline-dark" name="accion" value="guardar">Guardar</button>
           </div>

       </div>
   </form>



    <table class="table">
        <thead>
        <tr>
            <th scope="col">#</th>
            <th scope="col">Nombre</th>
            <th scope="col">Imagens</th>
            <th scope="col">Accion</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="p" items="${productos}">
        <tr>
            <th scope="row">${p.id}</th>
            <td>${p.nombre}</td>
            <td><img src="${pageContext.request.contextPath}/images/${p.ruta}" height="400" width="500" alt="no hay"></td>
            <td>
                <button disabled class="btn "></button>
                <button type="reset" class="btn "></button>

            </td>
        </tr>
        </c:forEach>
        </tbody>
    </table>

</div>




</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<script>

  function  cargaArchive(e){
      var imageNameMain = document.getElementById("mainImage").value;
      console.log(imageNameMain)

  }
</script>

</html>