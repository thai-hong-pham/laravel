$(function () {
    $(".tag_select_choose").select2({
        tags: true,
        tokenSepartors: [","],
    });
    $(".select2_init").select2({
        placehoder: "Chọn danh mục",
        allowClear: true,
    });
});
var options = {
    filebrowserImageBrowseUrl: '/laravel-filemanager?type=Images',
    filebrowserImageUploadUrl: '/laravel-filemanager/upload?type=Images&_token=',
    filebrowserBrowseUrl: '/laravel-filemanager?type=Files',
    filebrowserUploadUrl: '/laravel-filemanager/upload?type=Files&_token='
  };


