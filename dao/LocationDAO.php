<?php
require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'DAO.php';
class LocationDAO extends DAO {
	
	public function selectAll() {
		$sql = "SELECT * FROM `inhoud_activiteit_locatie_type` ORDER BY ID DESC";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}

	public function selectAllLocationsWithActivities() {
		$sql = "SELECT * FROM `inhoud_activiteit_locatie` ORDER BY ID DESC";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}

	public function selectById($id) {
		$sql = "SELECT * FROM `inhoud_activiteit_locatie_type` WHERE `id` = :id";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
		$stmt->execute();
		return $stmt->fetch(PDO::FETCH_ASSOC);
	}

	
	//select all locations of activity by id
	public function selectLocationsByActivity($id){
		$sql = "SELECT * FROM (SELECT activiteitId,locatieId from `inhoud_activiteit_locatie`) as locatie
				INNER JOIN inhoud_activiteit_locatie_type ON inhoud_activiteit_locatie_type.id = locatie.locatieId
				WHERE activiteitId = :activiteitId ";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':activiteitId', $id);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}

	


	





}