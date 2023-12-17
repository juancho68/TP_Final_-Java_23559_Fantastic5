<%@page import="com.codoacodo.dto.Orador"%>
<!DOCTYPE html>
<html lang="es-ar" data-bs-theme="dark">
    <head>
        <%@include file="head.jsp" %>
        <title>Editar Orador</title>
    </head>

    <body>
        <main>
            <!-- ACA VA EL NAVBAR  -->
            <%@include file="navbar.jsp" %>
            <div class="container">
                <section>
                    <% 
                        Orador orador = (Orador)request.getAttribute("orador");
                    %>
                    
                    <div class="container w-50 mt-3 border border-warning">
                        <h1 class="text-center py-4 fw-bold">Editar orador ID=<%=orador.getIdOrador()%></h1>
                    <!--  JSP -->
                        <form method="POST" class="container"
                                action="<%=request.getContextPath()%>/api/EditarController">
                                <div class="mb-3">
                                  <!--<label for="id" class="form-label">Id</label>-->
                                  <input name="id" hidden
                                        value="<%=orador.getIdOrador()%>"  
                                        type="text" class="form-control" id="id" placeholder="Id">
                                </div>
                                <div class="mb-3">
                                  <label for="nombre" class="form-label">Nombre</label>
                                  <input name="nombre" 
                                        value="<%=orador.getNombre()%>"  
                                        type="text" class="form-control" id="nombre" placeholder="Nombre" maxlength="40" required="">
                                </div>
                                <div class="mb-3">
                                  <label for="apellido" class="form-label">Apellido</label>
                                  <input name="apellido"
                                        value="<%=orador.getApellido()%>"  
                                        type="text" class="form-control" id="apellido" placeholder="Apellido" maxlength="40" required="">
                                </div>
                                <div class="mb-3">
                                  <label for="mail" class="form-label">Mail</label>
                                  <input name="mail"
                                        value="<%=orador.getMail()%>"  
                                        type="text" class="form-control" id="mail" placeholder="Mail" maxlength="40" required="">
                                </div>                                    
                                <div class="mb-3">
                                  <label for="tema" class="form-label">Tema</label>
                                  <input name="tema"
                                        value="<%=orador.getTema()%>"  
                                        type="text" class="form-control" id="tema" placeholder="Tema" maxlength="50" required="">
                                </div>
                                <div>
                                    <button class="btn btn-primary bi bi-person-check-fill"> Grabar</button>
                                    <br>
                                </div>
                        </form>
                    </div> 
                </section>
            </div>
        </main>
        <footer>
            <%@include file="footer.jsp"%>
        </footer>                                      
    </body>	
</html>
