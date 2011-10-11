<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<%@ Import Namespace="Domain2Host" %>
<%@ Import Namespace="Domain2Host.Controllers" %>
<asp:Content ID="Page_title" ContentPlaceHolderID="PageTitle" runat="server"> Domain name cheking </asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form method="post" runat="server" action="/Domain/AddtoCart">
    <div class="frmContainer">
        <input type="hidden" name="showselected" value="yes" />
        <br />
        <div class="box-container-blue">
            <h3>
                Choose from the following Domain Names
            </h3>
        </div>
        <div class="box-content" id="avail-content">
            <!-- GROUPING 1 -->
            <div class="group-domains" id="domains-not-available">
                <div class="group-heading">
                    <span>Not Available</span>
                </div>
                <div class="group-content">
                    <% var notAvailable = (List<string>)ViewData["NotAvailableList"];%>
                    <% foreach (var domain in notAvailable)
                       {%>
                    <p>
                        <%= domain %></p>
                    <%
                       }%>
                </div>
            </div>
            <!-- /GROUPING 1 -->
            <!-- GROUPING 2 -->
            <div class="group-domains" id="domains-available">
                <div class="group-heading">
                    <span>Available</span>
                </div>
                <div class="group-content">
                    <!-- ADDITIONAL DOMAINS -->
                    <table class="dataTable" cellpadding="0" cellspacing="0" border="0" width="100%">
                        <tbody>
                            <% var availablelist = (List<Domaindetails>)ViewData["AvailableList"];%>
                            <% foreach (var domain in availablelist)
                               {%>
                            <tr class="">
                                <td width="2%">
                                    <input id="domval" type="checkbox" name="domainnamearr[]" value="<%= domain.Name + "." + domain.Extension %>" />
                                </td>
                                <td width="48%">
                                    <strong>
                                        <%= domain.Name + "." + domain.Extension %></strong><span class="promo-chck-avail"><strong>SALE!</strong></span>
                                    <br />
                                </td>
                                <td width="50%" class="pricing_td simple_case">
                                    <div>
                                        <div>
                                            <span class="strikeout">
                                                <%= Utilities.DomainStrikeouts[domain.Extension] %></span><br />
                                            <span class="promo-chck-avail">
                                                <%= Utilities.DomainAmounts[domain.Extension] %></span>
                                        </div>
                                    </div>
                                </td>
                            </tr>
                            <%
                               }%>
                        </tbody>
                    </table>
                    <!-- SPECIAL DOMAINS -->
                </div>
            </div>
            <!-- /GROUPING 2 -->
        </div>
        <div class="error" id="chk_selected_error" style="display: none;">
            Error(s):
            <ul>
                <li>Please select atleast one domain name.</li>
            </ul>
        </div>
        <br />
        <div align="center">
            <input type="submit" title="Add to Cart" value="Add to Cart" />
        </div>
        <br />
    </div>
    </form>
    <%
        Html.RenderPartial("SearchBox");%>
</asp:Content>