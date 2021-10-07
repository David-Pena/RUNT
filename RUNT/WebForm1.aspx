<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="RUNT.WebForm1" %>

<!DOCTYPE html>

<style>
    * {
        font-family: 'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif
    }
    .main {
        min-height: 100vh;
    }
</style>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>RUNT</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"/>
</head>
<body>
    <form id="form1" runat="server" class="main_father">
        <ul class="nav nav-tabs nav-fill">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="WebForm1.aspx">Formulario RUNT</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#">David Peña Avila</a>
            </li>
        </ul>
        <div class="container p-5 shadow-lg main">
            <div class="row">
                <div class="col-12 col-lg-4 col-md-12 p-sm-3 text-lg-start text-sm-center">
                    <h6>
                        FORMULARIO DE SOLICITUD DE TRAMITES DEL REGISTRO
                        NACIONAL DE MAQUINARIA AGRICOLA, Y DE CONSTRUCCION AUTOPROPULSADA
                    </h6>
                </div>
                <div class="col-12 col-lg-4 col-md-12 p-sm-3">
                    <div>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="nombre" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator><br />
                        <asp:TextBox type="text" runat="server" class="form-control" Text="Servicios Integrales para la Movilidad - SIM" disabled="true" aria-label="Nombre" ID="nombre"/>
                        <div class="d-flex">
                            <asp:TextBox type="text" runat="server" class="form-control" Text="Bogotá" disabled="true" aria-label="Ciudad" ID="ciudad"/>
                            <asp:TextBox type="text" runat="server" class="form-control" Text="11001" disabled="true" aria-label="Codigo" ID="codigo"/>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="mm/dd/yyyy" aria-label="Fecha" ID="fecha"/>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="fecha" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-lg-4 col-md-12 p-sm-3">
                    <div>
                        <label class="form-label text-muted text-uppercase text-decoration-underline">PLACA</label>
                        <div class="d-flex">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="placaLetras" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Letras" aria-label="Letras" ID="placaLetras"/>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="placaNumeros" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="number" runat="server" class="form-control" placeholder="Numeros" aria-label="Numeros" ID="placaNumeros"/>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-6 col-md-12 p-sm-3">
                    <label for="DropDownList1" class="form-label text-muted text-uppercase text-decoration-underline">Tramite solicitado</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator15" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
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

                    <label for="DropDownList2" class="mt-3 form-label text-muted text-uppercase text-decoration-underline">Clase de Maquinaria</label>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator16" runat="server" ControlToValidate="DropDownList2" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                    <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                        <asp:ListItem Value="Agricola">Agricola</asp:ListItem>
                        <asp:ListItem Value="Industrial">Industrial</asp:ListItem>
                        <asp:ListItem Value="Construccion">Construccion</asp:ListItem>
                        <asp:ListItem Value="Otros">Otros</asp:ListItem>
                    </asp:DropDownList>

                    <label for="" class="mt-4 form-label text-muted text-uppercase text-decoration-underline">Datos del Propietario</label>
                    <div class="d-flex">
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="apellidoPropietario" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Primer Apellido" id="apellidoPropietario"/>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="apellido2Propietario" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Segundo Apellido" id="apellido2Propietario"/>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="nombresPropietario" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Nombres" id="nombresPropietario"/>
                        </div>
                    </div>
                    <div class="d-flex">
                        <div class="col-lg-6 col-sm-6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server" ControlToValidate="DropDownList3" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                        <div class="col-lg-6 col-sm-6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="idPropietario" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="number" runat="server" class="form-control" placeholder="Nro. Documento" id="idPropietario"/>
                        </div>
                    </div>
                    <div class="d-flex">
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ControlToValidate="direccionPropietario" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Direccion" id="direccionPropietario"/>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ControlToValidate="ciudadPropietario" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Ciudad" id="ciudadPropietario"/>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" ControlToValidate="telPropietario" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="number" runat="server" class="form-control" placeholder="Telefono" id="telPropietario"/>
                        </div>
                    </div>
                    <div class="col-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator17" runat="server" ControlToValidate="firmaPropietario" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox type="text" runat="server" class="form-control" id="firmaPropietario" placeholder="Firma del Propietario"/>
                    </div>

                    <label for="" class="mt-3 form-label text-muted text-uppercase text-decoration-underline">Datos del Comprador (Traspaso)</label>
                    <div class="d-flex">
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator18" runat="server" ControlToValidate="apellidoComprador" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Primer Apellido" id="apellidoComprador"/>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator19" runat="server" ControlToValidate="apellido2Comprador" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Segundo Apellido" id="apellido2Comprador"/>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator20" runat="server" ControlToValidate="nombresComprador" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Nombres" id="nombresComprador"/>
                        </div>
                    </div>
                    <div class="d-flex">
                        <div class="col-lg-6 col-sm-6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator21" runat="server" ControlToValidate="DropDownList4" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
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
                        <div class="col-lg-6 col-sm-6">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator22" runat="server" ControlToValidate="idComprador" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="number" runat="server" class="form-control" placeholder="Nro. Documento" id="idComprador"/>
                        </div>
                    </div>
                    <div class="d-flex">
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator23" runat="server" ControlToValidate="direccionComprador" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Direccion" id="direccionComprador"/>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator24" runat="server" ControlToValidate="ciudadComprador" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="Ciudad" id="ciudadComprador"/>
                        </div>
                        <div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator25" runat="server" ControlToValidate="telComprador" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="number" runat="server" class="form-control" placeholder="Telefono" id="telComprador"/>
                        </div>
                    </div>
                    <div class="col-12">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator26" runat="server" ControlToValidate="firmaComprador" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox type="text" runat="server" class="form-control" id="firmaComprador" placeholder="Firma del Comprador"/>
                    </div>
                </div>
                <div class="col-12 col-lg-6 col-md-12 py-sm-4">
                    <div class="d-flex">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator27" runat="server" ControlToValidate="marca" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Marca" id="marca"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator28" runat="server" ControlToValidate="linea" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Linea" id="linea"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator29" runat="server" ControlToValidate="tipo" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Tipo" id="tipo"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator30" runat="server" ControlToValidate="DropDownList5" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Default">T. Traccion</asp:ListItem>
                            <asp:ListItem Value="Llantas">Llantas</asp:ListItem>
                            <asp:ListItem Value="Orugas">Orugas</asp:ListItem>
                            <asp:ListItem Value="Cilindros">Cilindros</asp:ListItem>
                            <asp:ListItem Value="Mixto">Mixto</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="d-flex">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator31" runat="server" ControlToValidate="colores" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Colores" id="colores"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator32" runat="server" ControlToValidate="modelo" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Modelo" id="modelo"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator33" runat="server" ControlToValidate="peso" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Peso Bruto Vehicular" id="peso"/>
                    </div>
                    <div class="d-flex">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator34" runat="server" ControlToValidate="largo" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Largo (m)" id="largo"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator35" runat="server" ControlToValidate="ancho" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Ancho (m)" id="ancho"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator36" runat="server" ControlToValidate="alto" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Alto (m)" id="alto"/>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator37" runat="server" ControlToValidate="capCarga" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="Cap. de Carga" id="capCarga"/>
                    </div>

                    <div class="row py-sm-4">
                        <div class="col-12 col-lg-5">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator38" runat="server" ControlToValidate="DropDownList6" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Default">Cabina</asp:ListItem>
                            <asp:ListItem Value="Cerrada">Cerrada</asp:ListItem>
                            <asp:ListItem Value="Parasol">Parasol</asp:ListItem>
                            <asp:ListItem Value="Sin Cabina">Sin Cabina</asp:ListItem>
                            <asp:ListItem Value="Otro">Otro</asp:ListItem>
                        </asp:DropDownList>
                        </div>
                        <div class="col-12 col-lg-7">
                            <div class="d-flex">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator39" runat="server" ControlToValidate="noMotor" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                                <asp:TextBox type="text" runat="server" class="form-control" placeholder="No. Motor" id="noMotor"/>
                                <div>
                                    <label for="" class="mt-3 form-label">Regrabado</label><br />
                                    <asp:CheckBox ID="CheckBox1" runat="server" Text="Si"/>
                                    <asp:CheckBox ID="CheckBox2" runat="server" Text="No"/>
                                </div>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator40" runat="server" ControlToValidate="idVehiculo" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="No. De Identificacion" id="idVehiculo"/>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator41" runat="server" ControlToValidate="noEjes" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                            <asp:TextBox type="text" runat="server" class="form-control" placeholder="No. de Ejes" id="noEjes"/>
                        </div>
                    </div>

                    <div class="d-flex py-sm-3">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator42" runat="server" ControlToValidate="DropDownList7" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:DropDownList ID="DropDownList7" runat="server" CssClass="form-control">
                            <asp:ListItem Value="Default">Datos de Alerta</asp:ListItem>
                            <asp:ListItem Value="Hurto">Hurto</asp:ListItem>
                            <asp:ListItem Value="Lim. Propiedad">Lim. Propiedad</asp:ListItem>
                            <asp:ListItem Value="Embargo">Embargo</asp:ListItem>
                            <asp:ListItem Value="Otro">Otro</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator43" runat="server" ControlToValidate="afavorde" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox type="text" runat="server" class="form-control" placeholder="A Favor De" id="afavorde"/>
                    </div>
                    <div class="col-12">
                        <label for="comentarios" class="mt-3 form-label">Observaciones</label>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator44" runat="server" ControlToValidate="comentarios" ErrorMessage="Campo Requerido" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox type="text" runat="server" class="form-control" Height="128" id="comentarios"/>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-lg-12 d-flex justify-content-center">
                    <asp:Button ID="Button1" runat="server" type="submit" Text="Enviar" CssClass="btn btn-info" OnClick="Enviar"/>    
                </div>
            </div>
        </div>
    </form>
</body>
</html>
