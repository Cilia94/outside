<?php
require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'DAO.php';
class ActivityDAO extends DAO {
	
	public function selectAll() {
		//$sql = "SELECT * FROM `inhoud` WHERE `actief` = 1 ORDER BY ID ASC";
		$sql = "SELECT * FROM inhoud 
				INNER JOIN (SELECT activiteitId,GROUP_CONCAT(titel_nl SEPARATOR ';') as titel_nl,GROUP_CONCAT(titel_fr SEPARATOR ';') as titel_fr,GROUP_CONCAT(titel_en SEPARATOR ';') as titel_en,typeId FROM inhoud_prijs
				GROUP BY activiteitId) as tmp ON activiteitId = inhoud.id
				WHERE actief = 1 ORDER BY ID ASC";
		$stmt = $this->pdo->prepare($sql);
		$stmt->execute();
		return $stmt->fetchAll(PDO::FETCH_ASSOC);
	}

	public function selectById($id) {
		//$sql = "SELECT * FROM `inhoud` WHERE `id` = :id ";
		/*$sql = "SELECT * FROM inhoud 
				INNER JOIN (SELECT activiteitId,GROUP_CONCAT(titel_nl SEPARATOR ';') as titel_nl,GROUP_CONCAT(titel_fr SEPARATOR ';') as titel_fr,GROUP_CONCAT(titel_en SEPARATOR ';') as titel_en,typeId FROM inhoud_prijs
				GROUP BY activiteitId) as tmp ON activiteitId = inhoud.id
				WHERE actief = 1 AND id= :id ORDER BY ID ASC";*/
				
		/*$sql = "SELECT * FROM `inhoud`
				LEFT JOIN (SELECT * FROM (SELECT activiteitId,GROUP_CONCAT(titel_nl SEPARATOR ';') as prijs_nl,GROUP_CONCAT(titel_fr SEPARATOR ';') as prijs_fr,GROUP_CONCAT(titel_en SEPARATOR ';') as prijs_en,typeId FROM inhoud_prijs
				WHERE typeId = 1
				GROUP BY activiteitId) as tmp
				LEFT JOIN 
				(SELECT activiteitId as activiteitId2,GROUP_CONCAT(titel_nl SEPARATOR ';') as supplement_nl,GROUP_CONCAT(titel_fr SEPARATOR ';') as supplement_fr,GROUP_CONCAT(titel_en SEPARATOR ';') as supplement_en FROM inhoud_prijs
				WHERE typeId = 2
				GROUP BY activiteitId) as tmp2
				ON tmp.activiteitId = tmp2.activiteitId2

				UNION ALL 

				SELECT * FROM (SELECT activiteitId,GROUP_CONCAT(titel_nl SEPARATOR ';') as prijs_nl,GROUP_CONCAT(titel_fr SEPARATOR ';') as prijs_fr,GROUP_CONCAT(titel_en SEPARATOR ';') as prijs_en,typeId FROM inhoud_prijs
				WHERE typeId = 1
				GROUP BY activiteitId) as tmp
				RIGHT JOIN 
				(SELECT activiteitId as activiteitId2,GROUP_CONCAT(titel_nl SEPARATOR ';') as supplement_nl,GROUP_CONCAT(titel_fr SEPARATOR ';') as supplement_fr,GROUP_CONCAT(titel_en SEPARATOR ';') as supplement_en FROM inhoud_prijs
				WHERE typeId = 2
				GROUP BY activiteitId) as tmp2
				ON tmp.activiteitId = tmp2.activiteitId2) as tmp3
				ON inhoud.id = tmp3.activiteitId
				WHERE actief=1 AND id= :id";	
				*/
		$sql = "SELECT * FROM `inhoud`
				LEFT JOIN (SELECT * FROM (SELECT activiteitId,GROUP_CONCAT(titel_nl SEPARATOR ';') as prijs_titel_nl,GROUP_CONCAT(titel_fr SEPARATOR ';') as prijs_titel_fr,GROUP_CONCAT(titel_en SEPARATOR ';') as prijs_titel_en,GROUP_CONCAT(prijs_nl SEPARATOR ';') as prijs_nl,GROUP_CONCAT(prijs_fr SEPARATOR ';') as prijs_fr,GROUP_CONCAT(prijs_en SEPARATOR ';') as prijs_en,typeId FROM inhoud_prijs
				WHERE typeId = 1
				GROUP BY activiteitId) as tmp
				LEFT JOIN 
				(SELECT activiteitId as activiteitId2,GROUP_CONCAT(titel_nl SEPARATOR ';') as supplement_titel_nl,GROUP_CONCAT(titel_fr SEPARATOR ';') as supplement_titel_fr,GROUP_CONCAT(titel_en SEPARATOR ';') as supplement_titel_en,GROUP_CONCAT(prijs_nl SEPARATOR ';') as supplement_nl,GROUP_CONCAT(prijs_fr SEPARATOR ';') as supplement_fr,GROUP_CONCAT(prijs_en SEPARATOR ';') as supplement_en FROM inhoud_prijs
				WHERE typeId = 2
				GROUP BY activiteitId) as tmp2
				ON tmp.activiteitId = tmp2.activiteitId2

				UNION ALL 

				SELECT * FROM (SELECT activiteitId,GROUP_CONCAT(titel_nl SEPARATOR ';') as prijs_titel_nl,GROUP_CONCAT(titel_fr SEPARATOR ';') as prijs_titel_fr,GROUP_CONCAT(titel_en SEPARATOR ';') as prijs_titel_en,GROUP_CONCAT(prijs_nl SEPARATOR ';') as prijs_nl,GROUP_CONCAT(prijs_fr SEPARATOR ';') as prijs_fr,GROUP_CONCAT(prijs_en SEPARATOR ';') as prijs_en,typeId FROM inhoud_prijs
				WHERE typeId = 1
				GROUP BY activiteitId) as tmp
				RIGHT JOIN 
				(SELECT activiteitId as activiteitId2,GROUP_CONCAT(titel_nl SEPARATOR ';') as supplement_titel_nl,GROUP_CONCAT(titel_fr SEPARATOR ';') as supplement_titel_fr,GROUP_CONCAT(titel_en SEPARATOR ';') as supplement_titel_en,GROUP_CONCAT(prijs_nl SEPARATOR ';') as supplement_nl,GROUP_CONCAT(prijs_fr SEPARATOR ';') as supplement_fr,GROUP_CONCAT(prijs_en SEPARATOR ';') as supplement_en FROM inhoud_prijs
				WHERE typeId = 2
				GROUP BY activiteitId) as tmp2
				ON tmp.activiteitId = tmp2.activiteitId2) as tmp3
				ON inhoud.id = tmp3.activiteitId
				WHERE actief=1 AND id= :id	";
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


}