<%-- 
    Document   : navbar
    Created on : 14 dic. 2023, 10:19:28
    Author     : mario
--%>

<nav class="navbar navbar-expand-lg bg-success py-3">
    <div class="container-fluid">
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
        
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li>
            <a class="navbar-brand" href="#">
            <img src="../img/codoacodo.png" alt="Logo Codo a Codo" width="115" height="65">
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link fs-5 text-white" aria-current="page" href="<%=request.getContextPath()%>">Inicio</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fs-5 text-white" aria-current="page" href="<%=request.getContextPath()%>/api/ListadoController">Listado</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fs-5 text-white" aria-current="page" href="<%=request.getContextPath()%>/alta.jsp">Alta</a>
          </li>
          <li class="nav-item">
            <a class="nav-link fs-5 text-white" aria-current="page" href="https://github.com/juancho68/java_23559_fantastic5">Repositorio GitHubs</a>
          </li>
        </ul>
          
        <form class="d-flex mx-3"  method="get" action="<%=request.getContextPath()%>/api/BuscarController">
          <input name="clave" class="form-control bg-white text-dark me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-warning w-25" type="submit"><i class="bi bi-search"></i></button>
        </form>
      </div>
    </div>
</nav>    
