<?php
require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'DAO.php';
class CategoryDAO extends DAO {

	//alle verschillende categories 
	public function selectAll() {
		
	}

	//select category by id
	public function selectById($id) {

		$sql = "SELECT * FROM `inhoud_categorie_type`
				INNER JOIN inhoud_categorie_type_taal 
				ON typeId = id 
				WHERE `id` = :id ";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
		$stmt->execute();
		return $stmt->fetch(PDO::FETCH_ASSOC);
		
	}

	public function selectByTypeId($id, $language) {

		$sql = "SELECT * FROM `inhoud_activiteit_categorie_type`
				INNER JOIN `inhoud_activiteit_categorie_type_taal` 
				ON id = typeId
				WHERE id = :id  AND taal=:language ";
		$stmt = $this->pdo->prepare($sql);
		$stmt->bindValue(':id', $id);
		$stmt->bindValue(':language', $language);
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