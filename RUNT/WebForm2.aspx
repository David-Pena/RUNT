<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="RUNT.WebForm2" %>

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
    <title>Visualizacion - Runt</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous"/>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-kQtW33rZJAHjgefvhyyzcGF3C5TFyBQBA13V1RKPf4uH+bwyzQxZ6CmMZHmNBEfJ" crossorigin="anonymous"></script>
</head>
<body>
    <form id="form1" runat="server">
        <ul class="nav nav-tabs nav-fill">
            <li class="nav-item">
                <a class="nav-link active" aria-current="page" href="WebForm1.aspx">Formulario RUNT</a>
            </li>
            <li class="nav-item">
                <a class="nav-link disabled" href="#">David Peña Avila</a>
            </li>
        </ul>

       <!-- Inicio OffCanvas #1 -->
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel">
            <div class="offcanvas-header">
                <h5 id="offcanvasRightLabel">Formulario General</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <asp:TextBox ID="TextBox1" runat="server" placeholder="ID" CssClass="form-control w-50"></asp:TextBox>
                <asp:Button ID="Button9" runat="server" type="submit" Text="Traer Datos" CssClass="btn btn-primary" OnClick="ObtenerInfGrl"/>
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="mm/dd/yyyy" aria-label="Fecha" ID="fecha"/>
                <label for="DropDownList1" class="form-label text-muted text-uppercase text-decoration-underline">Tramite solicitado</label>
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
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="No. De Identificacion" id="idVehiculo"/>
                <asp:TextBox type="number" runat="server" class="form-control" placeholder="Nro. Documento" id="idPropietario"/>
                <asp:TextBox type="number" runat="server" class="form-control" placeholder="Nro. Documento" id="idComprador"/>
                <asp:DropDownList ID="DropDownList7" runat="server" CssClass="form-control">
                    <asp:ListItem Value="Default">Datos de Alerta</asp:ListItem>
                    <asp:ListItem Value="Hurto">Hurto</asp:ListItem>
                    <asp:ListItem Value="Lim. Propiedad">Lim. Propiedad</asp:ListItem>
                    <asp:ListItem Value="Embargo">Embargo</asp:ListItem>
                    <asp:ListItem Value="Otro">Otro</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox type="text" runat="server" class="form-control" Height="128" id="comentarios"/>
                <asp:Button ID="Button1" runat="server" type="submit" Text="Actualizar" CssClass="btn btn-primary" OnClick="ActualizarInfGrl"/>
            </div>
        </div>
        <!-- Fin OffCanvas #1 -->

        <!-- Inicio OffCanvas #2 -->
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight2" aria-labelledby="offcanvasRightLabel2">
            <div class="offcanvas-header">
                <h5 id="offcanvasRightLabel2">Informacion General Vehiculo</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <asp:TextBox ID="TextBox2" runat="server" placeholder="No Identificacion" CssClass="form-control w-50"></asp:TextBox>
                <asp:Button ID="Button10" runat="server" type="submit" Text="Traer Datos" CssClass="btn btn-primary" OnClick="ObtenerInfGrlVeh"/>
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Placa" aria-label="Placa" ID="placa"/>
                <label for="DropDownList2" class="mt-3 form-label text-muted text-uppercase text-decoration-underline">Clase de Maquinaria</label>
                <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-control">
                    <asp:ListItem Value="Agricola">Agricola</asp:ListItem>
                    <asp:ListItem Value="Industrial">Industrial</asp:ListItem>
                    <asp:ListItem Value="Construccion">Construccion</asp:ListItem>
                    <asp:ListItem Value="Otros">Otros</asp:ListItem>
                </asp:DropDownList>
                <asp:DropDownList ID="DropDownList6" runat="server" CssClass="form-control">
                    <asp:ListItem Value="Default">Cabina</asp:ListItem>
                    <asp:ListItem Value="Cerrada">Cerrada</asp:ListItem>
                    <asp:ListItem Value="Parasol">Parasol</asp:ListItem>
                    <asp:ListItem Value="Sin Cabina">Sin Cabina</asp:ListItem>
                    <asp:ListItem Value="Otro">Otro</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="No. Motor" id="noMotor"/>
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="No. de Ejes" id="noEjes"/>
                <asp:DropDownList ID="DropDownList3" runat="server" CssClass="form-control">
                    <asp:ListItem Value="Default">Tipo de Combustible</asp:ListItem>
                    <asp:ListItem Value="Gasolina">Gasolina</asp:ListItem>
                    <asp:ListItem Value="Mixto">Mixto</asp:ListItem>
                    <asp:ListItem Value="Gas">Gas</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button3" runat="server" type="submit" Text="Actualizar" CssClass="btn btn-primary" OnClick="ActualizarInfGrlVehiculo"/>
            </div>
        </div>
        <!-- Fin OffCanvas #2 -->

        <!-- Inicio OffCanvas #3 -->
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight3" aria-labelledby="offcanvasRightLabel3">
            <div class="offcanvas-header">
                <h5 id="offcanvasRightLabel3">Informacion Detallada Vehiculo</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <asp:TextBox ID="TextBox3" runat="server" placeholder="ID Detalle" CssClass="form-control w-50"></asp:TextBox>
                <asp:Button ID="Button5" runat="server" type="submit" Text="Traer Datos" CssClass="btn btn-primary" OnClick="ObtenerInfEspVeh"/>
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Marca" ID="marca" />
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Linea" ID="linea" />
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Tipo" ID="tipo" />
                <asp:DropDownList ID="DropDownList5" runat="server" CssClass="form-control">
                    <asp:ListItem Value="Default">T. Traccion</asp:ListItem>
                    <asp:ListItem Value="Llantas">Llantas</asp:ListItem>
                    <asp:ListItem Value="Orugas">Orugas</asp:ListItem>
                    <asp:ListItem Value="Cilindros">Cilindros</asp:ListItem>
                    <asp:ListItem Value="Mixto">Mixto</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Colores" ID="colores" />
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Modelo" ID="modelo" />
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Peso Bruto Vehicular" ID="peso" />
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Largo (m)" ID="largo" />
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Ancho (m)" ID="ancho" />
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Alto (m)" ID="alto" />
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Cap. de Carga" ID="capCarga" />
                <asp:Button ID="Button11" runat="server" type="submit" Text="Actualizar" CssClass="btn btn-primary" OnClick="ActualizarInfEspVehiculo"/>
            </div>
        </div>
        <!-- Fin OffCanvas #3 -->

        <!-- Inicio OffCanvas #4 -->
        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight4" aria-labelledby="offcanvasRightLabel4">
            <div class="offcanvas-header">
                <h5 id="offcanvasRightLabel4">Informacion General Vehiculo</h5>
                <button type="button" class="btn-close text-reset" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <asp:TextBox ID="TextBox4" runat="server" placeholder="No Documento" CssClass="form-control w-50"></asp:TextBox>
                <asp:Button ID="Button12" runat="server" type="submit" Text="Traer Datos" CssClass="btn btn-primary" OnClick="ObtenerInfPersona"/>
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Primer Apellido" ID="apellido" />
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Segundo Apellido" ID="apellido2" />
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Nombres" ID="nombres" />
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Direccion" ID="direccion" />
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Ciudad" ID="ciudad" />
                <asp:TextBox type="number" runat="server" class="form-control" placeholder="Telefono" ID="tel" />
                <asp:DropDownList ID="DropDownList4" runat="server" CssClass="form-control">
                    <asp:ListItem Value="Propietario">Propietario</asp:ListItem>
                    <asp:ListItem Value="Comprador">Comprador</asp:ListItem>
                </asp:DropDownList>
                <asp:TextBox type="text" runat="server" class="form-control" placeholder="Firma" ID="firma" />
                <asp:Button ID="Button7" runat="server" type="submit" Text="Actualizar" CssClass="btn btn-primary" OnClick="ActualizarInfPersona" />
            </div>
        </div>
        <!-- Fin OffCanvas #4 -->

        <div class="container p-5 shadow-lg main">
            <div class="accordion accordion-flush" id="accordionExample">
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                  <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    Visualizacion de datos ingresados en el RUNT
                  </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                      <div class="row">
                          <div class="col-12 col-lg-12">
                              <div class="d-flex">
                                  <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight">Actualizar</button>
                                  <asp:Button ID="Button2" runat="server" Text="Eliminar" CssClass="btn btn-danger"/>
                              </div>
                              <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="80px" Width="412px" CssClass="table table-hover text-center">
                                  <AlternatingRowStyle BackColor="White" />
                                  <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                  <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                  <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                  <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                  <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                  <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                  <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                  <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                  <SortedDescendingHeaderStyle BackColor="#820000" />
                              </asp:GridView>
                          </div>
                          <div class="col-12 col-lg-12">
                              <div class="d-flex">
                                  <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight2" aria-controls="offcanvasRight">Actualizar</button>                       
                                  <asp:Button ID="Button4" runat="server" Text="Eliminar" CssClass="btn btn-danger"/>
                              </div>
                              <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="105px" Width="411px" CssClass="table table-hover text-center">
                                  <AlternatingRowStyle BackColor="White" />
                                  <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                  <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                  <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                  <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                  <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                  <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                  <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                  <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                  <SortedDescendingHeaderStyle BackColor="#820000" />
                              </asp:GridView>
                          </div>
                          <div class="col-12 col-lg-12">
                              <div class="d-flex">
                                  <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight3" aria-controls="offcanvasRight">Actualizar</button>   
                                  <asp:Button ID="Button6" runat="server" Text="Eliminar" CssClass="btn btn-danger"/>
                              </div>
                              <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="119px" Width="411px" CssClass="table table-hover text-center">
                                  <AlternatingRowStyle BackColor="White" />
                                  <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                  <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                  <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                  <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                  <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                  <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                  <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                  <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                  <SortedDescendingHeaderStyle BackColor="#820000" />
                              </asp:GridView>
                          </div>
                          <div class="col-12 col-lg-12">
                              <div class="d-flex">
                                  <button class="btn btn-primary" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight4" aria-controls="offcanvasRight">Actualizar</button>    
                                  <asp:Button ID="Button8" runat="server" Text="Eliminar" CssClass="btn btn-danger"/>
                              </div>
                              <asp:GridView ID="GridView4" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="118px" Width="411px" CssClass="table table-hover text-center">
                                  <AlternatingRowStyle BackColor="White" />
                                  <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                  <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                                  <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                                  <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                                  <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                                  <SortedAscendingCellStyle BackColor="#FDF5AC" />
                                  <SortedAscendingHeaderStyle BackColor="#4D0000" />
                                  <SortedDescendingCellStyle BackColor="#FCF6C0" />
                                  <SortedDescendingHeaderStyle BackColor="#820000" />
                              </asp:GridView>
                          </div>
                      </div>
                  </div>
                </div>
              </div>
            </div>            
        </div>
    </form>
</body>
</html>
