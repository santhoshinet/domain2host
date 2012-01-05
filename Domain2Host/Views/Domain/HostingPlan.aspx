<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    HostingPlan
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <table width="760" border="0" align="center" cellpadding="0" cellspacing="0" id="maincontent">
        <tr>
            <!-- Main Content -->
            <td valign="top" id="content">
                <form method="POST" action="cart" name="AddHostingMailStep2Form">
                <input type="hidden" name="location" value="us" />
                <input type="hidden" name="type" value="w2k" />
                <input type="hidden" name="planid" value="750379" />
                <input type="hidden" name="productkey" value="w2kus" />
                <input type="hidden" name="sellingprice" value="2.71" />
                <input type="hidden" name="prorated" value="0" />
                <input type="hidden" name="setupprice" value="0" />
                <input type="hidden" name="maintenanceprice" value="" />
                <input type="hidden" name="round" value="0" />
                <input type="hidden" name="otherdomain" value="set" />
                <div class="PageHeading">
                    Web Hosting Plan</div>
                <br>
                <div class="error" id="show_error" style="display: none">
                    Error(s):
                    <div id="error_lists">
                    </div>
                </div>
                <div class="frmContainer">
                    <div class="myForm">
                    </div>
                    <div class="frmSection">
                        <h3>
                            Your selected Product(s):</h3>
                    </div>
                    <div class="selected-products">
                        <table border="0" cellpadding="0" cellspacing="0" class="dataTable" width="96%">
                            <tr>
                                <td width="1%">
                                    <img src="getImage.php?src=ico-sm-gen.gif" align="left">
                                </td>
                                <td>
                                    <strong>Windows Hosting - Windows 1GB</strong>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="frmSectionContent">
                        <table cellpadding="0" cellspacing="0" class="dataTable" width="90%">
                            <tr>
                                <td class="frmLabel" align="left" width="203">
                                    <div class="inner-plan">
                                        Select Duration:</div>
                                </td>
                                <td>
                                    <select name="noofmonths">
                                        <option value="12">1 Year(s)</option>
                                        <option value="24">2 Year(s)</option>
                                        <option value="36">3 Year(s)</option>
                                        <option value="48">4 Year(s)</option>
                                        <option value="60">5 Year(s)</option>
                                        <option value="72">6 Year(s)</option>
                                        <option value="84">7 Year(s)</option>
                                        <option value="96">8 Year(s)</option>
                                        <option value="108">9 Year(s)</option>
                                        <option value="120">10 Year(s)</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td class="frmLabel" align="left" valign="middle">
                                    <div class="inner-plan">
                                        Start Date:</div>
                                </td>
                                <td>
                                    <strong>Oct 30, 2011 </strong>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="frmLabel">
                                    <div class="inner-plan">
                                        End Date:</div>
                                </td>
                                <td>
                                    <strong><span id="enddate"></span></strong>
                                </td>
                            </tr>
                            <tr>
                                <td class="frmLabel" align="left" width="203">
                                    <div class="inner-plan">
                                        Monthly Hosting Price:</div>
                                </td>
                                <td>
                                    <strong><span class="red-text" id="hosting_price">USD</span></strong>
                                </td>
                            </tr>
                            <tr>
                                <td align="left" class="frmLabel">
                                    <div class="inner-plan">
                                        One-Time Setup Fee:</div>
                                </td>
                                <td>
                                    <strong><span class="red-text">FREE</span></strong>
                                </td>
                            </tr>
                        </table>
                        <div class="totalcost-wrapper">
                            <table cellpadding="0" cellspacing="0" border="0">
                                <tr>
                                    <td style="width: 200px;" class="totalcost-icon">
                                        Total:
                                    </td>
                                    <td>
                                        USD <span id="totalcost"></span>
                                    </td>
                                </tr>
                            </table>
                        </div>
                        <br>
                    </div>
                    <div class="frmSection">
                        <h3>
                            Primary Domain Name for this Package:</h3>
                    </div>
                    <div class="frmSectionContent" align="left">
                        <table class="dataTable" width="100%" border="0">
                            <tr>
                                <td>
                                    <select id="domainname_opt" name="domainname_opt" onchange="show_otherbox();">
                                        <option value="santhoshinet.com">santhoshinet.com</option>
                                        <option value="other">Other</option>
                                    </select>
                                    <div id="domainname_div" style="display: none">
                                        www.<input type="text" size="30" maxlength="100" value="" name="domainname">
                                        <br>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Example: yourdomain.com
                                    </div>
                                </td>
                            </tr>
                        </table>
                        <div class="clearer">
                        </div>
                    </div>
                    <div class="myFormEnds">
                    </div>
                    <br>
                    <center>
                        <input type="button" name="back_button" value="Back" class="frmButton-secondary"
                            onmouseout="on_mouse_out_secondary(this);" onmouseover="on_mouse_over_secondary(this);"
                            onclick="javascript:go_back();">&nbsp;&nbsp;
                        <input type="button" class="frmButton" name="continue_button" value="Continue &raquo;"
                            onmouseover="on_mouse_over(this);" onmouseout="on_mouse_out(this);" onclick="fill_domainname();checkandcallurl(this,this.value,'validate_form.php?validate_action=check_domainname','AddHostingMailStep2Form');">
                    </center>
                </div>
                </form>
            </td>
            <td width="160" id="sidebar" valign="top">
                <!-- ### Template sidebars/sidebar_hosting.html starts here ### -->
                <div id="fdns-sidebar-blurb">
                    <div class="fdns-sb-header">
                        <h3>
                            <em>FREE!</em> with EVERY Domain Registration</h3>
                    </div>
                    <div class="fdns-sb-content">
                        <ul>
                            <li>2 Free Email Account(s)</li>
                            <li>Privacy Protection</li>
                            <li>DNS Service</li>
                            <li>Domain Forwarding</li>
                            <li>Unlimited Mail Forwards</li>
                            <li>Domain Theft Protection</li>
                        </ul>
                    </div>
                    <div class="fdns-sb-footer">
                        <a href="/content.php?action=free_services">View All</a>
                    </div>
                </div>
                <br>
                <div id="sidebar-html">
                    <div class="dbx-group" id="sidebar-hosting">
                        <div class="sidebar-wrapper">
                            <div class="sidebar-header dbx-handle">
                                Quick Links</div>
                            <ul class="list">
                                <li><a href="hosting.php?type=linux&location=us&category=hosting">Linux Hosting Plans</a></li>
                                <li><a href="hosting.php?type=w2k&location=us&category=hosting">Windows Hosting Plans</a></li>
                                <li><a href="hosting.php?type=email&location=us&category=hosting">Email-only Plans</a></li>
                                <li><a href="content.php?page=security/security.html&type=w2k">Security</a></li>
                                <li><a href="content.php?page=data_protection_recovery/data_protection_recovery.html&type=w2k">
                                    Backup and Recovery</a></li>
                                <li><a href="content.php?page=datacenter_network/datacenter_network.html&type=w2k">Datacenter
                                    Details</a></li>
                            </ul>
                        </div>
                        <!-- ### Template promos/sidebar_promo_blurb.html starts here ### -->
                        <div class="promo-sidebar-blurb">
                            <table cellpadding="0" cellspacing="0" width="100%">
                                <thead>
                                    <tr>
                                        <td>
                                            <a href="content.php?action=promos">Hot Deals!!!</a>
                                        </td>
                                    </tr>
                                </thead>
                                <tr>
                                    <td valign="middle" class="promo-sidebar-blurb">
                                        <br />
                                        <a href="content.php?action=promos">.CO.IN, NET.IN, ORG.IN, GEN.IN, FIRM.IN, IND.IN
                                            <span class="promo-chck-avail"><strong>SALE!</strong></span> USD 4.25</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="middle" class="promo-sidebar-blurb">
                                        <br />
                                        <a href="content.php?action=promos">.IN <span class="promo-chck-avail"><strong>SALE!</strong></span>
                                            USD 4.25</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="middle" class="promo-sidebar-blurb">
                                        <br />
                                        <a href="content.php?action=promos">.EU <span class="promo-chck-avail"><strong>SALE!</strong></span>
                                            USD 5.49</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="middle" class="promo-sidebar-blurb">
                                        <br />
                                        <a href="content.php?action=promos">.CO <span class="promo-chck-avail"><strong>SALE!</strong></span>
                                            USD 21.99</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="middle" class="promo-sidebar-blurb">
                                        <br />
                                        <a href="content.php?action=promos">.BIZ <span class="promo-chck-avail"><strong>SALE!</strong></span>
                                            USD 8.13</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="middle" class="promo-sidebar-blurb">
                                        <br />
                                        <a href="content.php?action=promos">.CN.COM <span class="promo-chck-avail"><strong>SALE!</strong></span>
                                            USD 15.99</a>
                                    </td>
                                </tr>
                            </table>
                            <br />
                        </div>
                        <a href="domain.php">
                            <img src="getImage.php?src=xxx_sidebar_blurb.jpg" alt="Apply for Your .XXX Domain Today!"></a>
                        <!-- ### Template promos/sidebar_promo_blurb.html ends here ### -->
                        <br />
                        <center>
                            <img src="getImage.php?src=30day.gif" border="0"></center>
                        <br />
                        <div class="sidebar-wrapper" id="domains_section">
                            <div class="sidebar-header dbx-handle">
                                Domain Names</div>
                            <ul class="list">
                                <li><a href="domain.php">Register New Domain</a></li>
                                <li><a href="domain.php?action=domain_transfer">Transfer Domain</a></li>
                                <li><a href="content.php?action=free_services">Free Domain Forwarding</a></li>
                                <li><a href="content.php?action=free_services">Free Mail Forwarding</a></li>
                                <li><a href="content.php?action=free_services">FREE Services</a></li>
                            </ul>
                            <br>
                        </div>
                        <div class="sidebar-wrapper" id="sitebuilder_section">
                            <div class="sidebar-header dbx-handle">
                                Digital Certificates</div>
                            <ul class="list">
                                <li><a href="digital_certificate.php#plans">View Plans</a></li>
                                <li><a href="digital_certificate.php#features">Features</a></li>
                                <li><a href="digital_certificate.php#compareplans">Compare Plans</a></li>
                            </ul>
                            <br>
                        </div>
                    </div>
                </div>
                <!-- ### Template sidebars/sidebar_hosting.html ends here ### -->
            </td>
        </tr>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>