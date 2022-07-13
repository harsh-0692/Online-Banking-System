<?php

session_start();

//check for employee login
if (!isset($_SESSION['empfname'])) {
    header("Location: ../index.php");
}

require_once("../backend/connection.php");

if (isset($_POST['creditfund'])) {

    $account_no = mysqli_real_escape_string($conn,$_POST['acnum']);
   //find the customer
    $sql_query = "SELECT * FROM customerdata WHERE account_no='$account_no' LIMIT 1";

    $find = mysqli_query($conn,$sql_query);

    //if found then get balance
    if ($result = mysqli_fetch_assoc($find)) {
        $amount = $_POST['amount'] + $result['balance'];
        
        //update balance
        $query = "UPDATE `customerdata` SET balance='$amount' WHERE account_no='$account_no' LIMIT 1";
        $result = mysqli_query($conn,$query);

        echo "<script> 
                alert('Fund Credited Successfuly!');
                window.location.href='../employee/employee-dashboard.php';     
            </script>";

    }else{
        //if user not found
        echo "<script> 
                alert('Customer Not Found!'); 
                window.location.href='../employee/employee-dashboard.php';
            </script>";
 
    }
}

?>