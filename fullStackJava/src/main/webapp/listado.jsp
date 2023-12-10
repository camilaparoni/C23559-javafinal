<%@page import="java.util.List"%>
<%@page import="com.codoacodo.dto.Orador"%>
<html lang="es-ar" data-bs-theme="dark">
    <head>
        <%@include file="head.jsp" %>	
        <title>
            Listado
        </title>
    </head>
    <body data-bs-theme="dark">
        <!-- ACA VA EL NAVBAR  -->
        <%@include file="navbar.jsp" %>
        <main>
            <div class="container">
                <section class=""col-12 mx-auto ">
                    <h2 class="my-4">Listado</h2>
                    <table class="table table-sm table-striped table-hover">
                        <thead>
                            <tr>
                                <th scope="col" class="bg-secondary bg-gradient text-white pb-2 pt-2 ">ID</th>
                                <th scope="col" class="bg-primary bg-gradient text-white pb-2 pt-2 ">NOMBRE</th>
                                <th scope="col" class="bg-primary bg-gradient text-white pb-2 pt-2">APELLIDO</th>
                                <th scope="col" class="bg-primary bg-gradient text-white pb-2 pt-2">MAIL</th>
                                <th scope="col" class="bg-primary bg-gradient text-white pb-2 pt-2">TEMA</th>
                                <th scope="col" class="bg-primary bg-gradient text-white pb-2 pt-2">&nbsp;</th>
                            </tr>
                        </thead>
                        <%
                            //codigo java
                            //obtener el listado desde el request
                            //se guardo bajo el nombre de "listado"
                            List<Orador> listado = (List<Orador>) request.getAttribute("listado");

                        %>
                        <tbody>
                            <%                for (Orador unOrador : listado) {
                            %>
                            <tr>
                                <th scope="row"> <%=unOrador.getIdOrador()%> </th>
                                <td><%=unOrador.getNombre()%></td>
                                <td><%=unOrador.getApellido()%></td>
                                <td><%=unOrador.getMail()%></td>
                                <td><%=unOrador.getTema()%></td>
                                <td>
                                    <a class="btn rounded-pill bg-success bg-gradient text-white btn-sm" onclick="eliminarOrador('<%=unOrador.getIdOrador()%>', '<%=unOrador.getNombre()%>', '<%=unOrador.getApellido()%>', '<%=unOrador.getMail()%>', '<%=unOrador.getTema()%>')" role="button" id="eliminarBoton">Eliminar</a> | 
                                    <a class="btn rounded-pill bg-danger bg-gradient text-white btn-sm" href="<%=request.getContextPath()%>/api/EditarController?id=<%=unOrador.getIdOrador()%>" role="button">Editar</a>

                                </td>
                            </tr>
                            <%
                                }
                            %>
                        <script>
                        function eliminarOrador(id, nombre, apellido, mail, tema) {
                            if (confirm("Desea eliminar el siguiente orador:\n" +
                                    "Nombre y Apellido: " + nombre + " " + apellido + "\n" +
                                    "Mail: " + mail + "\n" +
                                    "Tema: " + tema
                                    ) === true) {
                                //editar.submit();
                                location.href = "/fullStackJavaFinal/api/EliminarController?id=" + id;
                                //<=request.getContextPath()>/api/EliminarController?id=<=unOrador.getIdOrador()>
                            }
                        }
                        </script>
                        </tbody>
                    </table>
                </section>
            </div>
        </main>
        <%@include file="footer.jsp" %>
    </body>	
</html>