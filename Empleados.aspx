<%@ Page Title="Registro de Empleados" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Empleados.aspx.cs" Inherits="Examen.Empleados" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <div style="height: 360px; margin-top: 0px">
        <table style="width:100%;">
            <tr>
                <td style="width:25%">
                    &nbsp;</td>
                <td style="width:20%">
    <asp:Label ID="nombre" runat="server" Text="Nombre"></asp:Label>
                </td>
                <td style="width:30%">
    <asp:TextBox ID="txtNombre" runat="server" MaxLength="50" Width="259px" TabIndex="1"></asp:TextBox>
                </td>
                <td style="width:25%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width:25%">
                    &nbsp;</td>
                <td style="width:20%">
    <asp:Label ID="apPaterno" runat="server" Text="ApPaterno"></asp:Label>
                </td>
                <td style="width:30%">
    <asp:TextBox ID="txtApPaterno" runat="server" MaxLength="50" Width="259px" TabIndex="2"></asp:TextBox>
                </td>
                <td style="width:25%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width:25%">
                    &nbsp;</td>
                <td style="width:20%">
    <asp:Label ID="Label1" runat="server" Text="ApMaterno"></asp:Label>
                </td>
                <td style="width:30%">
    <asp:TextBox ID="txtApMaterno" runat="server" MaxLength="50" Width="259px" TabIndex="3"></asp:TextBox>
                </td>
                <td style="width:25%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width:25%">
                    &nbsp;</td>
                <td style="width:20%">
    <asp:Label ID="puesto" runat="server" Text="Departamento"></asp:Label>
                </td>
                <td style="width:30%">
    <asp:DropDownList ID="lspuesto" runat="server" 
        DataSourceID="SqlDataSource1" DataTextField="Puesto" 
        DataValueField="Id" Width="264px" TabIndex="4">
    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:examenpracticoConnectionString %>" 
                        SelectCommand="select Puesto as Id, Descripcion as Puesto From Departamentos">
                    </asp:SqlDataSource>
                </td>
                <td style="width:25%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="width:25%">
                    &nbsp;</td>
                <td style="width:20%">
    <asp:Label ID="sueldo" runat="server" Text="Sueldo"></asp:Label>
                </td>
                <td style="width:30%">
                    <asp:TextBox ID="txtSueldo" runat="server" CausesValidation="False" TabIndex="5" 
                        TextMode="number" step="0.0001" MinimumValue="0.0000" MaximumValue="999999999.9999"

Width="259px"></asp:TextBox>
                    <br />
                    </td>
                <td style="width:25%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="left"style="width:25%">
                    &nbsp;</td>
                <td align="left" style="width:20%">
    <asp:Label ID="fecnac" runat="server" Text="Fecha de Nacimiento"></asp:Label>
                </td>
                <td style="width:30%">
                    <asp:TextBox ID="txtFecha" runat="server" TabIndex="6" TextMode="Date"></asp:TextBox>
                    <br />
                </td>
                <td style="width:25%">
                    &nbsp;</td>
            </tr>
            <tr>
                <td align="center" style="width:25%">
                    &nbsp;</td>
                <td align="center" style="width:20%">
    <asp:Button ID="btnGuardar" runat="server" Text="Guardar" onclick="btnGuardar_Click" 
                        
                        onclientclick="return confirm('¿Estas seguro de guardar la información?');" 
                        TabIndex="7" CausesValidation="False" 
                        EnableTheming="True"  />
                </td>
                <td align="center" style="width:30%">
    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" onclick="btnCancelar_Click" 
                        TabIndex="8" />
                </td>
                <td align="center" style="width:25%">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    <br />
    <br />
    <br />
    <br />
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
        ConnectionString="<%$ ConnectionStrings:examenpracticoConnectionString %>" 
        SelectCommand="Select Puesto as Clave, Descripcion as Puesto from Departamentos">
    </asp:SqlDataSource>
    <br />
    </asp:Content>
