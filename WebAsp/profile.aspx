"<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="profile.aspx.cs" Inherits="WebAsp.profile" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Users / Profile - NiceAdmin Bootstrap Template</title>
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

    <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
        <a href="index.html" class="logo d-flex align-items-center">
            <img src="assets/img/logo.png" alt="">
            <span class="d-none d-lg-block">NiceAdmin</span>
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>
    </div>
    <!-- End Logo -->

    <div class="search-bar">
        <form class="search-form d-flex align-items-center" method="POST" action="#">
            <input type="text" name="query" placeholder="Search" title="Enter search keyword">
            <button type="submit" title="Search"><i class="bi bi-search"></i></button>
        </form>
    </div>
    <!-- End Search Bar -->

    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">

            <li class="nav-item d-block d-lg-none">
                <a class="nav-link nav-icon search-bar-toggle " href="#">
                    <i class="bi bi-search"></i>
                </a>
            </li>
            <!-- End Search Icon-->

            <li class="nav-item dropdown">

                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                    <i class="bi bi-bell"></i>
                    <span class="badge bg-primary badge-number">4</span>
                </a>
                <!-- End Notification Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
                    <li class="dropdown-header">You have 4 new notifications
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-exclamation-circle text-warning"></i>
                        <div>
                            <h4>Lorem Ipsum</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>30 min. ago</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-x-circle text-danger"></i>
                        <div>
                            <h4>Atque rerum nesciunt</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>1 hr. ago</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-check-circle text-success"></i>
                        <div>
                            <h4>Sit rerum fuga</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>2 hrs. ago</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-info-circle text-primary"></i>
                        <div>
                            <h4>Dicta reprehenderit</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>4 hrs. ago</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li class="dropdown-footer">
                        <a href="#">Show all notifications</a>
                    </li>

                </ul>
                <!-- End Notification Dropdown Items -->

            </li>
            <!-- End Notification Nav -->

            <li class="nav-item dropdown">

                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                    <i class="bi bi-chat-left-text"></i>
                    <span class="badge bg-success badge-number">3</span>
                </a>
                <!-- End Messages Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
                    <li class="dropdown-header">You have 3 new messages
              <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="assets/img/messages-1.jpg" alt="" class="rounded-circle">
                            <div>
                                <h4>Maria Hudson</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                <p>4 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="assets/img/messages-2.jpg" alt="" class="rounded-circle">
                            <div>
                                <h4>Anna Nelson</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                <p>6 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="assets/img/messages-3.jpg" alt="" class="rounded-circle">
                            <div>
                                <h4>David Muldon</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                <p>8 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="dropdown-footer">
                        <a href="#">Show all messages</a>
                    </li>

                </ul>
                <!-- End Messages Dropdown Items -->

            </li>
            <!-- End Messages Nav -->

            <li class="nav-item dropdown pe-3">

                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                    <img src="assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2">
                        <asp:Label ID="LabelUsername" runat="server" />
                    </span>

                </a>
                <!-- End Profile Iamge Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6><%= Session["Username"] %></h6>
                        <span>Web Designer</span>
                    </li>
            </li>
            <li>
                <hr class="dropdown-divider">
            </li>

            <li>
                <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                    <i class="bi bi-person"></i>
                    <span>My Profile</span>
                </a>
            </li>
            <li>
                <hr class="dropdown-divider">
            </li>

            <li>
                <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                    <i class="bi bi-gear"></i>
                    <span>Account Settings</span>
                </a>
            </li>
            <li>
                <hr class="dropdown-divider">
            </li>

            <li>
                <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                    <i class="bi bi-question-circle"></i>
                    <span>Need Help?</span>
                </a>
            </li>
            <li>
                <hr class="dropdown-divider">
            </li>

            <li>
                <a class="dropdown-item d-flex align-items-center" href="https://localhost:44346/login.aspx">
                    <i class="bi bi-box-arrow-right"></i>
                    <span>Sign Out</span>
                </a>
            </li>

        </ul>
        <!-- End Profile Dropdown Items -->

        <!-- End Profile Nav -->


    </nav>
    <!-- End Icons Navigation -->

</header>
<!-- End Header -->

<body>
    <form runat="server">
        <aside id="sidebar" class="sidebar">

            <ul class="sidebar-nav" id="sidebar-nav">



                <li class="nav-heading">Pages</li>

                <li class="nav-item">
                    <a class="nav-link " href="users-profile.html">
                        <i class="bi bi-person"></i>
                        <span>Profile</span>
                    </a>
                </li>
                <!-- End Profile Page Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="pages-faq.html">
                        <i class="bi bi-question-circle"></i>
                        <span>F.A.Q</span>
                    </a>
                </li>
                <!-- End F.A.Q Page Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="pages-contact.html">
                        <i class="bi bi-envelope"></i>
                        <span>Contact</span>
                    </a>
                </li>
                <!-- End Contact Page Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="https://localhost:44346/register.aspx">
                        <i class="bi bi-card-list"></i>
                        <span>Register</span>
                    </a>
                </li>
                <!-- End Register Page Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="https://localhost:44346/login.aspx">
                        <i class="bi bi-box-arrow-in-right"></i>
                        <span>Login</span>
                    </a>
                </li>
                <!-- End Login Page Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="pages-error-404.html">
                        <i class="bi bi-dash-circle"></i>
                        <span>Error 404</span>
                    </a>
                </li>
                <!-- End Error 404 Page Nav -->

                <li class="nav-item">
                    <a class="nav-link collapsed" href="pages-blank.html">
                        <i class="bi bi-file-earmark"></i>
                        <span>Blank</span>
                    </a>
                </li>
                <!-- End Blank Page Nav -->

            </ul>

        </aside>
        <!-- End Sidebar-->

        <main id="main" class="main">

            <div class="pagetitle">
                <h1>Profile</h1>
                <nav>
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item">Users</li>
                        <li class="breadcrumb-item active">Profile</li>
                    </ol>
                </nav>
            </div>
            <!-- End Page Title -->

            <section class="section profile">
                <div class="row">
                    <div class="col-xl-4">

                        <div class="card">
                            <div class="card-body profile-card pt-4 d-flex flex-column align-items-center">

                                <asp:Image ID="ProfileImage" runat="server" CssClass="rounded-circle" ImageUrl="images/berk.jpg" AlternateText="Profile" />
                                <h2><%= Session["Username"] %></h2>
                                <h3>Web Developer</h3>
                                <div class="social-links mt-2">
                                    <a href="#" class="twitter"><i class="bi bi-twitter"></i></a>
                                    <a href="#" class="facebook"><i class="bi bi-facebook"></i></a>
                                    <a href="#" class="instagram"><i class="bi bi-instagram"></i></a>
                                    <a href="#" class="linkedin"><i class="bi bi-linkedin"></i></a>
                                </div>

                                <!-- Fotoğraf Seç Butonu -->
                                <div class="mt-3" style="width: 100%; text-align: center;">
                                    <asp:FileUpload ID="ProfilePictureUpload" runat="server" accept="image/*" />
                                    <asp:Button ID="SaveButton" runat="server" Text="Kaydet" OnClick="SaveButton_Click" />
                                </div>

                            </div>
                        </div>

                    </div>
                </div>



                <div class="col-xl-8">

                    <div class="card">
                        <div class="card-body pt-3">
                            <!-- Bordered Tabs -->
                            <ul class="nav nav-tabs nav-tabs-bordered">
                                <li class="nav-item">
                                    <a class="nav-link active" data-bs-toggle="tab" href="#blog-overview">Blog</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="tab" href="#profile-change-password">Edit Profile Change Password</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="tab" href="#certificates">Certificates</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="tab" href="#education">Education</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="tab" href="#experiences">Experiences</a>
                                </li>
                            </ul>

                            
                            <div class="tab-content pt-2">

                                <div class="tab-pane fade show active profile-overview" id="blog-overview">
                                    <h5 class="card-title">About</h5>
                                    <p class="small fst-italic">Sunt est soluta temporibus accusantium neque nam maiores cumque temporibus. Tempora libero non est unde veniam est qui dolor. Ut sunt iure rerum quae quisquam autem eveniet perspiciatis odit. Fuga sequi sed ea saepe at unde.</p>

                                    <h5 class="card-title">Profile Details</h5>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Title</div>
                                        <div class="col-lg-9 col-md-8">
                                            <asp:TextBox ID="Title" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Content</div>
                                        <div class="col-lg-9 col-md-8">
                                            <asp:TextBox ID="Content" runat="server" TextMode="MultiLine"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Published Date</div>
                                        <div class="col-lg-9 col-md-8">
                                            <asp:TextBox ID="PublishedDate" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Last Updated Date</div>
                                        <div class="col-lg-9 col-md-8">
                                            <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Last Updated By</div>
                                        <div class="col-lg-9 col-md-8">
                                            <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Creation Date</div>
                                        <div class="col-lg-9 col-md-8">
                                            <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row">
                                        <div class="col-lg-3 col-md-4 label">Created By</div>
                                        <div class="col-lg-9 col-md-8">
                                            <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-3 col-md-4"></div>
                                        <div class="col-lg-9 col-md-8">
                                            <asp:Button ID="CreateButton" runat="server" Text="Create" OnClick="CreateButton_Click" CssClass="btn btn-primary" />
                                            <asp:Button ID="RedirectButton" runat="server" Text="Redirect" OnClick="RedirectButton_Click" CssClass="btn btn-secondary" />
                                        </div>
                                    </div>
                                </div>
                            

                             <div class="tab-pane fade pt-3" id="profile-change-password">

                            <asp:Panel ID="panel1" runat="server">
                                <div class="row mb-3">
                                    <label for="about" class="col-md-4 col-lg-3 col-form-label">About</label>
                                    <div class="col-md-8 col-lg-9">
                                        <asp:TextBox ID="About" runat="server" CssClass="form-control" TextMode="MultiLine"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="Country" class="col-md-4 col-lg-3 col-form-label">Country</label>
                                    <div class="col-md-8 col-lg-9">
                                        <asp:TextBox ID="Country" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                   <label for="Address" class="col-md-4 col-lg-3 col-form-label">Address</label>
                                    <div class="col-md-8 col-lg-9">
                                        <asp:TextBox ID="Address" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="Phone" class="col-md-4 col-lg-3 col-form-label">Phone</label>
                                    <div class="col-md-8 col-lg-9">
                                        <asp:TextBox ID="Phone" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="Email" class="col-md-4 col-lg-3 col-form-label">Email</label>
                                    <div class="col-md-8 col-lg-9">
                                        <asp:TextBox ID="Email" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="text-center">
                                    <asp:Button ID="Button3" runat="server" Text="Save Changes" CssClass="btn btn-primary" OnClick="SaveChanges_Click" />
                                </div>
                            </asp:Panel>

                            <div class="row mb-3">
                                <label for="currentPassword" class="col-md-4 col-lg-3 col-form-label">Current Password</label>
                                <div class="col-md-8 col-lg-9">
                                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="newPassword" class="col-md-4 col-lg-3 col-form-label">New Password</label>
                                <div class="col-md-8 col-lg-9">
                                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="renewPassword" class="col-md-4 col-lg-3 col-form-label">Re-enter New Password</label>
                                <div class="col-md-8 col-lg-9">
                                    <asp:TextBox ID="TextBox3" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>

                            <div class="text-center">
                                <asp:Button ID="Button4" runat="server" OnClick="ChangePassword_Click" Text="Change Password" CssClass="btn btn-primary" />
                            </div>
                        </div>
                          
                            <div class="tab-pane fade" id="certificates">
                                <h5 class="card-title">Certificates</h5>

                                <asp:Panel ID="panelCertificates" runat="server">
                                    <div class="row mb-3">
                                        <label for="Name" class="col-md-4 col-lg-3 col-form-label">Name</label>
                                        <div class="col-md-8 col-lg-9">
                                            <asp:TextBox ID="Name" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="DeliveryDate" class="col-md-4 col-lg-3 col-form-label">Delivery Date</label>
                                        <div class="col-md-8 col-lg-9">
                                            <asp:TextBox ID="DeliveryDate" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="Institution" class="col-md-4 col-lg-3 col-form-label">Institution</label>
                                        <div class="col-md-8 col-lg-9">
                                            <asp:TextBox ID="Institution" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="Department" class="col-md-4 col-lg-3 col-form-label">Department</label>
                                        <div class="col-md-8 col-lg-9">
                                            <asp:TextBox ID="Department" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="LastUpdatedDate" class="col-md-4 col-lg-3 col-form-label">Last Updated Date</label>
                                        <div class="col-md-8 col-lg-9">
                                            <asp:TextBox ID="LastUpdatedDate" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="LastUpdatedBy" class="col-md-4 col-lg-3 col-form-label">Last Updated By</label>
                                        <div class="col-md-8 col-lg-9">
                                            <asp:TextBox ID="LastUpdatedBy" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="CreationDate" class="col-md-4 col-lg-3 col-form-label">Creation Date</label>
                                        <div class="col-md-8 col-lg-9">
                                            <asp:TextBox ID="CreationDate" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="CreatedBy" class="col-md-4 col-lg-3 col-form-label">Created By</label>
                                        <div class="col-md-8 col-lg-9">
                                            <asp:TextBox ID="CreatedBy" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="text-center">
                                        <asp:Button ID="KaydetButon" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="KaydetButton_Click" />
                                        <asp:Button ID="DownloadButton" runat="server" Text="Download Certificates" CssClass="btn btn-primary" OnClick="DownloadButton_Click" />
                                    </div>
                            
                            </asp:Panel>
                                </div>
                        
                        <div class="tab-pane fade" id="education">
                            <h5 class="card-title">Education</h5>

                            <asp:Panel ID="panelEducation" runat="server">
                                <div class="row mb-3">
                                    <label for="NameOfSchool" class="col-md-4 col-lg-3 col-form-label">Name of School</label>
                                    <div class="col-md-8 col-lg-9">
                                        <asp:TextBox ID="NameOfSchool" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="Department" class="col-md-4 col-lg-3 col-form-label">Department</label>
                                    <div class="col-md-8 col-lg-9">
                                        <asp:TextBox ID="TextBox4" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="GraduationDate" class="col-md-4 col-lg-3 col-form-label">Graduation Date</label>
                                    <div class="col-md-8 col-lg-9">
                                        <asp:TextBox ID="GraduationDate" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="LastUpdatedDate" class="col-md-4 col-lg-3 col-form-label">Last Updated Date</label>
                                    <div class="col-md-8 col-lg-9">
                                        <asp:TextBox ID="TextBox5" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="LastUpdatedBy" class="col-md-4 col-lg-3 col-form-label">Last Updated By</label>
                                    <div class="col-md-8 col-lg-9">
                                        <asp:TextBox ID="TextBox6" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="CreationDate" class="col-md-4 col-lg-3 col-form-label">Creation Date</label>
                                    <div class="col-md-8 col-lg-9">
                                        <asp:TextBox ID="TextBox7" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>

                                <div class="row mb-3">
                                    <label for="CreatedBy" class="col-md-4 col-lg-3 col-form-label">Created By</label>
                                    <div class="col-md-8 col-lg-9">
                                        <asp:TextBox ID="TextBox8" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>
                                <div class="text-center">
                                    <asp:Button ID="CopyButton" runat="server" Text="Copy!" CssClass="btn btn-primary" OnClick="CopyButton_Click" />
                                    <asp:Button ID="Button10" runat="server" Text="Redirect" CssClass="btn btn-primary" OnClick="RedirectEduButton_Click" />
                                </div>
                            </asp:Panel>
                        </div>


                    <div class="tab-pane fade" id="experiences">
                        <h5 class="card-title">Experiences</h5>

                        <asp:Panel ID="panelExperiences" runat="server">
                            <div class="row mb-3">
                                <label for="Position" class="col-md-4 col-lg-3 col-form-label">Position</label>
                                <div class="col-md-8 col-lg-9">
                                    <asp:TextBox ID="Position" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="Department" class="col-md-4 col-lg-3 col-form-label">Department</label>
                                <div class="col-md-8 col-lg-9">
                                    <asp:TextBox ID="TextBox9" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="CompanyName" class="col-md-4 col-lg-3 col-form-label">Company Name</label>
                                <div class="col-md-8 col-lg-9">
                                    <asp:TextBox ID="CompanyName" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="StartDate" class="col-md-4 col-lg-3 col-form-label">Start Date</label>
                                <div class="col-md-8 col-lg-9">
                                    <asp:TextBox ID="StartDate" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="EndDate" class="col-md-4 col-lg-3 col-form-label">End Date</label>
                                <div class="col-md-8 col-lg-9">
                                    <asp:TextBox ID="EndDate" runat="server" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="text-center">
                                <asp:Button ID="Button2" runat="server" Text="Save" CssClass="btn btn-primary" OnClick="Save2Button_Click" />
                                <asp:Button ID="Button9" runat="server" Text="Redirect" CssClass="btn btn-primary" OnClick="RedirectexpButton_Click" />
                                
                            </div>
                        </asp:Panel>
                    </div>
                   </div>     
                    <!-- End Change Password Form -->
                <!-- End Bordered Tabs -->
</div>
                        </div>
                    </div>
            </section>

        </main>
        <!-- End #main -->

        <!-- ======= Footer ======= -->
        <footer id="footer" class="footer">
            <div class="copyright">
                &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
            </div>
            <div class="credits">
                <!-- All the links in the footer should remain intact. -->
                <!-- You can delete the links only if you purchased the pro version. -->
                <!-- Licensing information: https://bootstrapmade.com/license/ -->
                <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
                Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
            </div>
        </footer>
        <!-- End Footer -->

        <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>
    </form>
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

</body>

</html>
