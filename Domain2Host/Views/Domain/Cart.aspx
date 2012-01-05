<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Cart
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="PageHeading">
        Shopping Cart</div>
    <br />
    <div class="box-checkout-container">
        <h3>
            <img id="expand_bca" src="getImage.php?src=collapse.gif" align="right" />
            Given below is a summary of your shopping cart contents</h3>
    </div>
    <div class="box-checkout-content" id="shopping-cart">
        <!-- Shopping Cart Domain Registration (Path: shopping_process/checkout_step1/includes/domain_registration.html -->
        <table class="dataTable" cellpadding="0" cellspacing="0" border="0" width="100%">
            <thead>
                <tr class="alt">
                    <td width="42%" height="20">
                        Domain Registration Order(s)
                    </td>
                    <td width="10%">
                        Duration
                    </td>
                    <td width="14%">
                        Price per Year
                    </td>
                    <td width="18%">
                        Subtotal
                    </td>
                    <td width="16%">
                        &nbsp;
                    </td>
                </tr>
            </thead>
            <tr class="">
                <td>
                    <strong>
                        <img src="getImage.php?src=iw-prod-box1.gif" />
                        santhoshonet.net</strong><br />
                </td>
                <td align="left">
                    1 Year(s)
                </td>
                <td align="left">
                    USD 10.40
                </td>
                <td align="left">
                    USD 10.40
                </td>
                <td align="left">
                    <a href="cart.php?action=remove&key=santhoshonet.net_domain">
                        <img src="getImage.php?src=iw-cross.gif" alt="Remove" />
                        Remove</a>
                </td>
            </tr>
        </table>
        <br />
    </div>
    <div class="YellowNote">
        Total Amount: USD 10.40
    </div>
    <div style="display: none;">
        <div class="note">
            You Have chosen to buy a .US Domain name. .US registration requires the following
            information before we can register the domain for you. Please answer the following
            questions or click Remove
        </div>
        <br />
        <div class="myForm">
        </div>
        <div class="frmSection">
            <h3>
                Complete your Order Process</h3>
        </div>
        <div class="frmSectionContent">
            Some Details Here<br />
            <br />
            <br />
        </div>
        <div class="frmSection">
            <h3>
                Step II</h3>
        </div>
        <div class="frmSectionContent">
            And Some more here<br />
            And Some more here
            <br />
            <br />
            <br />
        </div>
        <div class="frmSection">
            <h3>
                Last Step</h3>
        </div>
        <div class="frmSectionContent">
            And Some more here<br />
            <br />
            <br />
        </div>
    </div>
    <div class="box-container-blue">
        <h3>
            <img id="expand_bca" src="getImage.php?src=collapse.gif" align="right" alt="Expand" />
            What Would You Like to Do -
        </h3>
    </div>
    <!-- Shopping Cart End -->
    <div class="box-content" id="BuyMore">
        <!-- Shopping Cart Form (Path: includes/form.html -->
        <form name="formselect" method="post" action="cart.php?goto=metarefresh">
        <input type="hidden" name="formaction" value="cart.php">
        <input type="hidden" name="action" value="complete_order">
        <table class="dataTable" cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td colspan="2">
                    <img src="getImage.php?src=ico-sm-gen.gif" />
                    <strong>Continue shopping</strong>
                </td>
            </tr>
            <tr>
                <td align="left" width="40%" style="padding-left: 25px;" valign="middle">
                    Buy
                    <select id="product_name" name="product_name" onchange="change_button();">
                        <option value="select">[Select a Product]</option>
                        <option value="linuxhosting">Linux Hosting</option>
                        <option value="windowhosting">Windows Hosting</option>
                        <option value="emailhosting">Email-only Hosting</option>
                        <option value="sitebuildlite">Website Builder</option>
                        <option value="bifm">Website Design</option>
                        <option value="digicert">Digital Certificate</option>
                        <option value="domain_regis">Domain Names</option>
                    </select>
                </td>
                <td align="left" valign="middle">
                    <input id="go" type="button" class="frmButton-disable" name="continue" value="Go" />
                </td>
            </tr>
        </table>
        </form>
        <!-- Shopping Cart End -->
        <!-- Shopping Cart Form (Path: includes/form2.html -->
        <table class="dataTable" cellpadding="0" cellspacing="0" border="0" width="100%">
            <tr>
                <td colspan="2">
                    <img src="getImage.php?src=ico-sm-gen.gif" />
                    <strong>I am done with Shopping</strong>
                </td>
            </tr>
            <tr>
                <td>
                    <br />
                    &nbsp;
                </td>
                <td align="left" valign="middle">
                    <form name="form1" method="post" action="cart.php?goto=metarefresh">
                    <input id="agree" type="checkbox" name="agree" />
                    <a href="#"><b>I agree to the NO SPAM POLICY and the Terms and Conditions for the above
                        Services.</b></a>
                    <input type="hidden" name="formaction" value="cart.php">
                    <input type="hidden" name="action" value="complete_order">
                    <br>
                    <br>
                    <input id="sub_button" type="submit" name="checkout" value="Proceed to Payment" class="frmButton-disable" />
                    </form>
                </td>
                <td>
                </td>
            </tr>
        </table>
        <!-- Shopping Cart End -->
    </div>
    <div class="box-container-blue">
        <h3>
            <img id="Img1" src="getImage.php?src=collapse.gif" align="right" alt="Expand" />
            Payment Options
        </h3>
    </div>
    <div class="box-content" id="payment">
        <table class="dataTable" cellpadding="0" cellspacing="0" border="0" width="100%">
            <thead>
                <tr>
                    <td colspan="2">
                        Online Payment
                    </td>
                </tr>
            </thead>
            <form name="paymentform">
            <tr>
                <td colspan="2">
                    <br />
                    You can pay for the above Order(s) online using the options available in the dropdown
                    below.
                </td>
            </tr>
            <tr>
                <td colspan="2" width="45%" valign="middle">
                    <select name="paymentoption">
                        <option value="37480">Net Banking / Debit Card / Credit Card (INDIA CARD ONLY ACCEPTED)</option>
                        <option value="27097">Credit Card (EXCEPT INDIA CARD)</option>
                        <option value="37360">Offline Payment</option>
                    </select>
                    &nbsp;&nbsp;&nbsp;
                    <input class="frmButton" type="button" name="proccesspayment" value="Continue">
                    <!--table 2.1 ends-->
                    <br>
                </td>
            </tr>
            </form>
            <thead>
                <tr>
                    <td colspan="2">
                        Pay from your Advance Account balance
                    </td>
                </tr>
            </thead>
            <tr>
                <td colspan="2">
                    <br>
                    You can pay for the above Order(s) using your Advance Account balance with us below.
                </td>
            </tr>
            <tr>
                <td align="left" colspan="2" valign="top">
                    <form name="form1" method="post" action="cart.php?goto=metarefresh">
                    <input type="hidden" name="formaction" value="cart.php">
                    <input type="hidden" name="action" value="complete_payment">
                    Currently you have <span style="color: #cc0000;">USD 0.00</span> in your Debit account.
                    Click on <strong><a href="index.php?action=show_add_funds&curentpage=complete_order&goto=domain2host.in/cart.php">
                        Add Funds</a></strong> to Add money to your debit account
                    <br>
                    <div class="note">
                        The Balance in this Customer's Debit Account is insufficient to cover the Invoice(s)/Debit
                        Note(s) selected. Click on 'Add Funds' to add additional funds to this customer's
                        debit account.</div>
                    <br>
                    </form>
                </td>
            </tr>
            <!-- ### Template shopping_process/checkout_step2/includes/payment_other_option.html starts here ### -->
            <tr>
                <td>
                    <br />
                </td>
            </tr>
            <thead>
                <tr>
                    <td colspan="2">
                        Other Payment Options
                    </td>
                </tr>
            </thead>
            <tr>
                <td align="left" colspan="2" valign="top">
                    Please Contact our Billing Department to find out your Payment options.
                </td>
            </tr>
            <!-- ### Template shopping_process/checkout_step2/includes/payment_other_option.html ends here ### -->
        </table>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="PageTitle" runat="server">
</asp:Content>