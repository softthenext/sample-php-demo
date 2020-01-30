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
<link href="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/css/select2.min.css" rel="stylesheet" />

<script
			  src="https://code.jquery.com/jquery-3.4.1.min.js"
			  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
			  crossorigin="anonymous"></script>
<script type="application/javascript">
    $(document).ready(function() {
    $('#comboCountry').select2();
    $('#comboState').select2();

    getCountries();
});

function getCountries()
{
    $.ajax(
        {
            url: "get-all-countries.php",
            type: 'GET',
            dataType:'json',
            success: function(data)
            {
                $.each(data, function(index)
                {
                    var newOption = new Option(data[index].text, data[index].id, false, false);
                    $('#comboCountry').append(newOption);
                });
            },
            error : function(request,error)
            {}
        }
    );
}

function getStates()
{
    var cid = document.getElementById("comboCountry");
    document.getElementById("comboState").length = 0;
    $.ajax(
        {
            url: "get-all-states-by-country.php",
            type: 'GET',
            data :
                {
                    'country_id' : cid.value
                },
            dataType:'json',
            success: function(data)
            {
                $.each(data, function(index)
                {
                    var newOption = new Option(data[index].text, data[index].id, false, false);
                    $('#comboState').append(newOption).trigger('change.select2');
                });
            },
            error : function(request,error)
            {}
        }
    );
}

</script>
</header>
<body>
<!-- PHP Code Start -->

<!-- PHP Code End -->

<div class="container">
  <div class="row">
	<div class="col-12">
        <form method="post" action="<?php echo $_SERVER["PHP_SELF"] ;?>">
            <div class="card">
                <div class="card-header">
                Sample Testing of Web Service using select2
                </div>
                <div class="card-body">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="form-group row">
                            <label class="col-lg-4 col-form-label text-right">Country</label>
                            <select id="comboCountry" name="comboCountry" class="col-lg-8 text-right" data-placeholder="Select Country" onchange="getStates()">
                            </select>
                        </div>
                        <div class="form-group row">
                            <label class="col-lg-4 col-form-label text-right">State</label>
                            <select id="comboState" class="col-lg-8 text-right" name="comboState" data-placeholder="Select State">
                            </select>
                        </div>
                    </div>
                </div>
            </div>
        </form>
	</div>
  </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/select2@4.0.13/dist/js/select2.min.js"></script>
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
