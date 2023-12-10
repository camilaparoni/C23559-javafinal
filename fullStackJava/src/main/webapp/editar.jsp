<%@page import="com.codoacodo.dto.Orador"%>
<html>
    <head>
        <%@include file="head.jsp" %>
    </head>

    <body data-bs-theme="dark">  
        <main>
            <!-- ACA VA EL NAVBAR  -->
            <%@include file="navbar.jsp" %>
            <div class="container">
                <section>
                    <%
                        Orador orador = (Orador) request.getAttribute("orador");
                    %>
                    <h1>Editar Orador N°<%=orador.getIdOrador()%></h1>
                    <!--  JSP -->
                    <form method="POST" id="editar"
                          action="<%=request.getContextPath()%>/api/EditarController">
                        <input name="id"
                               value="<%=orador.getIdOrador()%>"  
                               type="hidden" id="id">
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Nombre</label>
                            <input name="nombre"
                                   value="<%=orador.getNombre()%>"  
                                   type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre" maxlength="50">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea1" class="form-label">Apellido</label>
                            <input name="apellido"
                                   value="<%=orador.getApellido()%>" 
                                   type="text" class="form-control" id="exampleFormControlTextarea1">
                        </div>
                        <div class="mb-3">
                            <label for="mail" class="form-label">Correo</label>
                            <input value="<%=orador.getMail()%>" name="mail" type="text" class="form-control" id="mail" placeholder="Mail" maxlength="50">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlTextarea" class="form-label">Tema</label>
                            <input name="tema"
                                   value="<%=orador.getTema()%>" 
                                   type="text" class="form-control" id="exampleFormControlTextarea" maxlength="50">
                        </div>

                        <button type="submit" class="btn btn-primary bg-gradient">
                            Grabar
                        </button>
                        <script>
                            let editar = document.getElementById("editar");
                            let nombre = document.getElementById("exampleFormControlInput1");
                            let apellido = document.getElementById("exampleFormControlTextarea1");
                            let mail = document.getElementById("mail");
                            let tema = document.getElementById("exampleFormControlTextarea");
                            editar.addEventListener("submit", (e) => {
                                e.preventDefault();
                                if (confirm("Desea guardar el siguiente orador:\n" +
                                        "Nombre y Apellido: " + nombre.value + " " + apellido.value + "\n" +
                                        "Mail: " + mail.value + "\n" +
                                        "Tema: " + tema.value
                                        ) === true) {
                                    editar.submit();
                                }
                            });
                        </script>
                    </form>
                </section>
            </div>
        </main>
    </body>	
</html>