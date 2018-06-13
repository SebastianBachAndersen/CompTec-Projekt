<?php
    
    //creating response array
    $response = array();
    
    if($_SERVER['REQUEST_METHOD']=='POST'){
        
        //getting values
        $username = $_POST['username'];
        $password = $_POST['password'];
        $combatxp = $_POST['combatxp'];
        $firemakingxp = $_POST['firemakingxp'];
        $woodcuttingxp = $_POST['woodcuttingxp'];
        $questpoint = $_POST['questpoint'];
        
        
        //including the db operation file
        require_once 'DbOperation.php';
        
        $db = new DbOperation();
        
        //inserting values
        if($db->createTeam($username,$password,$combatxp,$firemakingxp,$woodcuttingxp,$questpoint)){
            $response['error']=false;
            $response['message']='Team added successfully';
        }else{
            
            $response['error']=true;
            $response['message']='Could not add team';
        }
        
    }else{
        $response['error']=true;
        $response['message']='You are not authorized';
    }
    echo json_encode($response);
