// Initiate datatables in roles, tables, users page
(function () {
  "use strict";

  $("#dataTables-example").DataTable({
    responsive: true,
    pageLength: 6,
    lengthChange: false,
    bPaginate: true,
    searching: true,
    ordering: true,
    order: [],
  });
})();
