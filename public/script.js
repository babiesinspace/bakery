  $(document).ready(function(){
    $(".dropdown-trigger").dropdown();
    $('.sidenav').sidenav();
    $('.parallax').parallax();
    $('.modal').modal();
    $(function(){ $('.carousel').carousel({full_width: true, numVisible: 5}); })
    setInterval(function() {
      $('.carousel').carousel('next');
    }, 3000);
  });