<html>
    <head>
        <%@include file="head.jsp" %>
    </head>

    <body data-bs-theme="dark">  
        <main>
            <!-- ACA VA EL NAVBAR  -->
            <%@include file="navbar.jsp" %>

            <div class="container">                 
                <section class="col-6 mx-auto">
                    <div class="text-center mt-4" id="formulario">
                        <medium>Conviértete en un</medium>
                        <h2>ORADOR</h2>
                        <p>Anótate como orador para dar una <u>charla ignite.</u> Cuéntanos de qué quieres hablar!</p>
                    </div>
                    <form method="post" id="alta" action="<%=request.getContextPath()%>/CreateController">
                        <div class="d-flex flex-row mb-3">
                            <input name= "nombre" type="text" class="form-control me-2" id="nombre" placeholder="Nombre">
                            <input name="apellido" type="text" class="form-control" id="apellido" placeholder="Apellido">
                        </div>
                        <div class="d-flex flex-row mb-3">
                            <input name= "mail" type="text" class="form-control" id="mail" placeholder="Correo">
                        </div>

                        <div class="mb-3 mx-auto">
                            <textarea name="tema" class="form-control" id="exampleFormControlTextarea1" placeholder="¿Sobre qué quieres hablar?"
                                      rows="3"></textarea>
                            <small class="text-left text-secondary">Recuerda incluir un título para tu charla</small>
                        </div>
                        <button type="submit" class="btn btn-success bg-gradient col-12"> Enviar</button>
                       
                        </button>
                        <script>
                            let alta = document.getElementById("alta");
                            let nombre = document.getElementById("nombre");
                            let apellido = document.getElementById("apellido");
                            let mail = document.getElementById("mail");
                            let tema = document.getElementById("exampleFormControlTextarea1");
                            alta.addEventListener("submit", (e) => {
                                e.preventDefault();
                                if (confirm("Desea dar de alta el siguiente orador:\n" +
                                        "Nombre y Apellido: " + nombre.value + " " + apellido.value + "\n" +
                                        "Mail: " + mail.value + "\n" +
                                        "Tema: " + tema.value
                                        ) === true) {
                                    alta.submit();
                                }
                            });
                        </script>
                    </form>
                        
                </section>
            </div>

        </main>
        <%@include file="footer.jsp" %>
    </body>	
</html>