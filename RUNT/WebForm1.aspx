<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RUNT.WebForm1" %>

<!DOCTYPE html>

<style>
    * {
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif
    }
    .main {
        height: 100vh;
    }
</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server" class="main_father">
        <div class="container p-5 shadow-lg main">
            <div class="row">
                <div class="col-4 col-lg-4">
                    <h6>
                        FORMULARIO DE SOLICITUD DE TRAMITES DEL REGISTRO
                        NACIONAL DE MAQUINARIA AGRICOLA, Y DE CONSTRUCCION AUTOPROPULSADA
                    </h6>
                </div>
                <div class="col-4 col-lg-4">
                    <div>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Nombre" aria-label="Nombre" />
                        <div class="d-flex">
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Ciudad" aria-label="Ciudad" />
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Codigo" aria-label="Codigo" />
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Fecha" aria-label="Fecha" />
                        </div>
                    </div>
                </div>
                <div class="col-4 col-lg-4">
                    <div>
                        <label class="form-label">PLACA</label>
                        <div class="d-flex">
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Letras" aria-label="Letras" />
                            <asp:TextBox type="number" runat="server" class="form-control" placeholder="Numeros" aria-label="Numeros" />
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-6 col-lg-6">
                    <label for="DropDownList1" class="form-label">Tramite solicitado</label>
                    <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-control">
                        <asp:ListItem Value="Default"> Tramite solicitado </asp:ListItem>
                        <asp:ListItem Value="REGISTRO"> REGISTRO </asp:ListItem>
                        <asp:ListItem Value="TRASPASO"> TRASPASO </asp:ListItem>
                        <asp:ListItem Value="TRASLADO REGISTRO"> TRASLADO REGISTRO </asp:ListItem>
                        <asp:ListItem Value="DUPLICADO TARJETA REGISTRO"> DUPLICADO TARJETA REGISTRO </asp:ListItem>
                        <asp:ListItem Value="CANCELACION REGISTRO"> CANCELACION REGISTRO </asp:ListItem>
                        <asp:ListItem Value="RADICADO REGISTRO"> RADICADO REGISTRO </asp:ListItem>
                        <asp:ListItem Value="REGRABAR NUMERO DE ID"> REGRABAR NUMERO DE ID </asp:ListItem>
                        <asp:ListItem Value="CAMBIO DE PLACAS"> CAMBIO DE PLACAS </asp:ListItem>
                        <asp:ListItem Value="CAMBIO DE REGISTRO POR RECUPERACION DEL VEHICULO"> CAMBIO DE REGISTRO POR RECUPERACION DEL VEHICULO </asp:ListItem>
                        <asp:ListItem Value="INSCRIPC. PRENDA"> INSCRIPC. PRENDA </asp:ListItem>
                        <asp:ListItem Value="LEVANTA PRENDA"> LEVANTA PRENDA </asp:ListItem>
                        <asp:ListItem Value="DUPLICADO DE PLACAS"> DUPLICADO DE PLACAS </asp:ListItem>
                    </asp:DropDownList>

                    <label for="DropDownList2" class="mt-3 form-label">Clase de Maquinaria</label>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                        <asp:ListItem Value="Agricola">Agricola</asp:ListItem>
                        <asp:ListItem Value="Industrial">Industrial</asp:ListItem>
                        <asp:ListItem Value="Construccion">Construccion</asp:ListItem>
                        <asp:ListItem Value="Otros">Otros</asp:ListItem>
                    </asp:DropDownList>

                    <label for="" class="mt-3 form-label">Datos del Propietario</label>
                    <div class="d-flex">
                        <div>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Primer Apellido" id="apellido1"/>
                        </div>
                        <div>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Segundo Apellido" id="apellido2"/>
                        </div>
                        <div>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Nombres" id="nombres"/>
                        </div>
                    </div>
                    <div class="d-flex">
                        <div class="col-lg-6">
                            <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                                <asp:ListItem Value="Default">Tipo de documento</asp:ListItem>
                                <asp:ListItem Value="C.C">C.C</asp:ListItem>
                                <asp:ListItem Value="NIT">NIT</asp:ListItem>
                                <asp:ListItem Value="NN">NN</asp:ListItem>
                                <asp:ListItem Value="PASAPORTE">PASAPORTE</asp:ListItem>
                                <asp:ListItem Value="C. EXTRANJ.">C. EXTRANJ.</asp:ListItem>
                                <asp:ListItem Value="TARJETA DE IDENTIDAD">TARJETA DE IDENTIDAD</asp:ListItem>
                                <asp:ListItem Value="NUIP">NUIP</asp:ListItem>
                                <asp:ListItem Value="C. DIPLOMATICO">C. DIPLOMATICO</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-6">
                            <asp:TextBox type="number" runat="server" class="form-control" placeholder="Nro. Documento" id="numeroId"/>
                        </div>
                    </div>
                    <div class="d-flex">
                        <div>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Direccion" id="direccion"/>
                        </div>
                        <div>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Ciudad" id="city"/>
                        </div>
                        <div>
                            <asp:TextBox type="number" runat="server" class="form-control" placeholder="Telefono" id="telefono"/>
                        </div>
                    </div>
                    <div class="col-12">
                        <asp:TextBox type="text" runat="server" class="form-control" id="firma" placeholder="Firma del Propietario"/>
                    </div>

                    <label for="" class="mt-3 form-label">Datos del Comprador (Traspaso)</label>
                    <div class="d-flex">
                        <div>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Primer Apellido" id="apellido1Comprador"/>
                        </div>
                        <div>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Segundo Apellido" id="apellido2Comprador"/>
                        </div>
                        <div>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Nombres" id="nombresComprador"/>
                        </div>
                    </div>
                    <div class="d-flex">
                        <div class="col-lg-6">
                            <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">
                                <asp:ListItem Value="Default">Tipo de documento</asp:ListItem>
                                <asp:ListItem Value="C.C">C.C</asp:ListItem>
                                <asp:ListItem Value="NIT">NIT</asp:ListItem>
                                <asp:ListItem Value="NN">NN</asp:ListItem>
                                <asp:ListItem Value="PASAPORTE">PASAPORTE</asp:ListItem>
                                <asp:ListItem Value="C. EXTRANJ.">C. EXTRANJ.</asp:ListItem>
                                <asp:ListItem Value="TARJETA DE IDENTIDAD">TARJETA DE IDENTIDAD</asp:ListItem>
                                <asp:ListItem Value="NUIP">NUIP</asp:ListItem>
                                <asp:ListItem Value="C. DIPLOMATICO">C. DIPLOMATICO</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-6">
                            <asp:TextBox type="number" runat="server" class="form-control" placeholder="Nro. Documento" id="numeroIdComprador"/>
                        </div>
                    </div>
                    <div class="d-flex">
                        <div>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Direccion" id="direccionComprador"/>
                        </div>
                        <div>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Ciudad" id="ciudadComprador"/>
                        </div>
                        <div>
                            <asp:TextBox type="number" runat="server" class="form-control" placeholder="Telefono" id="telefonoComprador"/>
                        </div>
                    </div>
                    <div class="col-12">
                        <asp:TextBox type="text" runat="server" class="form-control" id="firmaComprador" placeholder="Firma del Comprador"/>
                    </div>
                </div>
                <div class="col-6 col-lg-6">
                    <label for="" class="mt-3 form-label"></label>
                    <div class="d-flex">
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Marca" id="marca"/>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Linea" id="linea"/>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Tipo" id="tipo"/>
                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Default">T. Traccion</asp:ListItem>
                            <asp:ListItem Value="Llantas">Llantas</asp:ListItem>
                            <asp:ListItem Value="Orugas">Orugas</asp:ListItem>
                            <asp:ListItem Value="Cilindros">Cilindros</asp:ListItem>
                            <asp:ListItem Value="Mixto">Mixto</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="d-flex">
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Colores" id="colores"/>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Modelo" id="modelo"/>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Peso Bruto Vehicular" id="peso"/>
                    </div>
                    <div class="d-flex">
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Largo (m)" id="largo"/>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Ancho (m)" id="ancho"/>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Alto (m)" id="alto"/>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Cap. de Carga" id="capCarga"/>
                    </div>

                    <div class="row mt-3">
                        <div class="col-5">
                            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Default">Cabina</asp:ListItem>
                            <asp:ListItem Value="Cerrada">Cerrada</asp:ListItem>
                            <asp:ListItem Value="Parasol">Parasol</asp:ListItem>
                            <asp:ListItem Value="Sin Cabina">Sin Cabina</asp:ListItem>
                            <asp:ListItem Value="Otro">Otro</asp:ListItem>
                        </asp:DropDownList>
                        </div>
                        <div class="col-7">
                            <div class="d-flex">
                                <asp:TextBox type="text" runat="server" class="form-control" placeholder="No. Motor" id="TextBox1"/>
                                <div>
                                    <label for="" class="mt-3 form-label">Regrabado</label><br />
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Si"/>
                                    <asp:CheckBox ID="CheckBox2" runat="server" Text="No"/>
                                </div>
                            </div>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="No. De Identificacion" id="TextBox2"/>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="No. de Ejes" id="TextBox3"/>
                        </div>
                    </div>

                    <div class="d-flex mt-3">
                        <asp:DropDownList ID="DropDownList7" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Default">Datos de Alerta</asp:ListItem>
                            <asp:ListItem Value="Hurto">Hurto</asp:ListItem>
                            <asp:ListItem Value="Lim. Propiedad">Lim. Propiedad</asp:ListItem>
                            <asp:ListItem Value="Embargo">Embargo</asp:ListItem>
                            <asp:ListItem Value="Otro">Otro</asp:ListItem>
                        </asp:DropDownList>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="A Favor De" id="afavorde"/>
                    </div>
                    <div class="col-12">
                        <label for="comentarios" class="mt-3 form-label">Observaciones</label>
                        <asp:TextBox type="text" runat="server" class="form-control" id="comentarios"/>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
