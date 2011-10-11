<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Domain2Host.Models.RegisterModel>" %>

<asp:Content ID="registerTitle" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="registerContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Create a New Account</h2>
    <p>
        Use the form below to create a new account.
    </p>
    <p>
        Passwords are required to be a minimum of
        <%: View.PasswordLength %>
        characters in length.
    </p>
    <% using (Html.BeginForm())
       { %>
    <%: Html.ValidationSummary(true, "Account creation was unsuccessful. Please correct the errors and try again.") %>
    <div>
        <fieldset>
            <legend>Account Information</legend>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Email) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(m => m.Email) %>
                <%: Html.ValidationMessageFor(m => m.Email) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Email) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(m => m.Email) %>
                <%: Html.ValidationMessageFor(m => m.Email) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Password) %>
            </div>
            <div class="editor-field">
                <%: Html.PasswordFor(m => m.Password) %>
                <%: Html.ValidationMessageFor(m => m.Password) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.ConfirmPassword) %>
            </div>
            <div class="editor-field">
                <%: Html.PasswordFor(m => m.ConfirmPassword) %>
                <%: Html.ValidationMessageFor(m => m.ConfirmPassword) %>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Company) %>
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(m => m.Company)%>
                <%: Html.ValidationMessageFor(m => m.Company)%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Address) %>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(m => m.Address)%>
                <%: Html.ValidationMessageFor(m => m.Address)%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.City) %>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(m => m.City)%>
                <%: Html.ValidationMessageFor(m => m.City)%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.State) %>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(m => m.State)%>
                <%: Html.ValidationMessageFor(m => m.State)%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Country) %>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(m => m.Country)%>
                <%: Html.ValidationMessageFor(m => m.Country)%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Zip) %>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(m => m.Zip)%>
                <%: Html.ValidationMessageFor(m => m.Zip)%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.PhoneCc) %>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(m => m.PhoneCc)%>
                <%: Html.ValidationMessageFor(m => m.PhoneCc)%>
            </div>
            <div class="editor-label">
                <%: Html.LabelFor(m => m.Mobile) %>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(m => m.Mobile)%>
                <%: Html.ValidationMessageFor(m => m.Mobile)%>
            </div>
            <p>
                <input type="submit" value="Register" />
            </p>
        </fieldset>
    </div>
    <% } %>
</asp:Content>