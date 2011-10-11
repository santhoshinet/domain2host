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
                $('body').html("<span style='color:BLACK' >please wait..............</span>");
                window.location = "/DomainChecking/" + domain + "/" + domains;
            }
        }
    });
});