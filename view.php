<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Transfer Money</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css">
    <link rel="stylesheet" href="table.css">
    <style>
  .one {
     color: #fff !important;
     background-color: #29292c !important;
  }
   footer {
    background-color: #009ca1e3;
    color: #f5f5f5;
    padding: 50px;
  }
  footer a {
    color: #f5f5f5;
    padding-left: 5px;
    padding-right: 5px;
  }
  footer a:hover {
    color: blue;
    text-decoration: none;
  }  
</style>
</head>

<body>
<?php
    include 'conf.php';
    $sql = "SELECT * FROM customers";
    $result = mysqli_query($conn,$sql);
?>

<?php
  include 'nav.php';
?>

<div class="container">
        <h2 class="text-center pt-4"><i>Select a Customer you wish to transfer money from</i></h2>
        <br>
            <div class="row">
                <div class="col">
                    <div class="table-responsive-sm">
                    <table class="table table-hover table-sm table-striped table-condensed table-bordered">
                        <thead>
                            <tr>
                            <th scope="col" class="text-center py-2">S_No</th>
                            <th scope="col" class="text-center py-2">Name</th>
                            <th scope="col" class="text-center py-2">E-Mail</th>
                            <th scope="col" class="text-center py-2">Current Balance</th>
                            <th scope="col" class="text-center py-2">Details</th>
                            </tr>
                        </thead>
                        <tbody>
                <?php 
                    while($rows=mysqli_fetch_assoc($result)){
                ?>
                    <tr>
                        <td class="py-2"><?php echo $rows['id'] ?></td>
                        <td class="py-2"><?php echo $rows['Name']?></td>
                        <td class="py-2"><?php echo $rows['email']?></td>
                        <td class="py-2"><?php echo $rows['Balance']?></td>
                        <td><a href="select.php?id= <?php echo $rows['id'] ;?>"><button type="button">Select</button></a></td> 
                    </tr>
                <?php
                    }
                ?>
            
                        </tbody>
                    </table>
                  </div>
              </div>
          </div> 
</div>

<!-- Footer -->
<footer id="ludo" class="text-center">
  <a href="#"><i class="fa fa-facebook-official"></i></a>
  <a href="#"><i class="fa fa-linkedin"></i></a>
  <a href="#"><i class="fa fa-github"></i></a>
  <p class="w3-medium">Internship Project by M.D.H. @TheSparksFoundation</p>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script> 
</body>
</html>