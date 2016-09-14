<?php
require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'DAO.php';
class CategoryDAO extends DAO {

	//alle verschillende categories 
	public function selectAll() {
		
	}

	//select category by id
	public function selectById($id) {

		$sql = "SELECT * FROM `inhoud_categorie_type` WHERE `id` = :id ";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
		$stmt->execute();
		return $stmt->fetch(PDO::FETCH_ASSOC);
		
	}

	public function selectByTypeId($id) {

		$sql = "SELECT * FROM `inhoud_activiteit_categorie_type` WHERE `id` = :id ";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
		$stmt->execute();
		return $stmt->fetch(PDO::FETCH_ASSOC);
		
	}

	public function selectAllCategoriesWithActivities(){

		$sql = "SELECT * FROM `inhoud_activiteit_categorie` ";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);

	}

	public function selectAllPricesWithActivities(){

		$sql = "SELECT * FROM `inhoud_prijs` ";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);

	}

	public function selectAllDurationsWithActivities(){

		$sql = "SELECT * FROM `inhoud_activiteit_duur` ";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);

	}

	






}