<?php
require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'DAO.php';
class LocationDAO extends DAO {
	
	public function selectAll() {
		$sql = "SELECT * FROM `locatie` ORDER BY ID DESC";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}

	public function selectById($id) {
		$sql = "SELECT * FROM `locatie` WHERE `id` = :id";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
		$stmt->execute();
		return $stmt->fetch(PDO::FETCH_ASSOC);
	}

	

	// public function selectByLocation($id){
	// 	WHERE (',' + RTRIM(MyColumn) + ',') LIKE '%,' + @search + ',%'
		
	// 	$sql = "SELECT * 
	// 					FROM `activiteit` 
	// 					WHERE (',' + RTRIM(`locatieId`) + ',') LIKE '%,' + :id + ',%'";
	// 	$stmt = $this->pdo->prepare($sql);
	// 	$stmt->bindValue(':id',$id );
		
	// 	$stmt->execute();
	// 	$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
	// 	if($result){
	// 		return $result;
	// 	}
	// 	return [];
	// }





}