<?php
require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'DAO.php';
class ActivityDAO extends DAO {
	
	public function selectAll($language) {
		$sql = "SELECT * FROM inhoud 
				INNER JOIN inhoud_taal ON inhoud.id = inhoudId
				WHERE actief = 1 AND inhoud_taal.taal = :language ORDER BY inhoud_taal.naam ASC";
				
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':language', $language);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}

	public function selectById($id,$language) {
	
		$sql = "SELECT * FROM `inhoud`
				INNER JOIN `inhoud_taal` 
				ON id = inhoudId
				WHERE id = :id  AND taal=:language ";
		
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
		$stmt->bindValue(':language', $language);
		$stmt->execute();
		return $stmt->fetch(PDO::FETCH_ASSOC);
	}
	
	public function selectPricesByActivity($id,$language){
		
		$sql = "SELECT * FROM `inhoud_prijs` 
				INNER JOIN inhoud_prijs_taal
				ON id=prijsId
				WHERE activiteitId = :id AND typeId = 1 AND taal=:language ";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
		$stmt->bindValue(':language', $language);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}
	
	public function selectSupplementsByActivity($id,$language){
		
		$sql = "SELECT * FROM `inhoud_prijs` 
				INNER JOIN inhoud_prijs_taal
				ON id=prijsId
				WHERE activiteitId = :id AND typeId = 2 AND taal=:language ";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
		$stmt->bindValue(':language', $language);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}

	//get all activities with locationId x
	public function selectByLocation($id,$language){
	
		$sql = "SELECT * FROM inhoud_activiteit_locatie 
				INNER JOIN `inhoud` ON inhoud.id = activiteitId
				INNER JOIN `inhoud_taal` ON id = inhoudId
				WHERE id = :id  AND taal=:language ";
				
				
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
		$stmt->bindValue(':language', $language);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
		
		
		
	}

	//get all activities that belong to category with id x
	public function getByCategory($id,$language) {
		$sql = "SELECT * FROM inhoud 
				INNER JOIN `inhoud_taal` ON inhoud.id = inhoudId
				WHERE actief = 1 AND inhoud_taal.taal = :language AND categorieId=:id ORDER BY inhoud_taal.naam ASC";
		
		
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
		$stmt->bindValue(':language', $language);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}

	public function getByCategoryType($id){
		$sql = "SELECT * FROM (SELECT activiteitId,typeId from `inhoud_activiteit_categorie`) as type
				INNER JOIN inhoud_activiteit_categorie_type ON inhoud_activiteit_categorie_type.id = type.typeId
				WHERE typeId = :typeId ";

		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':typeId', $id);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}

	//get all regular prices by id (typeId = 1)
	public function getRegularPricesById($id){
		$sql = "SELECT * FROM inhoud_prijs
				WHERE activiteitId = :id AND typeId=1";

		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}
	
	//get all supplement prices by id (typeId = 2)
	public function getSupplementPricesById($id){
		$sql = "SELECT * FROM inhoud_prijs
				WHERE activiteitId = :id AND typeId=2";

		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}

	public function search($search) {
		$sql = "SELECT * FROM `inhoud`
				INNER JOIN `inhoud_taal` 
				ON id = inhoudId
				WHERE taal=:language AND (inhoud LIKE :search OR naam LIKE :search2) ORDER BY ID ASC";
		
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':search', '%' . $search . '%');
		$stmt->bindValue(':search2', '%' . $search . '%');
		$stmt->bindValue(':language', $_SESSION['session_taal']);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}


}