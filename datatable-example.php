<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <header>
        <title>Sample Code</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta content="Sample Code" name="description" />
        <meta content="Sample Code" name="Sample Code" />
        <!-- App favicon -->
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
            integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
            crossorigin="anonymous"
        />
        <script
            src="https://code.jquery.com/jquery-3.4.1.min.js"
            integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
            crossorigin="anonymous"></script>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.20/css/jquery.dataTables.css">

        <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.js"></script>

        <script type="text/javascript">
            $(document).ready(function()
            {
                $('#tbl').DataTable( {
                    dom: 'lBfrtSip',
                    paginate: true,
                    lengthMenu : [[10, 25, 50, 100, -1], [10, 25, 50, 100, "All"]],
                    buttons: [{extend: 'copy', exportOptions: { columns: ''}}, {extend: 'csv', exportOptions: { columns: ''}}, {extend: 'excel', exportOptions: { columns: ''}}, {extend: 'pdf', exportOptions: { columns: ''}}, {extend: 'print', exportOptions: { columns: ''}}, 'colvis', 'selectAll', 'selectNone'],
                    searching:true,
                    retrieve: true,
                    serverSide: true,
                    ajax: "api/get-all-states.php",
                    deferRender: true,
                    // Uncomment Below code when there is more column in table
                    // responsive: {
                    //     details: { display: $.fn.dataTable.Responsive.display.modal(
                    //             { header: function ( row )
                    //                 {
                    //                 var data = row.data();
                    //                 return 'Details of '+data[2];
                    //                 }
                    //             }),
                    //             renderer: $.fn.dataTable.Responsive.renderer.tableAll( {tableClass: 'table'})
                    //         }
                    //     },
                    columnDefs: [
                        { "orderable": false, "className": 'select-checkbox', 'selectRow': true, "targets": [1]},
                    ],
                    select: { style: 'multi', selector: 'td:nth-child(1)'},
                    select: { style: 'multi'},
                    destroy:false,
                    drawCallback:function(){$(".dataTables_paginate > .pagination").addClass("pagination-rounded")},
                });
            });
        </script>

    </header>
<body>

<div class="container">
    <div class="row">
        <div class="col-12">
            <div class="card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <table class="table table-centered display compact nowrap" id="tbl" >
                                <thead class="thead-dark text-center">
                                <tr>
                                    <th> Sr.No. </th>
                                    <th> </th>
                                    <th> Name </th>
                                </tr>
                                </thead>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://unpkg.com/react/umd/react.production.min.js" crossorigin />
<script
    src="https://unpkg.com/react-dom/umd/react-dom.production.min.js"
    crossorigin
/>
<script
    src="https://unpkg.com/react-bootstrap@next/dist/react-bootstrap.min.js"
    crossorigin
/>
</body>
</html>
