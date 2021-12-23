<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="css/home.css">

<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        
<link href="//cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@4/dark.css" rel="stylesheet">
<script src="//cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>
<title>Verification</title>
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->

    <!-- Icon -->
    <div class="fadeIn first">
      <img src="css/user2.png" id="icon1" alt="User Icon" />
      <!-- <i class="fa fa-user-circle" aria-hidden="true"></i> -->
    </div>

    <!-- Login Form -->
    <h2 class="">Verify Code</h2>
    <form action="VerifyCode" method="post">
      <input type="text" id="login" class="fadeIn second" name="authcode" placeholder="Verify Code">
         <input type="submit" class="fadeIn fourth" value="Verify">
    </form>

    <!-- Remind Passowrd -->
    <div id="formFooter">
      <a class="" href="javascript:back();">Back</a>
    </div>
     <script>
          function back(){
    Swal.fire({
  title: 'Are You Sure!!',
  text: '',
  icon: 'warning',
  iconColor:"#F6834D",
  showCancelButton: true,
  confirmButtonText:'Yes',
  confirmButtonColor: '#DC143C',
  confirmButtonAriaLabel: 'Thumbs up, Yes',
  denyButtonText:'No',
  denyButtonAriaLabel: 'Thumbs down',
  denyButtonColor:'#DC143C',
//toast: true,
allowOutsideClick:false

}).then((result) => {
  /* Read more about isConfirmed, isDenied below */
  if (result.isConfirmed) {
   window.location= "Forget.html";
  } 
})
}
</script>

  </div>
</div>