<html>
    <head>
        <%@include file="head.jsp" %>
    </head>
    <body data-bs-theme="dark">  
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="<%=request.getContextPath()%>/index.jsp">
                    <img src="/fullStackJavaFinal/assets/img/codoacodo.png" alt="codoacodo" width="120">Oradores</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="<%=request.getContextPath()%>/alta.jsp">Alta</a></li>
                        <li class="nav-item">
                            <a class="nav-link" href="<%=request.getContextPath()%>/api/ListadoController">Listado</a></ul>
                </div>
                <form class="d-flex mt-1 me-3"
                      action="<%=request.getContextPath()%>/api/BuscarController"
                      method="get">
                    <input name="clave" class="form-control me-2" type="search" placeholder="Buscar Orador" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Buscar</button>
                </form>
                <div class="form-check form-switch">
                    <input class="form-check-input p-2" type="checkbox" role="switch" id="flexSwitchCheckChecked"
                           checked onclick="myFunction()"/>
                    <img src="/fullStackJavaFinal/assets/img/110827_moon_icon.png" alt="luna" height="23" class="me-3" />
                </div>
            </div>
        </nav>
    </body>
</html>



