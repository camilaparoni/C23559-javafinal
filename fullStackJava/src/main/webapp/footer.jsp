<script>
    function myFunction() {
        var element = document.body;
        element.dataset.bsTheme =
                element.dataset.bsTheme === "light" ? "dark" : "light";
    }
    function stepFunction(event) {
        debugger;
        var element = document.getElementsByClassName("collapse");
        for (var i = 0; i < element.length; i++) {
            if (element[i] !== event.target.ariaControls) {
                element[i].classList.remove("show");
            }
        }
    }
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
<script
    src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
    integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
    crossorigin="anonymous">
</script>