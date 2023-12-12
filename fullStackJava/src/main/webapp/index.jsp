<!DOCTYPE html>
<html lang="es-ar">
    <head>
        <%@include file="head.jsp" %>
        <title>Java TP Integrador</title>
    </head>

    <body data-bs-theme="dark">
        <!-- ACA VA EL NAVBAR  -->
        <%@include file="navbar.jsp" %>	
        <div class="text-center mt-4 id=oradores">
            <medium>Conocé a los</medium>
            <h2>ORADORES</h2>
        </div>

        <section class="d-flex justify-content-center mt-3 mb-3 gap-3 flex-wrap">
            <div class="card" style="width: 18rem;">
                <img src="assets/img/steve.jpg" class="card-img-top" alt="steve">
                <div class="card-body">
                    <span class="badge rounded-pill text-bg-warning mb-2">Javascript</span>
                    <span class="badge rounded-pill text-bg-info">React</span>
                    <h5 class="card-title">Steve Jobs</h5>
                    <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nostrum dolores vero adipisci magnam quia!</p>
                </div>
            </div>

            <div class="card" style="width: 18rem;">
                <img src="assets/img/bill.jpg" class="card-img-top" alt="bill">
                <div class="card-body">
                    <span class="badge rounded-pill text-bg-warning mb-2">Javascript</span>
                    <span class="badge rounded-pill text-bg-info">React</span>
                    <h5 class="card-title">Bill Gates</h5>
                    <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nostrum dolores vero adipisci magnam quia!</p>
                </div>
            </div>

            <div class="card" style="width: 18rem;">
                <img src="assets/img/ada.jpeg" class="card-img-top" alt="ada">
                <div class="card-body">
                    <span class="badge rounded-pill text-bg-secondary mb-2">Negocios</span>
                    <span class="badge rounded-pill text-bg-danger">Startups</span>
                    <h5 class="card-title">Ada Lovelace</h5>
                    <p class="card-text">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Nostrum dolores vero adipisci magnam quia!</p>
                </div>
            </div>
        </section> 

        <%@include file="footer.jsp" %>
    </body>	
</html>