<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Domain Registration</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <form name="processquestion" action="Hosting" method="POST">
    <input type="hidden" name="action" value="add_domain_registration" />
    <!-- Main Content ------------------------------------------------------>
    <div class="PageHeading">
        Domain Registration</div>
    <!-- Domain Registration Top blurb -->
    <br />
    <div class="error" id="show_error" style="display: none">
        Error(s):
        <div id="error_lists">
        </div>
    </div>
    <div class="myForm">
    </div>
    <div class="frmContainer">
        <!-- DOMAIN BUY DURATION -->
        <div class="frmSection">
            <h3>
                Choose duration</h3>
        </div>
        <div class="frmSectionContent">
            <table cellpadding="0" cellspacing="0" class="dataTable" width="96%">
                <tr>
                    <td width="44%" align="left" valign="middle">
                        <strong>Buy all selected domain name(s) for:</strong>
                    </td>
                    <td width="20%">
                        <select name="duration">
                            <option value='1'>&nbsp;&nbsp;1 yr(s)</option>
                            <option value='2'>&nbsp;&nbsp;2 yr(s)</option>
                            <option value='3'>&nbsp;&nbsp;3 yr(s)</option>
                            <option value='4'>&nbsp;&nbsp;4 yr(s)</option>
                            <option value='5'>&nbsp;&nbsp;5 yr(s)</option>
                            <option value='6'>&nbsp;&nbsp;6 yr(s)</option>
                            <option value='7'>&nbsp;&nbsp;7 yr(s)</option>
                            <option value='8'>&nbsp;&nbsp;8 yr(s)</option>
                            <option value='9'>&nbsp;&nbsp;9 yr(s)</option>
                            <option value='10'>10 yr(s)</option>
                        </select>
                    </td>
                </tr>
            </table>
            <table class="dataTable" cellpadding="0" cellspacing="0" width="96%">
                <thead>
                    <tr>
                        <td>
                            <img src="getImage.php?src=ico-sm-gen.gif" height="13" width="13">
                            Alternately, select duration per domain:
                        </td>
                    </tr>
                </thead>
            </table>
            <div id="collapse-individual-duration" style="display: block;">
                <table cellpadding="0" cellspacing="0" border="0" class="dataTable alternating" width="96%">
                    <% foreach (var domain in ViewData["domains"].ToString().Split(','))
                       {%>
                    <tr>
                        <td height="20" valign="middle" width="44%">
                            &nbsp;
                            <img src="getImage.php?src=pointer.gif">
                            <%= domain %>
                        </td>
                        <td width="20%">
                            <select id="duration_1" size="1" name="<%= domain + "_domain" %>">
                                <option value="1">&nbsp;&nbsp;1 yr(s)</option>
                                <option value="2">&nbsp;&nbsp;2 yr(s)</option>
                                <option value="3">&nbsp;&nbsp;3 yr(s)</option>
                                <option value="4">&nbsp;&nbsp;4 yr(s)</option>
                                <option value="5">&nbsp;&nbsp;5 yr(s)</option>
                                <option value="6">&nbsp;&nbsp;6 yr(s)</option>
                                <option value="7">&nbsp;&nbsp;7 yr(s)</option>
                                <option value="8">&nbsp;&nbsp;8 yr(s)</option>
                                <option value="9">&nbsp;&nbsp;9 yr(s)</option>
                                <option value="10">10 yr(s)</option>
                            </select>
                        </td>
                    </tr>
                    <%
                       }%>
                </table>
            </div>
        </div>
        <!-- /DOMAIN BUY DURATION -->
        <!-- PRIVACY PROTECT -->
        <div class="frmSection green-bg">
            <h3>
                Enable Privacy Protection</h3>
        </div>
        <div class="frmSectionContent free-notice">
            <table class="privacy-protect-table" cellpadding="0" cellspacing="0" width="98%">
                <tbody>
                    <tr>
                        <td width="45%">
                            <div class="privacy-protect-input">
                                <input name="privacyprotected" value="true" type="checkbox" />
                                <strong>Yes, Protect My Privacy!</strong>
                                <p>
                                    Enable Privacy Protection for the Domain name(s) mentioned above for FREE.</p>
                            </div>
                        </td>
                        <td width="55%">
                            <div class="privacy-protect-info">
                                <p>
                                    The contact information specified above is publically available to everyone via
                                    Whois, unless you enable Privacy Protection for the domain names. <strong>Note:</strong>
                                    Privacy Protection may not be available for all domain names.</p>
                                <a href="javascript:void(0);" onclick="window.open('content.php?action=faq&requestfor=privacy_protect','Ratting','width=650,height=370,left=150,top=100,toolbar=0,status=0,scrollbars=yes,resizable=yes');">
                                    Click here to learn more</a>
                            </div>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <!-- /PRIVACY PROTECT -->
        <!-- NAMESERVERS -->
        <div style="display: block">
            <div class="frmSection">
                <h3>
                    Nameservers</h3>
            </div>
            <div class="frmSectionContent">
                <p>
                    We have pre-filled default nameservers for you. You can always modify these nameservers
                    from your Customer Control Panel later or <a href="javascript:tog('collapse-nameserver');">
                        <u>edit nameservers now</u></a>.</p>
                <div id="collapse-nameserver" style="display: none;">
                    <table cellpadding="0" cellspacing="0" class="dataTable" width="96%">
                        <tr>
                            <td width="36%" class="frmLabel">
                                <label for="name On Card">
                                    Primary Nameserver</label>
                            </td>
                            <td width="2%" class="required">
                                *
                            </td>
                            <td width="62%">
                                <input name="nameservers[]" size="27%" value="domain2host.earth.orderbox-dns.com" />
                            </td>
                        </tr>
                        <tr>
                            <td class="frmLabel">
                                <label for="Card Tyle">
                                    Secondary Nameserver</label>
                            </td>
                            <td class="required">
                                *
                            </td>
                            <td>
                                <input name="nameservers[]" size="27%" value="domain2host.mars.orderbox-dns.com" />
                            </td>
                        </tr>
                        <tr>
                            <td class="frmLabel">
                                <label for="name On Card">
                                    3rd Nameserver</label>
                            </td>
                            <td class="required">
                            </td>
                            <td>
                                <input name="nameservers[]" size="27%" value="domain2host.mercury.orderbox-dns.com" />
                                (optional)
                            </td>
                        </tr>
                        <tr>
                            <td class="frmLabel">
                                <label for="Card Tyle">
                                    4th Nameserver</label>
                            </td>
                            <td class="required">
                            </td>
                            <td>
                                <input name="nameservers[]" size="27%" value="domain2host.venus.orderbox-dns.com" />
                                (optional)
                            </td>
                        </tr>
                    </table>
                </div>
            </div>
        </div>
        <!-- /NAMESERVERS -->
        <!-- TEL NAMESERVERS -->
        <!-- /TEL NAMESERVERS -->
    </div>
    <div class="myFormEnds">
    </div>
    <br />
    <!-- Domain Registration  Bottom blurb -->
    <table cellpadding="0" cellspacing="0" border="0" align="center">
        <tr>
            <td>
                <input type="submit" class="frmButton" name="checkout" value="Continue &raquo;" />
                <br />
            </td>
        </tr>
    </table>
    </form>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>