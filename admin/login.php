
 

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- Meta, title, CSS, favicons, etc. -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Furniture Admin | Login/Register</title>

    <!-- Bootstrap -->
    <link href="vendors/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="vendors/font-awesome/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="vendors/nprogress/nprogress.css" rel="stylesheet">
    <!-- Animate.css -->
    <link href="vendors/animate.css/animate.min.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="build/css/custom.min.css" rel="stylesheet">
  </head>

  <body class="login">
    <div>
      <a class="hiddenanchor" id="signup"></a>
      <a class="hiddenanchor" id="signin"></a>

      <div class="login_wrapper">
        <div class="animate form login_form">
          <section class="login_content">



 


<?php
$errors = [];
if (isset($_POST['login'])) {
  $username = $_POST['username'];
  $password = $_POST['password'];
  $pdo = new pdo("mysql:host=localhost;dbname=furniture_project", "root", "");
  $data = $pdo->query("select * from user where username='$username'");
  $user = $data->fetch(pdo::FETCH_ASSOC);
  session_start();
  $_SESSION['username'] = $username;
  //$_SESSION['name'] = $name;

  if ($user) {
    if ($user['password'] == $password) {
      header("Location:../index.php");
    } else {
      $errors['PassErr'] = "This password  doesnt match";
    }
  } else {
    $errors['UsernameErr'] = "This emial doesnt exist";
  }

}






?>








          
            <form  action="<?php echo $_SERVER['PHP_SELF']  ?>" method="POST">
              <h1>Login Form</h1>
              <div>
                <input type="text" class="form-control" name="username" placeholder="Username" required="" />
                <input type="hidden" value="<?php echo $user['name'] ?>" name="name">
                <span style="color:red"><?php if (isset($errors['UsernameErr'])) echo $errors['UsernameErr']  ?></span>
              </div>
              <div>
                <input type="password" class="form-control" name="password" placeholder="Password" required="" />
                <span style="color:red"><?php if (isset($errors['PassErr'])) echo $errors['PassErr']  ?></span>
              </div>
              <div>

              <button type="submit" name= "login" class="btn btn-success">Log in</button>
                <!-- <a class="btn btn-default submit" href="index.html">Log in</a> -->
                <a class="reset_pass" href="#">Lost your password?</a>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">New to site?
                  <a href="#signup" class="to_register"> Create Account </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-graduation-cap"></i></i> Furniture Admin</h1>
                  <p>©2016 All Rights Reserved. Furniture Admin is a Bootstrap 4 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>

        <div id="register" class="animate form registration_form">
          <section class="login_content">
            <?php
            $error=[];
            require("database.php");
            $db = new DB();
            $db->get_connection();
            if (isset($_POST['submit'])) {
              $name = $_POST['name'];
              $username = $_POST['username'];
              $email = $_POST['email'];
              $password = $_POST['password'];
              $uppercase = preg_match('@[A-Z]@', $password);
              $lowercase = preg_match('@[a-z]@', $password);
              $number    = preg_match('@[0-9]@', $password);
              $specialChars = preg_match('@[^\w]@', $password);
              if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
                $error['emailError'] = "please Enter A Valid Email";
              } else if (!$uppercase || !$lowercase || !$number || !$specialChars || strlen($password) < 8) {
                $error['passErr'] =  'Password should be at least 8 characters in length and should include at least one upper case letter, one number, and one special character.';
              } else {

                $db->insert("user", "name,username,email,password", "'$name','$username','$email','$password'");
              }
             // $db->insert("user", "name,username,email,password", "'$name','$username','$email','$password'");
              session_start();
				      $_SESSION['name'] = $name;
            }
           
            ?>
            <form method="POST" >
              <h1>Create Account</h1>
              <div>
                <input type="text" class="form-control" placeholder="Fullname" required="" name= "name" />
              </div>
              <div>
                <input type="text" class="form-control" placeholder="Username" name="username" required="" />
              </div>
              <div>
                <input type="text" class="form-control" name="email"   placeholder="Email" />
                <p><?php if (isset($error['emailError'])) echo $error['emailError']; ?></p>
              </div>
              <div>
                <input type="password" class="form-control"name="password" placeholder="Password"  />
                <p><?php if (isset($error['passErr'])) echo $error['passErr']  ?></p>
              </div>
              <div>
               
                <button type="submit" name= "submit" class="btn btn-success">Submit</button>
              </div>

              <div class="clearfix"></div>

              <div class="separator">
                <p class="change_link">Already a member ?
                  <a href="#signin" class="to_register"> Log in </a>
                </p>

                <div class="clearfix"></div>
                <br />

                <div>
                  <h1><i class="fa fa-graduation-cap"></i></i> Furniture Admin</h1>
                  <p>©2016 All Rights Reserved. Furniture Admin is a Bootstrap 4 template. Privacy and Terms</p>
                </div>
              </div>
            </form>
          </section>
        </div>
      </div>
    </div>
  </body>
</html>
