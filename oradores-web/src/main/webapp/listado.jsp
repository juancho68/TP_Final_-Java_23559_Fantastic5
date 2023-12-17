<%@page import="java.util.List"%>
<%@page import="com.codoacodo.dto.Orador"%>
<!DOCTYPE html>
<html lang="es-ar" data-bs-theme="dark">
    <head>
        <%@include file="head.jsp" %>
        <title>Listado</title>	
    </head>
	
    <body>
             
        <!-- ACA VA EL NAVBAR  -->
        <%@include file="navbar.jsp" %>
        <main>   
            <div class="container">


                <section class="bg-secondary-subtle border rounded-5 m-4 px-2 pt-2 pb-3 col-12 mx-auto text-center">
      <h2 class="my-4">Listado <i class="bi bi-card-list"></i></h2>
      <table class="table table-sm table-striped table-hover border border-success">
                      <thead>
                        <tr>
                          <th scope="col">ID</th>
                          <th scope="col">NOMBRE</th>
                          <th scope="col">APELLIDO</th>
                          <th scope="col">MAIL</th>
                          <th scope="col">TEMA</th>
                          <th scope="col">ACCIONES</th>
                        </tr>
                      </thead>
          <% 
                //codigo java
                //obtener el listado de oradores desde el request
                //que anteriormente en el servlet lo guardamos con ese nombre "listado"
            List<Orador> listado = (List<Orador>)request.getAttribute("listado");
          %>
        <tbody>
            <%
                for( Orador  unOrador : listado) {
                    String modalId = "exampleModal" + unOrador.getIdOrador();
            %>

            <tr>
               <th> <%=unOrador.getIdOrador()%> </th>
               <td><%=unOrador.getNombre() %></td>
               <td><%=unOrador.getApellido() %></td>
               <td><%=unOrador.getMail() %></td>
               <td><%=unOrador.getTema() %></td>
               <td>
               <a class="btn btn-success" href="<%=request.getContextPath()%>/api/EditarController?id=<%=unOrador.getIdOrador()%>" role="button"><i class="bi bi-pencil-square"></i>Editar</a>
               <a id="input_del" class="btn btn-warning" data-bs-toggle="modal" data-bs-target="#<%=modalId%>">
                 <i class="bi bi-trash"></i>Eliminar
               </a>
               </td>
              </tr>
            <!-- Modal -->
            <div class="modal fade" id="<%=modalId%>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
              <div class="modal-dialog">
                <div class="modal-content">
                  <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Cuidado!</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                      <a><b>¿Seguro que quiere borrar el ID <%=unOrador.getIdOrador()%>?</b></a>
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                    <a class="btn btn-danger" href="<%=request.getContextPath()%>/api/EliminarController?id=<%=unOrador.getIdOrador()%>" role="button">Eliminar</a>
                  </div>
                </div>
              </div>
             <%
                  }
             %>

        </tbody>
      </table>
    </section>

                      
            </div>
        </main>
        <%@include file="footer.jsp" %> 
    </body>	
</html>
