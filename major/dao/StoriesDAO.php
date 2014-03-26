<?php
require_once WWW_ROOT . 'classes' . DIRECTORY_SEPARATOR . 'DatabasePDO.php';
require_once WWW_ROOT . 'classes' . DIRECTORY_SEPARATOR . 'Config.php';

class StoriesDAO
{
    public $pdo;

    public function __construct()
    {
        $this->pdo = DatabasePDO::getInstance();
    }

    public function getStory($id)
    {
        $sql = "SELECT *
                FROM `flanders_stories`
                WHERE `id` = :id";
        $stmt = $this->pdo->prepare($sql);
        $stmt->bindValue(":id", $id);
        if($stmt->execute()){
            $todo = $stmt->fetch(PDO::FETCH_ASSOC);
            if(!empty($story)){
                return $story;
            }
        }
        return array();
    }
    public function getStories()
    {
        $sql = "SELECT *
                FROM `flanders_stories`";
        $stmt = $this->pdo->prepare($sql);
        if($stmt->execute()){
            $todos = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if(!empty($stories)){
                return $stories;
            }
        }
        return array();
    }
}