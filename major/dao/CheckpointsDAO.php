<?php
require_once WWW_ROOT . 'classes' . DIRECTORY_SEPARATOR . 'DatabasePDO.php';
require_once WWW_ROOT . 'classes' . DIRECTORY_SEPARATOR . 'Config.php';

class CheckpointsDAO
{
    public $pdo;

    public function __construct()
    {
        $this->pdo = DatabasePDO::getInstance();
    }
    public function getStars()
    {
        $sql = "SELECT *
                FROM `flanders_points`
                WHERE type = 1";
        $stmt = $this->pdo->prepare($sql);
        if($stmt->execute()){
            $todos = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if(!empty($stars)){
                return $stars;
            }
        }
        return array();
    }

    public function getPastPoints()
    {
        $sql = "SELECT *
                FROM `flanders_points`
                WHERE type = 2";
        $stmt = $this->pdo->prepare($sql);
        if($stmt->execute()){
            $todos = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if(!empty($pastPoints)){
                return $pastPoints;
            }
        }
        return array();
    }

    public function getMines()
    {
        $sql = "SELECT *
                FROM `flanders_points`
                WHERE type = 3";
        $stmt = $this->pdo->prepare($sql);
        if($stmt->execute()){
            $todos = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if(!empty($mines)){
                return $mines;
            }
        }
        return array();
    }
    public function getPoints()
    {
        $sql = "SELECT *
                FROM `flanders_points`";
        $stmt = $this->pdo->prepare($sql);
        if($stmt->execute()){
            $todos = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if(!empty($points)){
                return $points;
            }
        }
        return array();
    }
}