<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<Domain2Host.Models.RegisterModel>" %>
 <% using (Html.BeginForm("Register","Account"))
       { %>
       <ul>
            <li><h2>Create a New Account</h2></li>
            <li><%: Html.ValidationSummary(true, "Account creation was unsuccessful. Please correct the errors and try again.") %></li>
            <li>
                <%: Html.LabelFor(m => m.Name) %>
            </li>
            <li>
                <%: Html.TextBoxFor(m => m.Name) %>
                <%: Html.ValidationMessageFor(m => m.Name) %>
            </li>
            <li><%: Html.LabelFor(m => m.Company) %></li>
            <li>
                <%: Html.TextBoxFor(m => m.Company)%>
                <%: Html.ValidationMessageFor(m => m.Company)%>
            </li>
            <li>
                 <%: Html.LabelFor(m => m.Email) %>
            </li>
            <li>
                <%: Html.TextBoxFor(m => m.Email) %>
                <%: Html.ValidationMessageFor(m => m.Email) %>
            </li>
            <li>
                <%: Html.LabelFor(m => m.Password) %>
            </li>
            <li>
                <%: Html.PasswordFor(m => m.Password) %>
                <%: Html.ValidationMessageFor(m => m.Password) %>
            </li>
            <li>
                <%: Html.LabelFor(m => m.ConfirmPassword) %>
            </li>
            <li>
                <%: Html.PasswordFor(m => m.ConfirmPassword) %>
                <%: Html.ValidationMessageFor(m => m.ConfirmPassword) %>
            </li>
            <li>
                <%: Html.LabelFor(m => m.Address1) %>
            </li>
            <li>
                <%: Html.TextAreaFor(m => m.Address1)%>
                <%: Html.ValidationMessageFor(m => m.Address1)%>
            </li>
            <li>
                <%: Html.LabelFor(m => m.Address2) %>
            </li>
            <li>
                <%: Html.TextAreaFor(m => m.Address2)%>
                <%: Html.ValidationMessageFor(m => m.Address2)%>
            </li>
            <li>
                <%: Html.LabelFor(m => m.City) %>
            </li>
            <li>
                <%: Html.TextBoxFor(m => m.City)%>
                <%: Html.ValidationMessageFor(m => m.City)%>
            </li>
            <li>
                <%: Html.LabelFor(m => m.Country) %>
            </li>
            <li>
                <!-- <select id="Select1" name="state" onChange="change_country(this.value)" > -->
                <select id="country" name="Country"  >
                    <option value="null">Select a Country</option>
                    <option value="AX">&#197;land Islands</option>
                    <option value="AF">Afghanistan</option>
                    <option value="AL">Albania</option>
                    <option value="DZ">Algeria</option>
                    <option value="AS">American Samoa</option>
                    <option value="AD">Andorra</option>
                    <option value="AO">Angola</option>
                    <option value="AI">Anguilla</option>
                    <option value="AQ">Antarctica</option>
                    <option value="AG">Antigua And Barbuda</option>
                    <option value="AR">Argentina</option>
                    <option value="AM">Armenia</option>
                    <option value="AW">Aruba</option>
                    <option value="AU">Australia</option>
                    <option value="AT">Austria</option>
                    <option value="AZ">Azerbaijan</option>
                    <option value="BS">Bahamas</option>
                    <option value="BH">Bahrain</option>
                    <option value="BD">Bangladesh</option>
                    <option value="BB">Barbados</option>
                    <option value="BY">Belarus</option>
                    <option value="BE">Belgium</option>
                    <option value="BZ">Belize</option>
                    <option value="BJ">Benin</option>
                    <option value="BM">Bermuda</option>
                    <option value="BT">Bhutan</option>
                    <option value="BO">Bolivia</option>
                    <option value="BA">Bosnia and Herzegovina</option>
                    <option value="BW">Botswana</option>
                    <option value="BV">Bouvet Island</option>
                    <option value="BR">Brazil</option>
                    <option value="IO">British Indian Ocean Territory</option>
                    <option value="BN">Brunei</option>
                    <option value="BG">Bulgaria</option>
                    <option value="BF">Burkina Faso</option>
                    <option value="BI">Burundi</option>
                    <option value="KH">Cambodia</option>
                    <option value="CM">Cameroon</option>
                    <option value="CA">Canada</option>
                    <option value="CV">Cape Verde</option>
                    <option value="KY">Cayman Islands</option>
                    <option value="CF">Central African Republic</option>
                    <option value="TD">Chad</option>
                    <option value="CL">Chile</option>
                    <option value="CN">China</option>
                    <option value="CX">Christmas Island</option>
                    <option value="CC">Cocos (Keeling) Islands</option>
                    <option value="CO">Colombia</option>
                    <option value="KM">Comoros</option>
                    <option value="CG">Congo</option>
                    <option value="CD">Congo, Democractic Republic</option>
                    <option value="CK">Cook Islands</option>
                    <option value="CR">Costa Rica</option>
                    <option value="CI">Cote D'Ivoire (Ivory Coast)</option>
                    <option value="HR">Croatia (Hrvatska)</option>
                    <option value="CU">Cuba</option>
                    <option value="CY">Cyprus</option>
                    <option value="CZ">Czech Republic</option>
                    <option value="DK">Denmark</option>
                    <option value="DJ">Djibouti</option>
                    <option value="DM">Dominica</option>
                    <option value="DO">Dominican Republic</option>
                    <option value="TP">East Timor</option>
                    <option value="EC">Ecuador</option>
                    <option value="EG">Egypt</option>
                    <option value="SV">El Salvador</option>
                    <option value="GQ">Equatorial Guinea</option>
                    <option value="ER">Eritrea</option>
                    <option value="EE">Estonia</option>
                    <option value="ET">Ethiopia</option>
                    <option value="FK">Falkland Islands (Islas Malvinas)</option>
                    <option value="FO">Faroe Islands</option>
                    <option value="FJ">Fiji Islands</option>
                    <option value="FI">Finland</option>
                    <option value="FR">France</option>
                    <option value="FX">France, Metropolitan</option>
                    <option value="GF">French Guiana</option>
                    <option value="PF">French Polynesia</option>
                    <option value="TF">French Southern Territories</option>
                    <option value="GA">Gabon</option>
                    <option value="GM">Gambia, The</option>
                    <option value="GE">Georgia</option>
                    <option value="DE">Germany</option>
                    <option value="GH">Ghana</option>
                    <option value="GI">Gibraltar</option>
                    <option value="GR">Greece</option>
                    <option value="GL">Greenland</option>
                    <option value="GD">Grenada</option>
                    <option value="GP">Guadeloupe</option>
                    <option value="GU">Guam</option>
                    <option value="GT">Guatemala</option>
                    <option value="GG">Guernsey</option>
                    <option value="GN">Guinea</option>
                    <option value="GW">Guinea-Bissau</option>
                    <option value="GY">Guyana</option>
                    <option value="HT">Haiti</option>
                    <option value="HM">Heard and McDonald Islands</option>
                    <option value="HN">Honduras</option>
                    <option value="HK">Hong Kong S.A.R.</option>
                    <option value="HU">Hungary</option>
                    <option value="IS">Iceland</option>
                    <option value="IN">India</option>
                    <option value="ID">Indonesia</option>
                    <option value="IR">Iran</option>
                    <option value="IQ">Iraq</option>
                    <option value="IE">Ireland</option>
                    <option value="IM">Isle of Man</option>
                    <option value="IL">Israel</option>
                    <option value="IT">Italy</option>
                    <option value="JM">Jamaica</option>
                    <option value="JP">Japan</option>
                    <option value="JE">Jersey</option>
                    <option value="JO">Jordan</option>
                    <option value="KZ">Kazakhstan</option>
                    <option value="KE">Kenya</option>
                    <option value="KI">Kiribati</option>
                    <option value="KR">Korea</option>
                    <option value="KP">Korea, North</option>
                    <option value="KW">Kuwait</option>
                    <option value="KG">Kyrgyzstan</option>
                    <option value="LA">Laos</option>
                    <option value="LV">Latvia</option>
                    <option value="LB">Lebanon</option>
                    <option value="LS">Lesotho</option>
                    <option value="LR">Liberia</option>
                    <option value="LY">Libya</option>
                    <option value="LI">Liechtenstein</option>
                    <option value="LT">Lithuania</option>
                    <option value="LU">Luxembourg</option>
                    <option value="MO">Macau S.A.R.</option>
                    <option value="MK">Macedonia</option>
                    <option value="MG">Madagascar</option>
                    <option value="MW">Malawi</option>
                    <option value="MY">Malaysia</option>
                    <option value="MV">Maldives</option>
                    <option value="ML">Mali</option>
                    <option value="MT">Malta</option>
                    <option value="MH">Marshall Islands</option>
                    <option value="MQ">Martinique</option>
                    <option value="MR">Mauritania</option>
                    <option value="MU">Mauritius</option>
                    <option value="YT">Mayotte</option>
                    <option value="MX">Mexico</option>
                    <option value="FM">Micronesia</option>
                    <option value="MD">Moldova</option>
                    <option value="MC">Monaco</option>
                    <option value="MN">Mongolia</option>
                    <option value="ME">Montenegro</option>
                    <option value="MS">Montserrat</option>
                    <option value="MA">Morocco</option>
                    <option value="MZ">Mozambique</option>
                    <option value="MM">Myanmar</option>
                    <option value="NA">Namibia</option>
                    <option value="NR">Nauru</option>
                    <option value="NP">Nepal</option>
                    <option value="NL">Netherlands</option>
                    <option value="AN">Netherlands Antilles</option>
                    <option value="NC">New Caledonia</option>
                    <option value="NZ">New Zealand</option>
                    <option value="NI">Nicaragua</option>
                    <option value="NE">Niger</option>
                    <option value="NG">Nigeria</option>
                    <option value="NU">Niue</option>
                    <option value="NF">Norfolk Island</option>
                    <option value="MP">Northern Mariana Islands</option>
                    <option value="NO">Norway</option>
                    <option value="OM">Oman</option>
                    <option value="PK">Pakistan</option>
                    <option value="PW">Palau</option>
                    <option value="PS">Palestinian Territory, Occupied</option>
                    <option value="PA">Panama</option>
                    <option value="PG">Papua new Guinea</option>
                    <option value="PY">Paraguay</option>
                    <option value="PE">Peru</option>
                    <option value="PH">Philippines</option>
                    <option value="PN">Pitcairn Island</option>
                    <option value="PL">Poland</option>
                    <option value="PT">Portugal</option>
                    <option value="PR">Puerto Rico</option>
                    <option value="QA">Qatar</option>
                    <option value="RE">Reunion</option>
                    <option value="RO">Romania</option>
                    <option value="RU">Russia</option>
                    <option value="RW">Rwanda</option>
                    <option value="SH">Saint Helena</option>
                    <option value="KN">Saint Kitts And Nevis</option>
                    <option value="LC">Saint Lucia</option>
                    <option value="PM">Saint Pierre and Miquelon</option>
                    <option value="VC">Saint Vincent And The Grenadines</option>
                    <option value="WS">Samoa</option>
                    <option value="SM">San Marino</option>
                    <option value="ST">Sao Tome and Principe</option>
                    <option value="SA">Saudi Arabia</option>
                    <option value="SN">Senegal</option>
                    <option value="RS">Serbia</option>
                    <option value="SC">Seychelles</option>
                    <option value="SL">Sierra Leone</option>
                    <option value="SG">Singapore</option>
                    <option value="SK">Slovakia</option>
                    <option value="SI">Slovenia</option>
                    <option value="SB">Solomon Islands</option>
                    <option value="SO">Somalia</option>
                    <option value="ZA">South Africa</option>
                    <option value="GS">South Georgia And The South Sandwich Islands</option>
                    <option value="ES">Spain</option>
                    <option value="LK">Sri Lanka</option>
                    <option value="SD">Sudan</option>
                    <option value="SR">Suriname</option>
                    <option value="SJ">Svalbard And Jan Mayen Islands</option>
                    <option value="SZ">Swaziland</option>
                    <option value="SE">Sweden</option>
                    <option value="CH">Switzerland</option>
                    <option value="SY">Syria</option>
                    <option value="TW">Taiwan</option>
                    <option value="TJ">Tajikistan</option>
                    <option value="TZ">Tanzania</option>
                    <option value="TH">Thailand</option>
                    <option value="TL">Timor-Leste</option>
                    <option value="TG">Togo</option>
                    <option value="TK">Tokelau</option>
                    <option value="TO">Tonga</option>
                    <option value="TT">Trinidad And Tobago</option>
                    <option value="TN">Tunisia</option>
                    <option value="TR">Turkey</option>
                    <option value="TM">Turkmenistan</option>
                    <option value="TC">Turks And Caicos Islands</option>
                    <option value="TV">Tuvalu</option>
                    <option value="UG">Uganda</option>
                    <option value="UA">Ukraine</option>
                    <option value="AE">United Arab Emirates</option>
                    <option value="GB">United Kingdom</option>
                    <option value="US">United States</option>
                    <option value="UM">United States Minor Outlying Islands</option>
                    <option value="UY">Uruguay</option>
                    <option value="UZ">Uzbekistan</option>
                    <option value="VU">Vanuatu</option>
                    <option value="VA">Vatican City State (Holy See)</option>
                    <option value="VE">Venezuela</option>
                    <option value="VN">Vietnam</option>
                    <option value="VG">Virgin Islands (British)</option>
                    <option value="VI">Virgin Islands (US)</option>
                    <option value="WF">Wallis And Futuna Islands</option>
                    <option value="EH">WESTERN SAHARA</option>
                    <option value="YE">Yemen</option>
                    <option value="ZM">Zambia</option>
                    <option value="ZW">Zimbabwe</option>
                </select>
                <%: Html.ValidationMessageFor(m => m.Country)%>
            </li>
            <li>
                <%: Html.LabelFor(m => m.State) %>
            </li>
            <li>
               <select name="State" >
                    <option value="null">Select a State</option>
                    <option value="TN">Tamil Nadu</option>
                </select>
                <span id="other_state_text" >
                        </span>
                <%: Html.ValidationMessageFor(m => m.State)%>
            </li>
            <li>
                <%: Html.LabelFor(m => m.Zip) %>
            </li>
            <li>
                <%: Html.TextBoxFor(m => m.Zip)%>
                <%: Html.ValidationMessageFor(m => m.Zip)%>
            </li>
            <li>
                <%: Html.LabelFor(m => m.PhoneCc) %>
            </li>
            <li>
                <%: Html.TextBoxFor(m => m.PhoneCc)%>
                <%: Html.ValidationMessageFor(m => m.PhoneCc)%>
            </li>
            <li>
                <%: Html.LabelFor(m => m.Mobile) %>
            </li>
            <li>
                <%: Html.TextAreaFor(m => m.Mobile)%>
                <%: Html.ValidationMessageFor(m => m.Mobile)%>
            </li>
            <li>
                <input type="submit" value="Register" />
            </li>
       </ul>
    <% } %>
    <script type="text/javascript" language="javascript">
        var countryCodeList = new Array();
        countryCodeList['AX'] = '358';
        countryCodeList['AF'] = '93';
        countryCodeList['AL'] = '355';
        countryCodeList['DZ'] = '213';
        countryCodeList['AS'] = '684';
        countryCodeList['AD'] = '376';
        countryCodeList['AO'] = '244';
        countryCodeList['AI'] = '1';
        countryCodeList['AQ'] = '672';
        countryCodeList['AG'] = '1';
        countryCodeList['AR'] = '54';
        countryCodeList['AM'] = '374';
        countryCodeList['AW'] = '297';
        countryCodeList['AU'] = '61';
        countryCodeList['AT'] = '43';
        countryCodeList['AZ'] = '994';
        countryCodeList['BS'] = '1';
        countryCodeList['BH'] = '973';
        countryCodeList['BD'] = '880';
        countryCodeList['BB'] = '1';
        countryCodeList['BY'] = '375';
        countryCodeList['BE'] = '32';
        countryCodeList['BZ'] = '501';
        countryCodeList['BJ'] = '229';
        countryCodeList['BM'] = '1';
        countryCodeList['BT'] = '975';
        countryCodeList['BO'] = '591';
        countryCodeList['BA'] = '387';
        countryCodeList['BW'] = '267';
        countryCodeList['BV'] = '47';
        countryCodeList['BR'] = '55';
        countryCodeList['IO'] = '246';
        countryCodeList['BN'] = '673';
        countryCodeList['BG'] = '359';
        countryCodeList['BF'] = '226';
        countryCodeList['BI'] = '257';
        countryCodeList['KH'] = '855';
        countryCodeList['CM'] = '237';
        countryCodeList['CA'] = '1';
        countryCodeList[''] = '238';
        countryCodeList['KY'] = '1';
        countryCodeList['CF'] = '236';
        countryCodeList['TD'] = '235';
        countryCodeList['CL'] = '56';
        countryCodeList['CN'] = '86';
        countryCodeList['CX'] = '';
        countryCodeList['CC'] = '';
        countryCodeList['CO'] = '57';
        countryCodeList['KM'] = '269';
        countryCodeList['CG'] = '242';
        countryCodeList['CD'] = '243';
        countryCodeList['CK'] = '682';
        countryCodeList['CR'] = '506';
        countryCodeList['CI'] = '225';
        countryCodeList['HR'] = '385';
        countryCodeList['CU'] = '53';
        countryCodeList['CY'] = '357';
        countryCodeList['CZ'] = '420';
        countryCodeList['DK'] = '45';
        countryCodeList['DJ'] = '253';
        countryCodeList['DM'] = '1';
        countryCodeList['DO'] = '1';
        countryCodeList['EC'] = '593';
        countryCodeList['EG'] = '20';
        countryCodeList['SV'] = '503';
        countryCodeList['GQ'] = '240';
        countryCodeList['ER'] = '291';
        countryCodeList['EE'] = '201';
        countryCodeList['ET'] = '251';
        countryCodeList['FK'] = '500';
        countryCodeList['FO'] = '298';
        countryCodeList['FJ'] = '679';
        countryCodeList['FI'] = '358';
        countryCodeList['FR'] = '33';
        countryCodeList['FX'] = '33';
        countryCodeList['GF'] = '594';
        countryCodeList['PF'] = '689';
        countryCodeList['TF'] = '33';
        countryCodeList['GA'] = '241';
        countryCodeList['GM'] = '220';
        countryCodeList['GE'] = '995';
        countryCodeList['DE'] = '49';
        countryCodeList['GG'] = '44';
        countryCodeList['GH'] = '233';
        countryCodeList['GI'] = '350';
        countryCodeList['GR'] = '30';
        countryCodeList['GL'] = '299';
        countryCodeList['GD'] = '1';
        countryCodeList['GP'] = '590';
        countryCodeList['GU'] = '1';
        countryCodeList['GT'] = '502';
        countryCodeList['GN'] = '224';
        countryCodeList['GW'] = '245';
        countryCodeList['GY'] = '592';
        countryCodeList['HT'] = '509';
        countryCodeList['HM'] = '1';
        countryCodeList['HN'] = '504';
        countryCodeList['HK'] = '852';
        countryCodeList['HU'] = '36';
        countryCodeList['IS'] = '354';
        countryCodeList['IN'] = '91';
        countryCodeList['ID'] = '62';
        countryCodeList['IR'] = '98';
        countryCodeList['IQ'] = '964';
        countryCodeList['IE'] = '353';
        countryCodeList['IL'] = '972';
        countryCodeList['IT'] = '39';
        countryCodeList['JM'] = '1';
        countryCodeList['JP'] = '81';
        countryCodeList['JO'] = '962';
        countryCodeList['KZ'] = '7';
        countryCodeList['KE'] = '254';
        countryCodeList['KI'] = '686';
        countryCodeList['KR'] = '82';
        countryCodeList['KP'] = '850';
        countryCodeList['KW'] = '965';
        countryCodeList['KG'] = '996';
        countryCodeList['LA'] = '856';
        countryCodeList['LV'] = '371';
        countryCodeList['LB'] = '961';
        countryCodeList['LS'] = '266';
        countryCodeList['LR'] = '231';
        countryCodeList['LY'] = '218';
        countryCodeList['LI'] = '423';
        countryCodeList['LT'] = '370';
        countryCodeList['LU'] = '352';
        countryCodeList['MO'] = '853';
        countryCodeList['MK'] = '389';
        countryCodeList['MG'] = '261';
        countryCodeList['MW'] = '265';
        countryCodeList['MY'] = '60';
        countryCodeList['MV'] = '960';
        countryCodeList['ML'] = '223';
        countryCodeList['MT'] = '356';
        countryCodeList['MH'] = '692';
        countryCodeList['MQ'] = '596';
        countryCodeList['MR'] = '222';
        countryCodeList['MU'] = '230';
        countryCodeList['YT'] = '269';
        countryCodeList['MX'] = '52';
        countryCodeList['FM'] = '691';
        countryCodeList['MD'] = '373';
        countryCodeList['MC'] = '377';
        countryCodeList['MN'] = '976';
        countryCodeList['ME'] = '382';
        countryCodeList['MS'] = '1';
        countryCodeList['MA'] = '212';
        countryCodeList['MZ'] = '258';
        countryCodeList['MM'] = '95';
        countryCodeList['NA'] = '264';
        countryCodeList['NR'] = '674';
        countryCodeList['NP'] = '977';
        countryCodeList['NL'] = '31';
        countryCodeList['AN'] = '599';
        countryCodeList['NC'] = '687';
        countryCodeList['NZ'] = '64';
        countryCodeList['NI'] = '505';
        countryCodeList['NE'] = '227';
        countryCodeList['NG'] = '234';
        countryCodeList['NU'] = '683';
        countryCodeList['NF'] = '6723';
        countryCodeList['MP'] = '1';
        countryCodeList['NO'] = '47';
        countryCodeList['OM'] = '968';
        countryCodeList['PK'] = '92';
        countryCodeList['PW'] = '680';
        countryCodeList['PS'] = '970';
        countryCodeList['PA'] = '507';
        countryCodeList['PG'] = '675';
        countryCodeList['PY'] = '595';
        countryCodeList['PE'] = '51';
        countryCodeList['PH'] = '63';
        countryCodeList['PN'] = '870';
        countryCodeList['PL'] = '48';
        countryCodeList['PT'] = '351';
        countryCodeList['PR'] = '1';
        countryCodeList['QA'] = '974';
        countryCodeList['RE'] = '262';
        countryCodeList['RO'] = '40';
        countryCodeList['RU'] = '7';
        countryCodeList['RW'] = '250';
        countryCodeList['SH'] = '290';
        countryCodeList['KN'] = '1';
        countryCodeList['LC'] = '1';
        countryCodeList['PM'] = '508';
        countryCodeList['VC'] = '1';
        countryCodeList['WS'] = '685';
        countryCodeList['SM'] = '378';
        countryCodeList['ST'] = '239';
        countryCodeList['SA'] = '966';
        countryCodeList['SN'] = '221';
        countryCodeList['RS'] = '381';
        countryCodeList['SC'] = '248';
        countryCodeList['SL'] = '232';
        countryCodeList['SG'] = '65';
        countryCodeList['SK'] = '421';
        countryCodeList['SI'] = '386';
        countryCodeList['SB'] = '677';
        countryCodeList['SO'] = '252';
        countryCodeList['ZA'] = '27';
        countryCodeList['GS'] = '44';
        countryCodeList['ES'] = '34';
        countryCodeList['LK'] = '94';
        countryCodeList['SD'] = '249';
        countryCodeList['SR'] = '597';
        countryCodeList['SJ'] = '79';
        countryCodeList['SZ'] = '268';
        countryCodeList['SE'] = '46';
        countryCodeList['CH'] = '41';
        countryCodeList['SY'] = '963';
        countryCodeList['TW'] = '886';
        countryCodeList['TJ'] = '992';
        countryCodeList['TZ'] = '255';
        countryCodeList['TH'] = '66';
        countryCodeList['TL'] = '670';
        countryCodeList['TG'] = '228';
        countryCodeList['TK'] = '690';
        countryCodeList['TO'] = '676';
        countryCodeList['TT'] = '1';
        countryCodeList['TN'] = '216';
        countryCodeList['TR'] = '90';
        countryCodeList['TM'] = '993';
        countryCodeList['TC'] = '1';
        countryCodeList['TV'] = '688';
        countryCodeList['UG'] = '256';
        countryCodeList['UA'] = '380';
        countryCodeList['AE'] = '971';
        countryCodeList['GB'] = '44';
        countryCodeList['US'] = '1';
        countryCodeList['UM'] = '1';
        countryCodeList['UY'] = '598';
        countryCodeList['UZ'] = '998';
        countryCodeList['VU'] = '678';
        countryCodeList['VA'] = '39';
        countryCodeList['VE'] = '58';
        countryCodeList['VN'] = '84';
        countryCodeList['VG'] = '1284';
        countryCodeList['VI'] = '1340';
        countryCodeList['WF'] = '681';
        countryCodeList['EH'] = '212';
        countryCodeList['YE'] = '967';
        countryCodeList['ZM'] = '260';
        countryCodeList['ZW'] = '263';
</script>
    <script src="/Scripts/state_list.js" type="text/javascript"></script>