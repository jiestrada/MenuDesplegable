<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="MenuDesplegable_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>

    <%--Toggles the icon ▼--%>
    <script type="text/javascript">
        $(document).ready(function () {
            $('.toggle-login').click(function () {
                $(this).next('#login-content').slideToggle();
                $(this).toggleClass('active');

                if ($(this).hasClass('active')) $(this).find('span').html('&#x25B2;')
                else $(this).find('span').html('&#x25BC;')
            })
        });
    </script>
    <%--Handling Menu and items--%>

    <script type="text/javascript">
        $(document).ready(function () {

            $(".mainmenu").click(function () {
                var X = $(this).attr('id');
                if (X == 1) {
                    $(".submenu").hide();
                    $(this).attr('id', '0');
                }
                else {
                    $(".submenu").show();
                    $(this).attr('id', '1');
                }
            });

            //Mouse click on sub menus
            $(".submenu").mouseup(function () {
                return false
            });

            //Mouse click on my account link
            $(".mainmenu").mouseup(function () {
                return false
            });


            //On Document Click
            $(document).mouseup(function () {
                $(".submenu").hide();
                $(".mainmenu").attr('id', '');
            });
        });
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <fieldset style="width: 119px; height: 160px; padding: 30px;">
                <legend>jQuery Dropdown</legend>
                <div class="dropdown">
                    <a class="mainmenu toggle-login">Cuenta<span class="icon">▼</span></a>

                    <div class="submenu">
                        <ul class="menuitems">
                            <li><a href="#">Configurar Cuenta</a></li>
                            <li><a href="#">Privacy setting</a></li>
                            <li><a href="#">Salir</a></li>
                            <li><a href="#">Ayuda</a></li>
                        </ul>
                    </div>
                </div>
            </fieldset>
        </div>
    </form>
</body>
</html>
