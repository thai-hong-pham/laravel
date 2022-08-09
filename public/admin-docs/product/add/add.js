$(function() {
    $(".tag_select_choose").select2({
        tags: true,
        tokenSepartors: [',', ' ']
    })
    $(".select2_init").select2({
        placehoder: "Chọn danh mục",
        allowClear: true
    })
})
