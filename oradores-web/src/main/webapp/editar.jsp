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
                                  <label for="exampleFormControlInput1" class="form-label">Nombre</label>
                                  <input name="nombre"
                                        value="<%=orador.getNombre()%>"  
                                        type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre" maxlength="40">
                                </div>
                                <div class="mb-3">
                                  <label for="exampleFormControlInput2" class="form-label">Apellido</label>
                                  <input name="apellido"
                                        value="<%=orador.getApellido()%>"  
                                        type="text" class="form-control" id="exampleFormControlInput2" placeholder="Apellido" maxlength="40">
                                </div>
                                <div class="mb-3">
                                  <label for="exampleFormControlInput3" class="form-label">Mail</label>
                                  <input name="mail"
                                        value="<%=orador.getMail()%>"  
                                        type="text" class="form-control" id="exampleFormControlInput3" placeholder="Mail" maxlength="40">
                                </div>                                    
                                <div class="mb-3">
                                  <label for="exampleFormControlInput4" class="form-label">Tema</label>
                                  <input name="tema"
                                        value="<%=orador.getTema()%>"  
                                        type="text" class="form-control" id="exampleFormControlInput4" placeholder="Tema" maxlength="50">
                                </div>
                                <button class="btn btn-primary">
                                    Grabar
                                </button>
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