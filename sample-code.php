<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<header>
<title>Sample Code</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta content="Anvi Industry, Palus, Maharashtra Steel, 416310, Sangli, Maharashtra, India, Kuldip Gavli" name="description" />
<meta content="Anvi-Industry" name="Anvi-Industry" />
<!-- App favicon -->
<link rel="shortcut icon" href="images/newlogo.jpg" />
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
    $('#sample-test').select2();
});
</script>
</header>
<body>
<!-- PHP Code Start -->
<?php
    if (isset($_POST['submit']))
    {
        print_r($_POST);
        
        extract($_POST);

        include 'dbconnection.php';
        
        echo $sql = "insert into uuser(name, mobile, email, position, address) values 
        ('$txtUname', '$txtMobile', '$txtEmail', '$txtPosition', '$txtAddress')";
        $result = mysqli_query($db, $sql);
        if($result)
        {
            ?>
                <script language="javascript">
                    alert("Value Inserted");
                </script>
            <?php
        }
        else
        {
            ?>
                <script language="javascript">
                    alert("Please try again");
                </script>
            <?php
        }
       
    }
?>
<!-- PHP Code End -->

<div class="container">
  <div class="row">
	<div class="col-12">
        <form method="post" action="<?php echo $_SERVER["PHP_SELF"] ;?>">
            <div class="card">
                <div class="card-header">
                User Details
                </div>
                <div class="card-body">
                <div class="row">
                    <div class="col-lg-6">
                    <div class="form-group row">
                        <label class="col-lg-4 col-form-label text-right">Name</label>
                        <div class="col-lg-8">
                        <input type="text" id="txtUname" name="txtUname" class="form-control"
                                placeholder="User Name" required/>
                        </div>
                    </div>
                    
                    <div class="form-group row">
                        <label class="col-lg-4 col-form-label text-right">Mobile</label>
                        <div class="col-lg-8">
                        <input type="text" id="txtMobile" name="txtMobile" class="form-control"
                                placeholder="Mobile Number" required/>
                        </div>
                    </div>
                        <div class="form-group row">
                        <label class="col-lg-4 col-form-label text-right">Email</label>
                        <div class="col-lg-8">
                        <input type="text" id="txtEmail" name="txtEmail" class="form-control"
                                placeholder="Email" required/>
                        </div>
                    </div>
                    </div>
                    <div class="col-lg-6">
                    <div class="form-group row">
                        <label class="col-lg-4 col-form-label text-right">Position</label>
                        <div class="col-lg-8">
                        <input type="text" id="txtPosition" name="txtPosition" class="form-control"
                                placeholder="Position" required/>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-lg-4 col-form-label text-right">Address</label>
                        <div class="col-lg-8">
                            <textarea class="common-textarea form-control" name="txtAddress" placeholder="Enter Address" onfocus="this.placeholder = ''" onblur="this.placeholder = 'Enter address'" required=""></textarea>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label class="col-lg-4 col-form-label text-right">States</label>
                            <div class="col-lg-8">
                                <select  id='sample-test' name="state">
                                    <option value="MH">Maharashtra</option>
                                    <option value="DL">Delhi</option>
                                </select>
                            </div>   
                    </div>
                    <div class="form-group mb-0 text-center">
                        <button class="btn btn-warning" type="submit" name="submit"> Submit </button>
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
