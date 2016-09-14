<?php
require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'DAO.php';
class ActivityDAO extends DAO {
	
	public function selectAll() {
		$sql = "SELECT * FROM `inhoud` WHERE `actief` = 1 ORDER BY ID ASC";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}

	public function selectById($id) {
		$sql = "SELECT * FROM `inhoud` WHERE `id` = :id ";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
		$stmt->execute();
		return $stmt->fetch(PDO::FETCH_ASSOC);
	}

	//get all activities with locationId x
	public function selectByLocation($id){
		
		$sql = "SELECT * FROM (SELECT activiteitId,locatieId from `inhoud_activiteit_locatie`) as locatie
				INNER JOIN inhoud ON inhoud.id = activiteitId
				WHERE locatieId = :locatieId AND actief = 1 ";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':locatieId', $id);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
		
		
		
	}

	//get all activities that belong to category with id x
	public function getByCategory($id) {
		$sql = "SELECT * FROM inhoud WHERE categorieId = :id AND actief = 1 ";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
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



}