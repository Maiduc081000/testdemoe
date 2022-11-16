<%@page contentType="text/html" pageEncoding="UTF-8"%>
<button onclick="topFunction()" id="myBtn" title="Go to top"><i class="icon-double-angle-up"></i></button>
<script>
    var mybutton = document.getElementById("myBtn");
    window.onscroll = function () {
        scrollFunction()
    };
    function scrollFunction() {
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
            mybutton.style.display = "block";
        } else {
            mybutton.style.display = "none";
        }
    }
    function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
</script>