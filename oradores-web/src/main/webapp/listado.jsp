<%@page import="java.util.List"%>
<%@page import="com.codoacodo.dao.OradorDAO"%>
<html>
	<head>
		<%@include file="head.jsp" %>	
	</head>
	
	<body>
		<!-- ACA VA EL NAVBAR  -->
		<%@include file="navbar.jsp" %>
		<main>
			<div class="container">
				<section>
					<h1>Listado</h1>
					<table class="table">
					  <thead>
					    <tr>
					      <th scope="col">ID</th>
					      <th scope="col">NOMBRE</th>
					      <th scope="col">PRECIO</th>
					      <th scope="col">C&Oacute;DIGO</th>
					      <th scope="col">&nbsp;</th>
					    </tr>
					  </thead>
					  <% 
					  	//codigo java
					  	//obtener el listado desde el request
					  	//se guardo bajo el nombre de "listado"
					  	List<OradorDAO> listado = (List<OradorDAO>)request.getAttribute("listado");
					  %>
					  <tbody>
					   <!-- ESTO SE REPITE TANTA CANDTIDAD DE VECES COMO ARTICULOS TENGA -->
					   <%
					   	for( OradorDAO  unProducto : listado) {
					   %>
					    <tr>
					      <th scope="row"> <%=unProducto %> </th>
					      <td><%=unProducto %></td>
					      <td><%=unProducto %></td>
					      <td><%=unProducto %></td>
					      <td>
					      	<a class="btn btn-danger" href="<%=request.getContextPath()%>/api/EliminarController?id=<%=unProducto%>" role="button">Eliminar</a> | 
					      	<a class="btn btn-secondary" href="<%=request.getContextPath()%>/api/EditarController?id=<%=unProducto%>" role="button">Editar</a>
					      </td>
					    </tr>
					   <%
					   	}
					   %>
					  </tbody>
					</table>
				</section>
			</div>
		</main>
	</body>	
</html>