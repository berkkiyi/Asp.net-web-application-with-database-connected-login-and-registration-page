    

<!DOCTYPE html>
<script runat="server">
    Protected Sub CreateAccountButton_Click(sender As Object, e As EventArgs) 
        ' Burada hesap oluşturma işlemlerini gerçekleştirebilirsiniz.
        ' Örneğin, TextBox1 ve TextBox2'den kullanıcı adı ve şifreyi alabilirsiniz.
    End Sub
</script>



<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Login</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
    <style>
    body {
      background-color: #000033; /* Gece mavisi rengi */
      color: white; /* Metin rengini beyaz yapar */
      overflow: hidden; /* Ekranın dışına çıkan çemberlerin görünmemesini sağlar */
      position: relative; /* Çemberlerin pozisyonunu belirler */
    }

    .circle {
      background-color: #ffffff;
      height: 10px;
      width: 10px;
      border-radius: 50%; /* Çember şeklini oluşturur */
      position: absolute;
      opacity: 0.5; /* Çemberlerin yarı şeffaf olmasını sağlar */
      animation: fadeOut 3s linear forwards; /* Çemberlerin zamanla kaybolmasını sağlar */
    }

    @keyframes fadeOut {
      from { opacity: 0.5; }
      to { opacity: 0; }
    }
  </style>

    <main>
        <div class="container">

            <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
                <div class="container">
                    <div class="row justify-content-center">
                        <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                            <div class="d-flex justify-content-center py-4">
                                <a href="index.html" class="logo d-flex align-items-center w-auto">
                                    <img src="assets/img/logo.png" alt="">
                                    <span class="d-none d-lg-block">NiceAdmin</span>
                                </a>
                            </div>
                            <!-- End Logo -->

                            <div class="card mb-3">

                                <div class="card-body">

                                    <div class="pt-4 pb-2">
                                        <h5 class="card-title text-center pb-0 fs-4">Create an Account</h5>
                                        <p class="text-center small">Enter your personal details to create account</p>
                                    </div>

                                    <form runat="server" class="row g-3 needs-validation" novalidate>
                                        <!-- Form içeriği -->
                                        <div class="col-12">
                                            <label for="yourUsername" class="form-label">Username</label>
                                            <div class="input-group has-validation">
                                                <span class="input-group-text" id="inputGroupPrepend">@</span>
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" />
                                                <!-- ASP.NET Web Forms, client-side validation için built-in özelliklere sahip olmadığından, burada bir 'invalid-feedback' div'i kullanılmamıştır. -->
                                            </div>
                                        </div>
                                        
                                    <div class="col-12">
                                        <label for="yourPassword" class="form-label">Password</label>
                                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" CssClass="form-control" />
                                        <!-- ASP.NET Web Forms, client-side validation için built-in özelliklere sahip olmadığından, burada bir 'invalid-feedback' div'i kullanılmamıştır. -->
                                    </div>

                                    <div class="col-12">
                                        <div class="form-check">
                                            <asp:CheckBox ID="acceptTerms" runat="server" CssClass="form-check-input" />
                                            <label class="form-check-label" for="acceptTerms">I agree and accept the <a href="#">terms and conditions</a></label>
                                            <!-- ASP.NET Web Forms, client-side validation için built-in özelliklere sahip olmadığından, burada bir 'invalid-feedback' div'i kullanılmamıştır. -->
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <asp:Button ID="CreateAccountButton" runat="server" Text="Create Account" CssClass="btn btn-primary w-100" OnClick="CreateAccountButton_Click" />
                                    </div>

                                    <div class="col-12">
                                        <p class="small mb-0">Already have an account? <a href="https://localhost:44346/login.aspx">Log in</a></p>
                                    </div>
                                    </form>

                                </div>
                            </div>

                            <div class="credits">
                                <!-- All the links in the footer should remain intact. -->
                                <!-- You can delete the links only if you purchased the pro version. -->
                                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
                            </div>

                        </div>
                    </div>
                </div>

            </section>

        </div>
    </main>
    <!-- End #main -->

    <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/chart.js/chart.umd.js"></script>
    <script src="assets/vendor/echarts/echarts.min.js"></script>
    <script src="assets/vendor/quill/quill.min.js"></script>
    <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
    <script src="assets/vendor/tinymce/tinymce.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>

    <!-- Template Main JS File -->
    <script src="assets/js/main.js"></script>
     <script>
         // Çemberleri oluşturur ve hareket ettirir
         function createCircles() {
             for (let i = 0; i < 20; i++) {
                 let circle = document.createElement('div');
                 circle.className = 'circle';
                 circle.style.top = Math.random() * window.innerHeight + 'px';
                 circle.style.left = Math.random() * window.innerWidth + 'px';
                 document.body.appendChild(circle);

                 setTimeout(() => {
                     circle.remove();
                 }, 3000);
             }
         }

         // Her 100 milisaniyede bir çember oluşturur
         setInterval(createCircles, 100);
     </script>
</body>
</html>
    