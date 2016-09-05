<?php
require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'DAO.php';
class PhotoDAO extends DAO {
	
	public function selectAll() {
		$sql = "SELECT * FROM `foto_activiteit` ORDER BY ID DESC";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}

	public function selectById($id) {
		$sql = "SELECT * FROM `foto_activiteit` WHERE `id` = :id";
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





}