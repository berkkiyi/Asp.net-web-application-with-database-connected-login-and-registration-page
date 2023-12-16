<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="WebAsp.Anasayfa" %>






<!DOCTYPE html>
<html>
<head>
    <title>My Website</title>
    <link rel="stylesheet" type="text/css" href="style.css">


    <!-- Adding Font Awesome CSS -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
</head>
<body>
    <form runat="server">
        <!--Header Kısmı-->
        <header>
            <div class="dropdown">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    <i class="fas fa-bars"></i>
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                    <a class="dropdown-item" href="#">Home</a>
                    <a class="dropdown-item" href="#">Features</a>
                    <a class="dropdown-item" href="#">About Me</a>
                    <a class="dropdown-item" href="#">Contact</a>
                </div>
            </div>

            <nav>
                <ul>
                    <li><a href="#" class="active">Home</a></li>
                    <li><a href="#">Features</a></li>
                    <li><a href="#">About Me</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
            </nav>
            <div class="social-media">
                <a href="YOUR-FACEBOOK-LINK" target="_blank"><i class="fab fa-facebook"></i></a>
                <a href="https://www.linkedin.com/in/berk-kıyı-3215ab223/" target="_blank"><i class="fab fa-linkedin"></i></a>
                <a href="https://www.youtube.com" target="_blank"><i class="fab fa-youtube"></i></a>
                <a href="#" target="_blank"><i class="fa-brands fa-twitter"></i></a>
                <a href="#" target="_blank"><i class="fa-brands fa-youtube"></i></a>
            </div>
        </header>


        <!--Middle Part-->

        <div class="mavi-blok">
            <asp:Image ID="profilResmi" runat="server" ImageUrl="~/images/Başlıksız.png" AlternateText="Resim açıklaması" CssClass="profil-resmi" />
            <div class="metin-ve-ikonlar">
                <div class="metin-bolumu">
                    <asp:Label ID="berkKiyi" runat="server" Text="I'm BERK KIYI<br>" CssClass="berk-kiyi" />
                    <asp:Label ID="bilgisayarMuhendisi" runat="server" Text="Computer Engineer based on Turkey." CssClass="bilgisayar-muhendisi" />
                    <asp:Label ID="tanitim" runat="server" Text="<br>I love to work with fun, also like watching movies and a food addicted person.<br>I am a web developer with 5 years of experience. I have damn creative ideas at Front End design and Back End too." CssClass="tanitim" />
                </div>
                <div class="sosyal-medya">
                    <i class="fab fa-facebook"></i>
                    <i class="fab fa-instagram"></i>
                    <i class="fab fa-linkedin"></i>
                    <i class="fab fa-twitter"></i>
                    <i class="fab fa-youtube"></i>
                </div>
                <asp:Button ID="downloadButton" runat="server" Text="DOWNLOAD RESUME" CssClass="download-button" OnClick="downloadButton_Click" />

            </div>
        </div>


        <!--Next Part-->
        <body>
            <asp:Panel ID="ContainerPanel" runat="server" CssClass="container">
                <h2 style="margin-top: 50px">EXPERIENCE & EDUCATION</h2>
                <asp:Panel ID="GridContainer" runat="server" CssClass="grid-container">
                    <asp:Panel ID="GridItem1" runat="server" CssClass="grid-item">
                        <asp:Panel ID="IconContainer1" runat="server" CssClass="icon-container">
                            <asp:Panel ID="IconBorder1" runat="server" CssClass="icon-border">
                                <i class="fas fa-briefcase"></i>
                            </asp:Panel>
                            <p class="date">05/07/2023 - 01/08/2023 </p>
                        </asp:Panel>
                        <asp:Panel ID="TextContent1" runat="server" CssClass="text-content">
                            <asp:Label ID="PositionLabel" runat="server" Text="Web Developer" CssClass="bold-text" />
                            <br />
                            <asp:Label ID="CompanyLabel" runat="server" />



                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="GridItem2" runat="server" CssClass="grid-item">
                        <asp:Panel ID="IconContainer2" runat="server" CssClass="icon-container">
                            <asp:Panel ID="IconBorder2" runat="server" CssClass="icon-border">
                                <i class="fas fa-briefcase"></i>
                            </asp:Panel>
                            <p class="date">2015</p>
                        </asp:Panel>
                        <asp:Panel ID="TextContent2" runat="server" CssClass="text-content">
                            <asp:Label ID="DegreeLabel" runat="server" CssClass="bold-text" Text="COMPUTER ENGINEERING DEGREE" />
                            <br />
                            <asp:Label ID="DescriptionLabel" runat="server" Text="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut elit id mi ultricies." />

                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="GridItem3" runat="server" CssClass="grid-item">
                        <asp:Panel ID="IconContainer3" runat="server" CssClass="icon-container">
                            <asp:Panel ID="IconBorder3" runat="server" CssClass="icon-border">
                                <i class="fas fa-briefcase"></i>
                            </asp:Panel>
                            <p class="date">2013-2018</p>
                        </asp:Panel>
                        <asp:Panel ID="TextContent3" runat="server" CssClass="text-content">
                            <h2>UI/UX DESIGNER</h2>
                            <p>Lorem ipsum dolor sit amet , consectetur adipiscing elit. Nulla ut elit id mi ultricies.</p>
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="GridItem4" runat="server" CssClass="grid-item">
                        <asp:Panel ID="IconContainer4" runat="server" CssClass="icon-container">
                            <asp:Panel ID="IconBorder4" runat="server" CssClass="icon-border">
                                <i class="fas fa-briefcase"></i>
                            </asp:Panel>
                            <p class="date">2012</p>
                        </asp:Panel>
                        <asp:Panel ID="TextContent4" runat="server" CssClass="text-content">
                            <h2>MASTER DEGREE - KIEV UNIVERSITY</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut elit id mi ultricies.</p>
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="GridItem5" runat="server" CssClass="grid-item">
                        <asp:Panel ID="IconContainer5" runat="server" CssClass="icon-container">
                            <asp:Panel ID="IconBorder5" runat="server" CssClass="icon-border">
                                <i class="fas fa-briefcase"></i>
                            </asp:Panel>
                            <p class="date">2005-2013</p>
                        </asp:Panel>
                        <asp:Panel ID="TextContent5" runat="server" CssClass="text-content">
                            <h2>CONSULTANT</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut elit id mi ultricies.</p>
                        </asp:Panel>
                    </asp:Panel>
                    <asp:Panel ID="GridItem6" runat="server" CssClass="grid-item">
                        <asp:Panel ID="IconContainer6" runat="server" CssClass="icon-container">
                            <asp:Panel ID="IconBorder6" runat="server" CssClass="icon-border">
                                <i class="fas fa-briefcase"></i>
                            </asp:Panel>
                            <p class="date">2009</p>
                        </asp:Panel>
                        <asp:Panel ID="TextContent6" runat="server" CssClass="text-content">
                            <h2>BACHELOR DEGREE - Tunis High School</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut elit id mi ultricies.</p>
                        </asp:Panel>
                    </asp:Panel>
                </asp:Panel>
            </asp:Panel>


            <hr class="my-divider">





            <div class="container my-5">
                <h2 class="mb-5" style="font-size: 1.5em;">ABOUT ME</h2>
                <div class="row">
                    <div class="col" style="background-color: #ffd597;">
                        <p>SKILLS</p>
                    </div>
                    <div class="col" style="background-color: #ff5f6e;">
                        <p>SERVICE</p>
                    </div>
                    <div class="col" style="background-color: #ff5f6e;">
                        <p>INTERVIEW</p>
                    </div>
                    <div class="col" style="background-color: #ff5f6e;">
                        <p>CERTIFICATES</p>
                    </div>
                </div>
                <div class="row" style="background-color: #ffe5ed; color: black; margin-top: 0; height: 500px;">
                    <div class="col myDiv">
                        <p class="mt-5">COMMUNICATION <span class="percentage">75%</span></p>
                        <img src="images/status.png">
                        <p class="mt-5">ORGANIZATION <span class="percentage">75%</span></p>
                        <img src="images/status.png">
                        <p class="mt-5">ANALYTICAL ABILITIES <span class="percentage">75%</span></p>
                        <img src="images/status.png">
                        <p class="mt-5">CREATIVITY <span class="percentage">75%</span></p>
                        <img src="images/status.png">
                    </div>
                    <div class="col myDiv">
                        <p class="mt-5">PROJECT MANAGEMENT <span class="percentage">75%</span></p>
                        <img src="images/status.png">
                        <p class="mt-5">PERSEVERANCE <span class="percentage">75%</span></p>
                        <img src="images/status.png">
                        <p class="mt-5">PROBLEM SOLVING <span class="percentage">75%</span></p>
                        <img src="images/status.png">
                        <p class="mt-5">RESOURCEFULNESS <span class="percentage">75%</span></p>
                        <img src="images/status.png">
                    </div>
                </div>
            </div>

            <hr class="my-divider">

            <div class="container my-5">

                <h2 class="mb-5" style="font-size: 1.5em;">MOST RECENT POST</h2>
                <div class="flex-container">
                    <div class="video-container">
                        <div class="video-background">
                            <div class="overlay">
                                <i class="fas fa-play icon"></i>
                            </div>
                        </div>
                        <div class="text-container">
                            <h3 class="title">Video Format Blog Title</h3>
                            <p class="date">February 21, 2020</p>
                        </div>
                    </div>
                    <div class="video-container">
                        <div class="additional-div"></div>
                        <div class="text-container">
                            <h3 class="title">In Some Pain Due To Hate</h3>
                            <p class="date">February 20, 2020</p>
                        </div>
                    </div>
                    <div class="video-container">
                        <div class="third-div"></div>
                        <div class="text-container">
                            <h3 class="title">Never Lose Your Technology Again</h3>
                            <p class="date">February 19, 2020</p>
                        </div>
                    </div>
                </div>
            </div>


            <!--Portfolios-->

            <div class="custom-div portfolio-grid">
                <div class="grid-container">
                    <div class="portfolio-item"></div>
                    <div class="portfolio-item" style="background-image: url('images/logo.png'); background-position: center;"></div>
                    <div class="portfolio-title">PORTFOLIOS</div>
                    <div class="portfolio-item" style="background-image: url('images/webdevelopment2.png'); background-position: center;"></div>
                    <div class="portfolio-item" style="background-image: url('images/webdevelopment3.png'); background-position: center;"></div>
                </div>
                <div class="click-for-more">
                    <a href="file:///C:/Users/kyber/OneDrive/Masa%C3%BCst%C3%BC/website/index.html">
                        <p>C l i c k &nbsp;&nbsp; F o r &nbsp;&nbsp; M o r e</p>
                    </a>
                </div>


            </div>




            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

            <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>

            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
    </form>

</body>

<!--Footer Kısmı-->
<footer>
    <div class="footer-left">
        <h2>BERK KIYI</h2>
        <p>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit.<br>
            Lestibulum fermentum vehicula ante, ac finibus lorem ultrices.<br>
            Phasellus vehicula consequat mi, a elementum sem.<br>
            Maecenas eu volutpat arcu. Morbi efficitur orci nec velit aliquet,
            <br>
            eu blandit enim laoreet. Fusce sed congue metus, sit amet consectetur metus.<br>
            Vivamus a sem vel magna iaculis porta
        </p>
        <div class="social-media">
            <a href="https://www.facebook.com" target="_blank"><i class="fab fa-facebook"></i></a>
            <a href="https://www.instagram.com" target="_blank"><i class="fab fa-instagram"></i></a>
            <a href="https://www.linkedin.com" target="_blank"><i class="fab fa-linkedin"></i></a>
            <a href="https://www.twitter.com" target="_blank"><i class="fa-brands fa-twitter"></i></a>
            <a href="https://www.youtube.com" target="_blank"><i class="fa-brands fa-youtube"></i></a>
        </div>

    </div>
    <div class="footer-right">
        <h6>Archive November</h6>
        <h6>Trending Stories</h6>
        <h6>Features Post</h6>
        <h6>Popular News</h6>
        <div class="spacer" style="height: 50px;"></div>
        <div class="footer-links">
            <h6>About me</h6>
            <h6>Contact with me</h6>
            <h6>FAQ</h6>
        </div>
    </div>

    <div class="footer-info">
        <h6>+88 000 345589</h6>
        <h6>INFO@EXAMPLE.COM</h6>
        <h6>221B, Baker Street, Marylebone</h6>
        <h6>London NW16XE, United Kingdom</h6>
    </div>

    <div class="copyright">
        <h6>Copyright © 2023, BERK KIYI</h6>
    </div>
</footer>
</body>
</html>
