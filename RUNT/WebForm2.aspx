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
                                  <asp:TextBox ID="TextBox1" runat="server" placeholder="ID"></asp:TextBox>
                                  <asp:Button ID="Button1" runat="server" Text="Actualizar" />
                                  <asp:Button ID="Button2" runat="server" Text="Eliminar" />
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
                                  <asp:TextBox ID="TextBox2" runat="server" placeholder="No Identificacion"></asp:TextBox>
                                  <asp:Button ID="Button3" runat="server" Text="Actualizar" />
                                  <asp:Button ID="Button4" runat="server" Text="Eliminar" />
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
                                  <asp:TextBox ID="TextBox3" runat="server" placeholder="ID Detalle"></asp:TextBox>
                                  <asp:Button ID="Button5" runat="server" Text="Actualizar" />
                                  <asp:Button ID="Button6" runat="server" Text="Eliminar" />
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
                                  <asp:TextBox ID="TextBox4" runat="server" placeholder="No Documento"></asp:TextBox>
                                  <asp:Button ID="Button7" runat="server" Text="Actualizar" />
                                  <asp:Button ID="Button8" runat="server" Text="Eliminar" />
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
