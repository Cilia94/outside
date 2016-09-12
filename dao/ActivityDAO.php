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

	public function selectByLocation($id){
		
		$sql = "SELECT * 
						FROM `inhoud` 
						WHERE `locatieId` LIKE :search AND `actief` = 1";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':search','%,' . $id . ',%' );

		
		$stmt->execute();
		$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
		if($result){
			return $result;
		}
		return [];
	}

	//get all activities that belong to category with id x
	public function getByCategory($id) {
	
	
	}







		public function selectByType($type) {
		$sql = "SELECT * 
						FROM `inhoud` 
						WHERE `typeId`= :typeId AND `actief` = 1";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':tag',$tag );
		
		$stmt->execute();
		$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
		if($result){
			return $result;
		}
		return [];
	}


	




}