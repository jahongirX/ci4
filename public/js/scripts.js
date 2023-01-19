$(document).ready(function () {
    $('.update_product').on('click',function (e) {
        e.preventDefault();
        const updateModal = new bootstrap.Modal('#update_product', {})
        let id = $(this).data('id');
        $.ajax({
            url: "product/update/" + id,
            success: function (data) {
                $('#update_product .modal-body').html(data)
                updateModal.show();
            },
            error: function () {

            }
        })


    })
})