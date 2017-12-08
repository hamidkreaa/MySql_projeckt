<?php
if( isset($_POST['query']) )
{
	//$_POST['dbname'];$_POST['user'];$_POST['password'];
	$db = new DB();
	echo json_encode($db->query($_POST['query']));
}
else
	require_once 'videothek.html';


class DB
{
	private $host = 'localhost';
	private $username = 'root';
	private $password = '';
	private $dbname = 'videothek_hamid';

	private $db = NULL;
	
	public function __construct()
	{
		$this->db = new PDO( "mysql:host=$this->host;dbname=$this->dbname", $this->username, $this->password );
		$this->db->setAttribute( PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION );
	}

	
	public function query( $query )
	{
		$result = array();
		try
		{
			$stmt = $this->db->prepare( $query );
			$stmt->execute();
			$stmt->setFetchMode(PDO::FETCH_ASSOC);
			$result = $stmt->fetchAll();
			if( !$result )
				$result = array();
		}
		catch(PDOException $e) 
		{
			echo "Error: " . $e->getMessage();
		}	

		return $result;
	}
	
}

?>