// Call the dataTables jQuery plugin
// $(document).ready(function() {
//   $('#dataTable').DataTable();
// });
$('#dataTable_length select').change(function (){
    var length = $(this).val();
    window.location.href=""
})
