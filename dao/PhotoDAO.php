<?php
require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'DAO.php';
class PhotoDAO extends DAO {
	
	public function selectAll() {
		$sql = "SELECT * FROM `nieuws` ORDER BY ID DESC";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}

	public function selectById($id) {
		$sql = "SELECT * FROM `nieuws` WHERE `id` = :id";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
		$stmt->execute();
		return $stmt->fetch(PDO::FETCH_ASSOC);
	}

	public function selectByActivityId($activityId) {
		$sql = "SELECT * 
						FROM `foto_activiteit` 
						WHERE `activiteitId` = :activityId";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':activityId', $activityId);
		
		$stmt->execute();
		$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
		if($result){
			return $result;
		}
		return [];
	}

	// public function insert($data){

		
	// 		$sql = "INSERT INTO `nieuws` (`link`, `tags`)
	// 			VALUES (:link, :tags)";
	// 		$stmt = $this->pdo->prepare($sql);
	// 		$stmt->bindValue(':link', $data['link']);
	// 		$stmt->bindValue(':tags', $data['tags']);
			
	// 		if($stmt->execute()) {
	// 			$lastInsertId=$this->pdo->lastInsertId();
	// 			return $this->selectById($lastInsertId);
	// 		}
			
		
	// }

	// public function delete($id) {
	// 	$sql = "DELETE FROM `nieuws` WHERE `id` = :id";
	// 	$stmt = $this->pdo->prepare($sql);
	// 	$stmt->bindValue(':id', $id);
	// 	return $stmt->execute();
	// }



}