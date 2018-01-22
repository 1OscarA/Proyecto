<%@ Page Title="Página principal" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true"
    CodeBehind="Default.aspx.cs" Inherits="Examen._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <table style="width:100%;">
        <tr>
            <td rowspan="2" style="width:10%">
                &nbsp;</td>
            <td style="text-align:center; width:25%">
                &nbsp;</td>
            <td style="text-align: center; width:30%">
                <asp:Label ID="Label1" runat="server" 
    style="font-size: large; font-weight: 700; text-align: center" 
    Text="Lista de Empleados"></asp:Label>
            </td>
            <td style="text-align: right; width:25%">
<asp:Button ID="btnNuevo" runat="server" 
    style="font-weight: 700; font-size: medium" Text="Nuevo" onclick="btnNuevo_Click" />
            </td>
            <td rowspan="2" style="width:10%">
                &nbsp;</td>
        </tr>
        <tr>
            <td align="center" colspan="3"style="width:80%">
<asp:GridView ID="GridView1" runat="server" 
    AutoGenerateColumns="False" DataKeyNames="Clave" 
    DataSourceID="SqlDataSource1" 
                    style="color: #000000; font-size: large; width: 100%" 
                    onrowcommand="GridView1_RowCommand" onrowcreated="GridView1_RowCreated">
    <AlternatingRowStyle Wrap="False" />
    <Columns>
        <asp:BoundField DataField="Clave" HeaderText="Clave" ReadOnly="True" 
            SortExpression="Clave" InsertVisible="False" Visible="False" />
        <asp:BoundField DataField="Nombre Completo" HeaderText="Nombre Completo" 
            SortExpression="Nombre Completo" ReadOnly="True" >
        <ItemStyle Wrap="False" />
        </asp:BoundField>
        <asp:BoundField DataField="Fecha Nacimiento" HeaderText="Fecha Nacimiento" ReadOnly="True" 
            SortExpression="Fecha Nacimiento" >
        <ItemStyle Wrap="False" HorizontalAlign="Center" />
        </asp:BoundField>
        <asp:BoundField DataField="Puesto" HeaderText="Puesto" 
            SortExpression="Puesto" ReadOnly="True" >
        <ItemStyle Wrap="False" />
        </asp:BoundField>
        <asp:BoundField DataField="Sueldo" HeaderText="Sueldo" ReadOnly="True" 
            SortExpression="Sueldo">
        <ItemStyle Wrap="False" />
        </asp:BoundField>
        <asp:CommandField EditText="Modificar" HeaderText="Acción" 
            ShowEditButton="True" CausesValidation="False" 
            ButtonType="Image"  
            EditImageUrl="~/icono/edit-128.png">
        <ItemStyle Wrap="False" />
        </asp:CommandField>
        <asp:TemplateField>
            <ItemTemplate>
                <asp:ImageButton ID="imgeliminar" runat="server" CausesValidation="False" ToolTip="Eliminar"
                CommandName="Delete" ImageUrl="~/icono/61848.png" OnClientClick="return confirm('Esta seguro que desea eliminar el registro?');" />
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    <HeaderStyle HorizontalAlign="Center" VerticalAlign="Middle" />
    <PagerStyle Wrap="False" />
    <RowStyle Wrap="False" />
    <SelectedRowStyle Wrap="False" />
    <SortedAscendingHeaderStyle HorizontalAlign="Center" />
</asp:GridView>
            </td>
        </tr>
    </table>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" 
    ConnectionString="<%$ ConnectionStrings:examenpracticoConnectionString %>" 
    SelectCommand="SELECT        em.Clave_Emp AS Clave, ISNULL(em.Nombre, '') + ' ' + ISNULL(em.ApPaterno, '') + ' ' + ISNULL(em.ApMaterno, '') AS 'Nombre Completo', CONVERT(char, em.FecNac, 103) AS 'Fecha Nacimiento', 
                         de.Descripcion AS 'Puesto', FORMAT(em.Sueldo, 'C', 'en-us') AS Sueldo
FROM            Empleados AS em INNER JOIN
                         Departamentos AS de ON em.Departamento = de.Puesto" 
        DeleteCommand="DELETE FROM Empleados WHERE (Clave_Emp = @Clave)">
    <DeleteParameters>
        <asp:ControlParameter ControlID="GridView1" DefaultValue="0" Name="Clave" 
            PropertyName="SelectedValue" Type="Int32" />
    </DeleteParameters>
</asp:SqlDataSource>
</asp:Content>
