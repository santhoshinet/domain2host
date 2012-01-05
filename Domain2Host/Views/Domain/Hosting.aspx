<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Hosting
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style type="text/css">
        #cart_summary
        {
            display: none;
        }
    </style>
    <div id="cart_summary" style="overflow: hidden; border: 1px solid #ccc; width: 700px;
        position: absolute; top: 90px; right: 10%; z-index: 5000;">
        <table width="690" border="0" align="center" style="margin: 5px; background: #fff;">
            <tr>
                <td>
                    <div class="box-checkout-container">
                        <h3>
                            <img src="getImage.php?src=but-close.gif" alt="Close" border="0" align="right" />
                            Your Cart Contents</h3>
                    </div>
                    <div class="box-checkout-content" id="available-dn">
                        <table class="dataTable" border="0" cellpadding="0" cellspacing="0" width="100%"
                            align="center">
                            <thead>
                                <tr class="alt">
                                    <td height="20" width="40%">
                                        Domain Registration Order(s)
                                    </td>
                                    <td width="12%">
                                        Duration
                                    </td>
                                    <td width="18%">
                                        Total Price (USD)
                                    </td>
                                </tr>
                            </thead>
                            <tbody>
                                <tr class="alt">
                                    <td>
                                        <strong>
                                            <img src="getImage.php?src=iw-prod-box1.gif" height="18" width="18">
                                            santhoshinet.com </strong>
                                    </td>
                                    <td align="left">
                                        1 Year
                                    </td>
                                    <td align="left">
                                        10.40
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                        <!-- Domain Transfer -->
                        <!-- sitebuilder_lite -->
                        <!-- sitebuilder_bifm -->
                        <!-- Livehelp -->
                        <!-- Digital Certificate -->
                        <!-- Managed DNS -->
                        <!-- Domain Forward -->
                        <!--Mail Forarding-->
                        <!--linux_hosting-->
                        <table class="dataTable" border="0" cellpadding="0" cellspacing="0" width="100%"
                            align="center">
                            <thead>
                                <tr class="alt">
                                    <td height="20" width="40%">
                                        Multi-Domain Hosting Order(s)
                                    </td>
                                    <td width="12%">
                                        Duration
                                    </td>
                                    <td width="18%">
                                        Total Price (USD)
                                    </td>
                                </tr>
                            </thead>
                            <tbody>
                            </tbody>
                        </table>
                        <!--window_hosting-->
                        <!--mail_hosting-->
                        <div class="YellowNote">
                            Total Amount: USD 10.40</div>
                        <table cellpadding="0" cellspacing="0" border="0" width="75%">
                            <tr>
                                <td align="left">
                                    <div class="frmButton-link">
                                        <a href="cart.php?action=empty">Empty Cart</a></div>
                                </td>
                                <td align="center">
                                    <div class="frmButton-link">
                                        <a href="cart.php?action=cart_summary">Proceed to Checkout</a></div>
                                </td>
                                <td align="right">
                                    <div class="frmButton-link">
                                        <a href="#">Close</a></div>
                                </td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>
    <div id="content-wrapper">
        <div id="q-blurb-box">
            <table border="0" cellspacing="0" cellpadding="0" align="center" width="580">
                <tr>
                    <td valign="bottom">
                        <img src="getImage.php?src=hosting-rounded-top.gif" />
                    </td>
                </tr>
                <tr>
                    <td valign="top" align="left" class="q-blurb">
                        <p>
                            Before checking out, you may wish to look at few related Products and Services you
                            can add to your existing Package. We have listed these out for you below.</p>
                        <div style="margin-left: 25px; margin-top: 10px;">
                            <form runat="server" method="post" action="cart">
                            <input type="submit" class="frmButton-secondary" value="No Thanks, Proceed to Checkout" />
                            </form>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <img src="getImage.php?src=hosting-rounded-bottom.gif">
                    </td>
                </tr>
            </table>
        </div>
        <br />
        <form name="hostingplan" method="POST" action="">
        <input type="hidden" name="action" value="add_order" />
        <input type="hidden" name="noofmonths" value="" />
        <input type="hidden" name="planid" value="" />
        <input type="hidden" name="type" value="linux" />
        <input type="hidden" name="location" value="us" />
        <table width="760" border="0" align="center" cellpadding="0" cellspacing="0" id="maincontent">
            <tr>
                <td valign="top" id="content">
                    <div class="error" id="show_error" style="display: none">
                        Error(s):
                        <div id="error_lists">
                        </div>
                    </div>
                    <div class="hostingplan-heading">
                        <div class="PageHeading">
                            Web Hosting Plans</div>
                        <div class="tab-wrapper">
                            <ul class="tabs">
                                <li id="linux_tab" class="active"><a href="#linux_plans" onclick="toggle_plans('linux','windows');return false;">
                                    <span class="text-wrap icon linux-icon">Linux</span></a></li>
                                <li id="windows_tab"><a href="#windows_plans" onclick="toggle_plans('windows','linux');return false;">
                                    <span class="text-wrap icon win-icon">Windows</span></a></li>
                            </ul>
                        </div>
                    </div>
                    <div id="plan-container">
                        <!-- PLATFORM SELECTION HEADER -->
                        <table id="linux_plans" class="plan_details_new" width="100%" cellpadding="0" cellspacing="0"
                            border="0">
                            <tr>
                                <th class="planA">
                                    Linux 1GB
                                </th>
                                <th style="width: 2px">
                                    &nbsp;
                                </th>
                                <th class="planA">
                                    Linux 10GB
                                </th>
                                <th style="width: 2px">
                                    &nbsp;
                                </th>
                                <th class="planA">
                                    Unlimited Linux Hosting
                                </th>
                                <th style="width: 2px">
                                    &nbsp;
                                </th>
                                <th class="planC">
                                    Pro<img src="/getImage.php?src=new.png">
                                </th>
                                <th style="width: 2px">
                                    &nbsp;
                                </th>
                            </tr>
                            <tr>
                                <td class="planA">
                                    One Domain
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planA">
                                    One Domain
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planA">
                                    One Domain
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planC">
                                    Unlimited Domains
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="planA">
                                    1 GB Disk Space
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planA">
                                    10 GB Disk Space
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planA">
                                    Unlimited Disk Space
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planC">
                                    Unlimited Disk Space
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="planA">
                                    10 Email Accounts
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planA">
                                    100 Email Accounts
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planA">
                                    Unlimited Email Accounts
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planC">
                                    Unlimited Email Accounts
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="planA">
                                    10 GB Data Transfer
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planA">
                                    100 GB Data Transfer
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planA">
                                    Unlimited Data Transfer
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planC">
                                    Unlimited Data Transfer
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="planA">
                                    <p>
                                        <strong>As low as</strong><br>
                                        USD <span class="price-label">2.71/month</span>
                                    </p>
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planA">
                                    <p>
                                        <strong>As low as</strong><br>
                                        USD <span class="price-label">3.62/month</span>
                                    </p>
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planA">
                                    <p>
                                        <strong>As low as</strong><br>
                                        USD <span class="price-label">8.99/month</span>
                                    </p>
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planC">
                                    <p>
                                        <strong>As low as</strong><br />
                                        USD <span class="price-label">15.00/month</span>
                                    </p>
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="planA">
                                    <p>
                                        <label>
                                            Select Duraton</label>
                                        <select name="duration" onchange="set_duration(this);">
                                            <option value="">Select Duration</option>
                                            <option value="12">1 Year(s) @ 2.71 USD/ mo </option>
                                            <option value="24">2 Year(s) @ 2.71 USD/ mo </option>
                                            <option value="36">3 Year(s) @ 2.71 USD/ mo </option>
                                            <option value="48">4 Year(s) @ 2.71 USD/ mo </option>
                                            <option value="60">5 Year(s) @ 2.71 USD/ mo </option>
                                            <option value="72">6 Year(s) @ 2.71 USD/ mo </option>
                                            <option value="84">7 Year(s) @ 2.71 USD/ mo </option>
                                            <option value="96">8 Year(s) @ 2.71 USD/ mo </option>
                                            <option value="108">9 Year(s) @ 2.71 USD/ mo </option>
                                            <option value="120">10 Year(s) @ 2.71 USD/ mo </option>
                                        </select>
                                    </p>
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planA">
                                    <p>
                                        <label>
                                            Select Duraton</label>
                                        <select name="duration" onchange="set_duration(this);">
                                            <option value="">Select Duration</option>
                                            <option value="12">1 Year(s) @ 3.62 USD/ mo </option>
                                            <option value="24">2 Year(s) @ 3.62 USD/ mo </option>
                                            <option value="36">3 Year(s) @ 3.62 USD/ mo </option>
                                            <option value="48">4 Year(s) @ 3.62 USD/ mo </option>
                                            <option value="60">5 Year(s) @ 3.62 USD/ mo </option>
                                            <option value="72">6 Year(s) @ 3.62 USD/ mo </option>
                                            <option value="84">7 Year(s) @ 3.62 USD/ mo </option>
                                            <option value="96">8 Year(s) @ 3.62 USD/ mo </option>
                                            <option value="108">9 Year(s) @ 3.62 USD/ mo </option>
                                            <option value="120">10 Year(s) @ 3.62 USD/ mo </option>
                                        </select>
                                    </p>
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planA">
                                    <p>
                                        <label>
                                            Select Duraton</label>
                                        <select name="duration" onchange="set_duration(this);">
                                            <option value="">Select Duration</option>
                                            <option value="12">1 Year(s) @ 8.99 USD/ mo </option>
                                            <option value="24">2 Year(s) @ 8.99 USD/ mo </option>
                                            <option value="36">3 Year(s) @ 8.99 USD/ mo </option>
                                            <option value="48">4 Year(s) @ 8.99 USD/ mo </option>
                                            <option value="60">5 Year(s) @ 8.99 USD/ mo </option>
                                            <option value="72">6 Year(s) @ 8.99 USD/ mo </option>
                                            <option value="84">7 Year(s) @ 8.99 USD/ mo </option>
                                            <option value="96">8 Year(s) @ 8.99 USD/ mo </option>
                                            <option value="108">9 Year(s) @ 8.99 USD/ mo </option>
                                            <option value="120">10 Year(s) @ 8.99 USD/ mo </option>
                                        </select>
                                    </p>
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planC">
                                    <p>
                                        <label>
                                            Select Duraton</label>
                                        <select name="duration" onchange="set_duration(this);">
                                            <option value="">Select Duration</option>
                                            <option value="12">1 Year(s) @ 15.00 USD/ mo </option>
                                            <option value="6">6 Months @ 18.00 USD/ mo </option>
                                            <option value="3">3 Months @ 19.99 USD/ mo </option>
                                        </select>
                                    </p>
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="planA">
                                    <div class="buybutton">
                                        <a href="#786" title="Buy Now" onclick="set_planid_and_submit('750385','linux');">Buy
                                            Now</a></div>
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planA">
                                    <div class="buybutton">
                                        <a href="#786" title="Buy Now" onclick="set_planid_and_submit('762086','linux');">Buy
                                            Now</a></div>
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planA">
                                    <div class="buybutton">
                                        <a href="#786" title="Buy Now" onclick="set_planid_and_submit('291489','linux');">Buy
                                            Now</a></div>
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                                <td class="planC">
                                    <div class="buybutton">
                                        <a href="#786" title="Buy Now" onclick="set_planid_and_submit('2','multidomainhosting');">
                                            Buy Now</a></div>
                                </td>
                                <td style="width: 2px">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                        <div class="ui-space">
                        </div>
                        <table id="windows_plans" class="plan_details" width="100%" cellpadding="0" cellspacing="0"
                            border="0" style="display: none;">
                            <tr class="plan_head">
                                <th>
                                    &nbsp;<!--<img src="getImage.php?src=hostingplan-promoblurb.jpg" alt="Hosting Plans">-->
                                </th>
                                <td width="22%" class="plan_name">
                                    Windows 1GB
                                </td>
                                <td width="22%" class="plan_name">
                                    Windows 10GB
                                </td>
                                <td width="22%" class="plan_name">
                                    Unlimited Windows Hosting
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Web Space
                                </th>
                                <td>
                                    1 GB
                                </td>
                                <td>
                                    10 GB
                                </td>
                                <td>
                                    Unlimited
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Email Accounts
                                </th>
                                <td>
                                    10
                                </td>
                                <td>
                                    100
                                </td>
                                <td>
                                    Unlimited
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Data Transfer
                                </th>
                                <td>
                                    10 GB
                                </td>
                                <td>
                                    100 GB
                                </td>
                                <td>
                                    Unlimited
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Prices
                                </th>
                                <td>
                                    <span class="price"><span class="start-at">From</span><br />
                                        USD 2.71 <span class="per-duration">/mo.</span> </span>
                                </td>
                                <td>
                                    <span class="price"><span class="start-at">From</span><br />
                                        USD 3.62 <span class="per-duration">/mo.</span> </span>
                                </td>
                                <td>
                                    <span class="price"><span class="start-at">From</span><br />
                                        USD 8.99 <span class="per-duration">/mo.</span> </span>
                                </td>
                            </tr>
                            <tr>
                                <th>
                                    Duration
                                </th>
                                <td>
                                    <select name="duration" onchange="set_duration(this);">
                                        <option value="">Select Duration</option>
                                        <option value="12">1 year(s) @ 2.71 USD/ mo </option>
                                        <option value="24">2 year(s) @ 2.71 USD/ mo </option>
                                        <option value="36">3 year(s) @ 2.71 USD/ mo </option>
                                        <option value="48">4 year(s) @ 2.71 USD/ mo </option>
                                        <option value="60">5 year(s) @ 2.71 USD/ mo </option>
                                        <option value="72">6 year(s) @ 2.71 USD/ mo </option>
                                        <option value="84">7 year(s) @ 2.71 USD/ mo </option>
                                        <option value="96">8 year(s) @ 2.71 USD/ mo </option>
                                        <option value="108">9 year(s) @ 2.71 USD/ mo </option>
                                        <option value="120">10 year(s) @ 2.71 USD/ mo </option>
                                    </select>
                                </td>
                                <td>
                                    <select name="duration" onchange="set_duration(this);">
                                        <option value="">Select Duration</option>
                                        <option value="12">1 year(s) @ 3.62 USD/ mo </option>
                                        <option value="24">2 year(s) @ 3.62 USD/ mo </option>
                                        <option value="36">3 year(s) @ 3.62 USD/ mo </option>
                                        <option value="48">4 year(s) @ 3.62 USD/ mo </option>
                                        <option value="60">5 year(s) @ 3.62 USD/ mo </option>
                                        <option value="72">6 year(s) @ 3.62 USD/ mo </option>
                                        <option value="84">7 year(s) @ 3.62 USD/ mo </option>
                                        <option value="96">8 year(s) @ 3.62 USD/ mo </option>
                                        <option value="108">9 year(s) @ 3.62 USD/ mo </option>
                                        <option value="120">10 year(s) @ 3.62 USD/ mo </option>
                                    </select>
                                </td>
                                <td>
                                    <select name="duration" onchange="set_duration(this);">
                                        <option value="">Select Duration</option>
                                        <option value="12">1 year(s) @ 8.99 USD/ mo </option>
                                        <option value="24">2 year(s) @ 8.99 USD/ mo </option>
                                        <option value="36">3 year(s) @ 8.99 USD/ mo </option>
                                        <option value="48">4 year(s) @ 8.99 USD/ mo </option>
                                        <option value="60">5 year(s) @ 8.99 USD/ mo </option>
                                        <option value="72">6 year(s) @ 8.99 USD/ mo </option>
                                        <option value="84">7 year(s) @ 8.99 USD/ mo </option>
                                        <option value="96">8 year(s) @ 8.99 USD/ mo </option>
                                        <option value="108">9 year(s) @ 8.99 USD/ mo </option>
                                        <option value="120">10 year(s) @ 8.99 USD/ mo </option>
                                    </select>
                                </td>
                            </tr>
                            <tr class="plan_head">
                                <th>
                                    &nbsp;
                                </th>
                                <td class="buy-button-bg" align="center">
                                    <div class="buybutton">
                                        <a href="#786" title="Buy Now" onclick="set_planid_and_submit('750379','w2k');">Buy
                                            Now</a></div>
                                </td>
                                <td class="buy-button-bg" align="center">
                                    <div class="buybutton">
                                        <a href="#786" title="Buy Now" onclick="set_planid_and_submit('762082','w2k');">Buy
                                            Now</a></div>
                                </td>
                                <td class="buy-button-bg" align="center">
                                    <div class="buybutton">
                                        <a href="#786" title="Buy Now" onclick="set_planid_and_submit('174458','w2k');">Buy
                                            Now</a></div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div>
                        <style>

                        </style>
                        <div class="tab-wrapper" id="features-tab">
                            <ul class="tabs">
                                <li class="active first"><a href="#included-free"><span class="text-wrap">Included <span
                                    class="orange-text">Free!</span></span></a></li>
                                <li><a href="#tech-specs"><span class="text-wrap">Tech Specs</span></a></li>
                            </ul>
                        </div>
                        <div class="tab-content" id="included-free">
                            <p class="free-features-title">
                                <span class="right-round"><strong>FREE!</strong> features with each hosting plan</span><span
                                    class="arrow">&nbsp;</span></p>
                            <div class="clear">
                            </div>
                            <ul class="features-list">
                                <li class="wordpress-blog">Start your own Wordpress blog</li>
                                <li class="website-content">Manage your website content</li>
                                <li class="email-phone">Access email on your phone</li>
                                <li class="starter-website">Build a starter website</li>
                                <li class="photo-albums">Publish photo albums</li>
                                <li class="sell-online">Shopping carts</li>
                                <li class="control-panel">cPanel <small>(Linux)</small> and Plesk <small>(Windows)</small>
                                    Control Panels</li>
                            </ul>
                        </div>
                        <div class="tab-content" id="tech-specs" style="display: none">
                            <div class="specs-blurb">
                                <h3>
                                    Email</h3>
                                <ul class="show-selected">
                                    <li>Space per Account - 2 GB</li>
                                    <li>Blackberry/iPhone/Mobile compatible</li>
                                    <li>Webmail/SMTP/POP3/IMAP</li>
                                    <li>Advanced Spam/Virus Protection</li>
                                    <li class="hidden">Unlimited Email Forwards/Aliases/Auto-responders</li>
                                    <li class="hidden">50 Mailing Lists</li>
                                    <li class="hidden">HTML Email</li>
                                    <li class="hidden">Online Address Book</li>
                                    <li class="hidden">Track sent mails</li>
                                    <li class="show-more"><a href="#">More &raquo;</a></li>
                                    <li class="show-less"><a href="#">&laquo; Less</a></li>
                                </ul>
                            </div>
                            <div class="specs-blurb">
                                <h3>
                                    Included Apps</h3>
                                <ul class="show-selected">
                                    <li class="platform">Linux</li>
                                    <li>Blogs - WordPress, b2evolution</li>
                                    <li>Photo Galleries - 4images Gallery</li>
                                    <li>Web Portals &amp; CMS - Drupal, Joomla</li>
                                    <li class="hidden">Shopping Cart - osCommerce, CubeCart</li>
                                    <li class="hidden">Polls and Surveys - Advanced Poll, LimeSurvey</li>
                                    <li class="hidden">Wiki - phpWik</li>
                                    <li class="hidden">Message Forums - phpBB</li>
                                    <li class="hidden">Customer Support - osTicket</li>
                                    <li class="hidden">... and over 50 more apps</li>
                                    <li class="show-more"><a href="#">More &raquo;</a></li>
                                    <li class="show-less"><a href="#">&laquo; Less</a></li>
                                </ul>
                                <ul class="show-selected">
                                    <li class="platform">Windows</li>
                                    <li>Blogs - WordPress, b2evolution</li>
                                    <li>Photo Galleries - 4images Gallery</li>
                                    <li>Web Portals &amp; CMS - Drupal, Joomla</li>
                                    <li class="hidden">Shopping Cart - osCommerce, psTicket, phpAds</li>
                                    <li class="hidden">Polls and Surveys - Advanced Poll, Advanced Poll, phpsurveyor</li>
                                    <li class="hidden">Wiki - phpWik, mediawiki</li>
                                    <li class="hidden">Message Forums - phpBB</li>
                                    <li class="hidden">Customer Support - osTicket, phpsupporttickets</li>
                                    <li class="hidden">Customer Manamegent - SugarCRM</li>
                                    <li class="hidden">... and over 100 more apps</li>
                                    <li class="show-more"><a href="#">More &raquo;</a></li>
                                    <li class="show-less"><a href="#">&laquo; Less</a></li>
                                </ul>
                            </div>
                            <div class="specs-blurb">
                                <h3>
                                    Programming Languages Supported</h3>
                                <ul>
                                    <li class="platform">Linux</li>
                                    <li>PHP v5</li>
                                    <li>Perl</li>
                                    <li>Python</li>
                                    <li>CGI</li>
                                </ul>
                                <ul>
                                    <li class="platform">Windows</li>
                                    <li>PHP v5</li>
                                    <li>ASP</li>
                                    <li>ASP.NET v 3.5</li>
                                </ul>
                            </div>
                            <div class="specs-blurb">
                                <h3>
                                    Databases</h3>
                                <ul>
                                    <li class="platform">Linux</li>
                                    <li>MySQL Databases - Unlimited</li>
                                    <li>Database Space - Included as part of webspace</li>
                                </ul>
                                <ul>
                                    <li class="platform">Windows</li>
                                    <li>MySQL/MSSQL/Access Databases - Unlimited</li>
                                    <li>Database Space:</li>
                                    <li class="sub-point">Equal to web space if web space is less than 5 GB</li>
                                    <li class="sub-point">5 GB if web space is equal to / greater than 5 GB</li>
                                    <li class="sub-point">Unlimited if web space is unlimited</li>
                                </ul>
                            </div>
                            <div class="specs-blurb">
                                <h3>
                                    Domain Services</h3>
                                <ul>
                                    <li>Single Domain Hosting</li>
                                    <li>Domain Forwarding</li>
                                    <li>Free DNS Management</li>
                                    <li>Path Forwarding</li>
                                    <li>URL Masking</li>
                                </ul>
                            </div>
                            <div class="specs-blurb">
                                <h3>
                                    Other Features</h3>
                                <ul class="show-selected">
                                    <li class="platform">Linux</li>
                                    <li>CentOS - Release 5.5</li>
                                    <li>Apache 2.2.17</li>
                                    <li>PHP - 5.2.16</li>
                                    <li>MySQL - 5.0.84</li>
                                    <li class="hidden">phpMyAdmin - 3.3.9.2</li>
                                    <li class="hidden">cPanel - 11.28.64</li>
                                    <li class="hidden">PDO_MySQL</li>
                                    <li class="hidden">ionCube Loader</li>
                                    <li class="hidden">Python</li>
                                    <li class="hidden">Perl</li>
                                    <li class="hidden">mcrypt</li>
                                    <li class="hidden">Zend Optimizer</li>
                                    <li class="hidden">Zend Engine</li>
                                    <li class="hidden">Ruby</li>
                                    <li class="hidden">zlib</li>
                                    <li class="hidden">cURL</li>
                                    <li class="hidden">SSI</li>
                                    <li class="hidden">Cron Jobs (Scheduled Tasks)</li>
                                    <li class="hidden">Fix File Permission</li>
                                    <li class="hidden">Easy to use cPanel Control Panel (Linux) - <a href="/content.php?action=demo&amp;type=lhbus"
                                        target="_blank">Demo</a></li>
                                    <li class="show-more"><a href="#">More &raquo;</a></li>
                                    <li class="show-less"><a href="#">&laquo; Less</a></li>
                                </ul>
                                <ul class="show-selected">
                                    <li class="platform">Windows</li>
                                    <li>WHB Operating System - 2008</li>
                                    <li>IIS (Internet Information Services) 7.0</li>
                                    <li>MS SQL 2008 Standard Edition (64-bit)</li>
                                    <li>PHP 5.2.13</li>
                                    <li class="hidden">MySQL 5.0.22</li>
                                    <li class="hidden">ASP.NET 4.0</li>
                                    <li class="hidden">ASP</li>
                                    <li class="hidden">MVC</li>
                                    <li class="hidden">PDO_MySQL</li>
                                    <li class="hidden">Reporting Services 2008 Version 12.0 (Crystal Reporting Services,
                                        Data Report)</li>
                                    <li class="hidden">ionCube Loader</li>
                                    <li class="hidden">AJAX</li>
                                    <li class="hidden">Ajax ToolKit</li>
                                    <li class="hidden">Easy to use Plesk Control Panel (Windows) - <a href="/content.php?action=demo&amp;type=w2kus"
                                        target="_blank">Demo</a></li>
                                    <li class="show-more"><a href="#">More &raquo;</a></li>
                                    <li class="show-less"><a href="#">&laquo; Less</a></li>
                                </ul>
                                <ul class="show-selected">
                                    <li class="platform">Common Features</li>
                                    <li>File Manager</li>
                                    <li>Domain Aliases</li>
                                    <li>Unlimited Sub Domains</li>
                                    <li>Unlimited FTP Users</li>
                                    <li class="hidden">SSL/HTTPS Support - Add-on</li>
                                    <li class="hidden">Dedicated IP - Add-on</li>
                                    <li class="hidden">Web Access via Mobiles</li>
                                    <li class="hidden">Custom MIME Types</li>
                                    <li class="hidden">Custom Error Pages</li>
                                    <li class="hidden">Directory Protection</li>
                                    <li class="hidden">Backup Manager (Backup Policy Manager)</li>
                                    <li class="hidden">AWSTATS</li>
                                    <li class="hidden">SSL Manager</li>
                                    <li class="hidden">Bandwidth Report</li>
                                    <li class="hidden">Access to raw logs</li>
                                    <li class="hidden">Comprehensive Knowledge-base</li>
                                    <li class="hidden">Latest Visitors</li>
                                    <li class="show-more"><a href="#">More &raquo;</a></li>
                                    <li class="show-less"><a href="#">&laquo; Less</a></li>
                                </ul>
                            </div>
                            <div class="specs-blurb">
                                <h3>
                                    Support and Infrastructure</h3>
                                <ul class="show-selected">
                                    <li>24/7 Live Chat / Phone / Email</li>
                                    <li>24/7 Monitoring</li>
                                    <li>Highly redundant architecture</li>
                                    <li>High Availability</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
        </form>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>