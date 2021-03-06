<%@ Page Language="C#" AutoEventWireup="true" MetaDescription="该示例演示AspNetPager最基本的功能，帮助您认识AspNetPager分页控件及了解它的工作原理。" CodeFile="Basic.aspx.cs" Inherits="Basic_Default" MasterPageFile="AspNetPager.master" Title="基本功能" %>

<asp:Content runat="server" ContentPlaceHolderID="desc">
    要使AspNetPager正常运行，只需要设置它的<strong>RecordCount</strong>属性的值，根据需要编写<strong>PageChanged</strong>事件处理程序。<p>点击下面的分页按钮来看实际的运行效果。</p>
</asp:Content>
<asp:Content runat="server" ID="content1" ContentPlaceHolderID="main">
<p><asp:Label runat="server" ID="label1" ForeColor="red" EnableViewState="false"></asp:Label>
<br /><asp:Label runat="server" ID="label2" ForeColor="red" EnableViewState="false"></asp:Label></p>
    <asp:CheckBox ID="CheckBox1" runat="server" Text="取消分页事件" />（选中此复选框将只引发PageChanging事件，而不引发PageChanged事件）
    <p>分页控件实际显示和运行效果：</p>
    <webdiyer:aspnetpager id="AspNetPager1" runat="server" 
        OnPageChanging="AspNetPager1_PageChanging" onpagechanged="AspNetPager1_PageChanged" CurrentPageButtonPosition="Center"
    Width="100%" HorizontalAlign="center" AlwaysShowFirstLastPageNumber="true" PagingButtonSpacing="10" FirstPageText="首页" 
        LastPageText="尾页" NextPageText="下一页" PrevPageText="上一页"></webdiyer:aspnetpager>

    <p>克隆的分页控件：</p>
    <div><webdiyer:aspnetpager id="AspNetPager2" runat="server" CloneFrom="AspNetPager1"></webdiyer:aspnetpager></div>
  
</asp:Content>