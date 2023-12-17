<!DOCTYPE html>
<html lang="es-ar" data-bs-theme="dark">
    <head>
        <%@include file="head.jsp" %>
        <title>Alta Orador</title>    
    </head>

    <body>
        <main>
            <!-- ACA VA EL NAVBAR  -->
            <%@include file="navbar.jsp" %>
            
            <div class="container w-50 mt-3 border border-succes">
                <h1 class="text-center py-4 fw-bold">Agregar Orador <i class="bi bi-person-plus"></i></h1>

                <form class="container" method="post" action="<%=request.getContextPath()%>/CreateController">
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="nombreTextarea" name="nombreTextarea" placeholder="Ingrese el nombre"  maxlength="50">
                        <label for="floatingInput">Nombre</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="text" class="form-control" id="apellidoTextarea" name="apellidoTextarea" placeholder="Ingrese el apellido"  maxlength="40">
                        <label for="floatingInput">Apellido</label>
                    </div>
                    <div class="form-floating mb-3">
                        <input type="email" class="form-control" id="mailTextarea" name="mailTextarea" placeholder="Ingrese el email"  maxlength="50">
                        <label for="floatingInput">Email</label>
                    </div>
                    <div class="form-floating mb-2">
                        <input type="text" class="form-control" id="temaTextarea" name="temaTextarea" placeholder="Ingrese el tema a exponer"  maxlength="60">
                        <label for="floatingInput">Tema a exponer</label>
                    </div>
                    <div class="container text-center">
                        <button class="btn btn-warning w-50 my-3 bi bi-person-plus-fill"> Dar Alta</button>
                    </div>
                </form>   
            </div>


        </main>
        <footer>
            <%@include file="footer.jsp"%>
        </footer>
    </body>	
</html>
