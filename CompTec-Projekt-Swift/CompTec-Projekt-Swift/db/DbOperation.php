<?php
class DbOperation
{
    private $conn;
    
    //Constructor
    function __construct()
    {
        require_once dirname(__FILE__) . '/Config.php';
        require_once dirname(__FILE__) . '/DbConnect.php';
        // opening db connection
        $db = new DbConnect();
        $this->conn = $db->connect();
    }
    
    //Function to create a new user
    public function createTeam($username, $password, $combatxp, $firemakingxp, $woodcuttingxp, $questpoint)
    {
        $stmt = $this->conn->prepare("INSERT INTO users(username, password, combatxp, firemakingxp, woodcuttingxp, questpoint) values(?,?,?,?,?,?)");
        $stmt->bind_param("ssiiii", $username, $password, $combatxp, $firemakingxp, $woodcuttingxp, $questpoint);
        $result = $stmt->execute();
        $stmt->close();
        if ($result) {
            return true;
        } else {
            return false;
        }
    }
    
}
?>
