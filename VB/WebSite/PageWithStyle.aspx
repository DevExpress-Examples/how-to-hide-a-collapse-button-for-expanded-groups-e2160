<%@ Page Language="vb" AutoEventWireup="true" CodeFile="PageWithStyle.aspx.vb" Inherits="PageWithStyle" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.14.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
	<title>How to hide expanded button via styles</title>
	<style type="text/css">
		.dxGridView_gvExpandedButton
		{
			visibility: hidden;
		}
	</style>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<dx:ASPxHyperLink ID="lnk" runat="server" Text="How to hide expanded button programmatically"
				NavigateUrl="~/Default.aspx">
			</dx:ASPxHyperLink>
			<br /><br />
			<dx:ASPxGridView ID="grid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"
				KeyFieldName="CustomerID">
				<Columns>
					<dx:GridViewDataTextColumn FieldName="CustomerID" ReadOnly="True" VisibleIndex="0">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="CompanyName" VisibleIndex="1">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="ContactName" VisibleIndex="2">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="City" VisibleIndex="3" GroupIndex="1">
					</dx:GridViewDataTextColumn>
					<dx:GridViewDataTextColumn FieldName="Country" VisibleIndex="4" GroupIndex="0">
					</dx:GridViewDataTextColumn>
				</Columns>
				<Settings ShowGroupPanel="true" />
			</dx:ASPxGridView>
			<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:NorthwindConnectionString %>"
				SelectCommand="SELECT [CustomerID], [CompanyName], [ContactName], [City], [Country] FROM [Customers]">
			</asp:SqlDataSource>
		</div>
	</form>
</body>
</html>
