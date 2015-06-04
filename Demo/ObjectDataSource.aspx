<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ObjectDataSource.aspx.cs" MetaDescription="��ʾ����ʾ���ʹ��AspNetPager��ҳ�ؼ���ObjectDataSource�ؼ����з�ҳ��"  Inherits="ObjectDataSource_Default" MasterPageFile="AspNetPager.master" Title="ObjectDataSource��ҳʾ��"%>

<asp:Content runat="server" ID="content1" ContentPlaceHolderID="main">
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" EnablePaging="True" SelectCountMethod="GetOrderCount" 
    SelectMethod="GetPagedOrders" StartRowIndexParameterName="startIndex" MaximumRowsParameterName="pageSize" 
    TypeName="OrderInfo" OnSelecting="ODS_Selecting">
    <SelectParameters>
    <asp:ControlParameter ControlID="AspNetPager1" PropertyName="StartRecordIndex" DefaultValue="1" Name="startIndex" Type="Int32" />
    <asp:ControlParameter ControlID="AspNetPager1" PropertyName="PageSize" DefaultValue="10" Name="pageSize" Type="Int32" />
    </SelectParameters>    
    </asp:ObjectDataSource>
    <br />
  <asp:Repeater ID="Repeater1" runat="server" DataSourceID="ObjectDataSource1">
        <HeaderTemplate>
        <table width="100%"class="table table-bordered table-striped">
        <tr><th style="width:15%">�������</th><th style="width:15%">��������</th><th style="width:30%">��˾����</th><th style="width:20%">�ͻ����</th><th style="width:20%">��Ա����</th></tr>
        </HeaderTemplate>
        <ItemTemplate>
        <tr>
        <td><%#DataBinder.Eval(Container.DataItem,"orderid")%></td>
        <td><%#DataBinder.Eval(Container.DataItem,"orderdate","{0:d}")%></td>
        <td><%#DataBinder.Eval(Container.DataItem, "companyname")%></td>
        <td><%#DataBinder.Eval(Container.DataItem,"customerid")%></td>
        <td><%#DataBinder.Eval(Container.DataItem,"employeename")%></td>
        </tr>
        </ItemTemplate>
        <FooterTemplate>
        </table>
        </FooterTemplate>
        </asp:Repeater>
    <webdiyer:aspnetpager id="AspNetPager1" runat="server" AlwaysShow="True" ShowCustomInfoSection="Left"></webdiyer:aspnetpager>

</asp:Content>