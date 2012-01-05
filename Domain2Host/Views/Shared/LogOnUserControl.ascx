<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Domain2Host.Models.LogOnModel>" %>
<% using (Html.BeginForm("LogOn","Account"))
       { %>
       <ul>
            <li><h2>Log On</h2></li>
            <li><%: Html.ValidationSummary(true, "Login was unsuccessful. Please correct the errors and try again.") %></li>
            <li>
                <p> <a href="/Account/Register">Register</a> if you don't have an account.</p>
            </li>
            <li>
                <%: Html.LabelFor(m => m.Email) %>
            </li>
            <li>
                <%: Html.TextBoxFor(m => m.Email) %>
                <%: Html.ValidationMessageFor(m => m.Email) %>
            </li>
            <li><%: Html.LabelFor(m => m.Password) %></li>
            <li>
                <%: Html.PasswordFor(m => m.Password) %>
                <%: Html.ValidationMessageFor(m => m.Password) %>
            </li>
            <li><%: Html.CheckBoxFor(m => m.RememberMe) %>
                <%: Html.LabelFor(m => m.RememberMe) %>
            </li>
            <li><input type="submit" value="Log On" /></li>
       </ul>
  <% } %>