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
            <div class="container-fluid mt-2 rounded-1">
                
            <h2 class="text-center py-3 fw-bold text-light">Listado<i class="bi bi-card-list"></i></h2>
                <table class="table table-dark table-hover border-success table-striped">
                    <thead class="text-center fw-bold">
                      <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Mail</th>
                        <th scope="col">Tema</th>
                        <th scope="col">Fecha Alta</th>
                        <th scope="col">&nbsp;</th>
                      </tr>
                    </thead>
                    <% 
                          //codigo java
                          //obtener el listado desde el request
                          //se guardo bajo el nombre de "listado"
                      List<Orador> listado = (List<Orador>)request.getAttribute("listado");
                    %>
                  <tbody class="text-center">
                    <%
                         for( Orador  unOrador : listado) {
                    %>

                     <tr>
                        <th scope="row"> <%=unOrador.getIdOrador()%> </th>
                        <td><%=unOrador.getNombre() %></td>
                        <td><%=unOrador.getApellido() %></td>
                        <td><%=unOrador.getMail() %></td>
                        <td><%=unOrador.getTema() %></td>
                        <td><%=unOrador.getFechaAlta() %></td>
                        <td class="text-center">
                          <a class="btn btn-danger btn-sm" href="<%=request.getContextPath()%>/api/EliminarController?id=<%=unOrador.getIdOrador()%>" role="button" onclick="javascript:if(!confirm('¿Realmente desea eliminar?'))return false"><i class="bi bi-trash"></i></a> | 
                          <a class="btn btn-warning btn-sm" href="<%=request.getContextPath()%>/api/EditarController?id=<%=unOrador.getIdOrador()%>" role="button"><i class="bi bi-pencil-square"></i>Editar</a>
                        </td>
                      </tr>
                     <%

                          }
                     %>
                    </tbody>
                </table>                      
            </div>
        </main>
        <footer><%@include file="footer.jsp"%></footer>
    </body>	
</html>