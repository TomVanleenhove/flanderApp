<?php

define('DS', DIRECTORY_SEPARATOR);
define('WWW_ROOT', dirname(dirname(__FILE__)) . DS);


require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'StoriesDAO.php';
require_once WWW_ROOT . 'dao' . DIRECTORY_SEPARATOR . 'CheckpointsDAO.php';
require_once WWW_ROOT . 'api' . DIRECTORY_SEPARATOR . 'Slim' . DIRECTORY_SEPARATOR . 'Slim.php';

\Slim\Slim::registerAutoloader();

$app = new \Slim\Slim();
$storiesDAO = new StoriesDAO();
$checkpointsDAO = new CheckpointsDAO();

$app->get("/stories/getStories/?",function() use ($storiesDAO){

	header("Content-Type:application/json");
	echo json_encode($storiesDAO->getStories());
	exit();

});

$app->get("/stories/getStory/:id/?",function($id) use ($storiesDAO){
    header("Content-Type:application/json");
	echo json_encode($storiesDAO->getStory($id)); 
	exit();
});

$app->get("/checkpoints/getStars/?",function() use ($checkpointsDAO){

	header("Content-Type:application/json");
	echo json_encode($checkpointsDAO->getStars());
	exit();

});

$app->get("/checkpoints/getPastPoints/?",function() use ($checkpointsDAO){

	header("Content-Type:application/json");
	echo json_encode($checkpointsDAO->getPastPoints());
	exit();

});
$app->get("/checkpoints/getMines/?",function() use ($checkpointsDAO){

	header("Content-Type:application/json");
	echo json_encode($checkpointsDAO->getMines());
	exit();

});
$app->get("/checkpoints/?",function() use ($checkpointsDAO){

	header("Content-Type:application/json");
	echo json_encode($checkpointsDAO->getPoints());
	exit();

});

$app->run();
