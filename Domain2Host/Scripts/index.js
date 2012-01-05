$(function () {
    $('.search_button').click(function () {
        if ($('#txtdomainsearchbox').validateText({ class: "errorinfo", alert: true })) {
            var domains = "";
            $('input[type="checkbox"]').each(function () {
                if ($(this).attr('checked'))
                    domains += $(this).attr('name') + ",";
            });
            if (domains == "")
                alert("Please select any domain extension to search");
            else {
                var domain = $('#txtdomainsearchbox').val();
                $('#footer').hide();
                $('#main').hide();
                $('#header').hide();
                $('#masthead').hide();
                var html = $('#TblPleaseWait').show();
                window.location = "/DomainChecking/" + domain + "/" + domains;
            }
        }
    });
});