$(document).ready(function () {

//    $('#fast_order').colorbox({href: "#fast_order_form", inline: true, width: "650px", height: "330px", title: " "});
//    $('#fast_order').divbox({caption: false, width: 650, height: 330, type: 'element'});

    $('#fast_order').fancybox({
        inline: true, 
        type: 'inline', 
        width: "650px", 
        height: "330px", 
        title: "",
        closeClick: false, // prevents closing when clicking INSIDE fancybox
        helpers: {
            overlay: {closeClick: false} // prevents closing when clicking OUTSIDE fancybox
        }
    });

    $('#fast_order_form .fast_order_center button').click(function () {
        var product_name = $('#product_name').val();
        var product_price = $('#product_price').val();
        var customer_name = $('#customer_name').val();
        var customer_phone = $('#customer_phone').val();
        var customer_message = $('#customer_message').val();
        var product_model = $('#product_model').val();
        var product_url = $('#product_url').val();
        $('#fast_order_result').html('Обрабатываем введенные данные...');
        $('#fast_order_button').hide();
        $.post('/fast_order.php', {'product_name': product_name, 'product_price': product_price, 'customer_name': customer_name, 'customer_phone': customer_phone, 'customer_message': customer_message, 'product_model': product_model, 'product_url': product_url}, function (data) {

            if (data == 'email_error') {
                $('#fast_order_result').html('<span class="fast_order_error">Произошла ошибка при отправке сообщения. Пожалуйста, сообщите об этом ажминистратору.</span>');
                $('#fast_order_button').show();
                return false;
            }
            if (data == 'empty') {
                $('#fast_order_result').html('<span class="fast_order_error">Пожалуйста, укажите Ваше имя и телефон, иначе мы не сможем Вам перезвонить!</span>');
                $('#fast_order_button').show();
                return false;
            }
            $('#fast_order_button').show();
            $('#fast_order_result').html('<span class="fast_order_success">Ваш заказ успешно оформлен!</span><br /><span>Мы обязательно Вам перезвоним.</span>');

            $('#fast_order_button span').html('Закрыть окно');
            $('#fast_order_button').off("click").click(function () {
                $.fancybox.close();
                $('#fast_order').hide();
                return false;
            })

        });
    });
});