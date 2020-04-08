<?php
    header('Access-Control-Allow-Origin: *');
    date_default_timezone_set("Asia/Bangkok");
    
    //Get data in post format in varaibles.
    $username = $_POST["username"];

    //Create array variable too keep data and encode with json format.
    $response = array();
    
    //Connect to database
    $con = mysqli_connect("localhost", "root", "", "myuser");
    mysqli_set_charset($con, "utf8");

    //Write sql query and process query
    $sql = "SELECT * FROM user WHERE username = '$username'";
    $result = mysqli_query($con, $sql);
    
    //Check found data.
    if($result->num_rows >= 1){ //Case of found data.

        //Fetch data from database.
        $row = mysqli_fetch_array($result);

        //Keep data to variables.
        $username = $row["username"];
        $userEmail = $row["userEmail"];

        //Put data to array variable to process json encode in next strp
        $response["success"] = true;
        $response["status"] = "success";
        $response["message"] = "พบข้อมูล";
        $response["username"] = $username;
        $response["userEmail"] = $userEmail;


    }else{

        $response["success"] = false;
        $response["status"] = "danger";
        $response["message"] = "ไม่พบข้อมูล";

    }
    
    echo json_encode($response);
?>