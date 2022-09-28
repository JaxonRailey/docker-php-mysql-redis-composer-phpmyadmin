<?php

include 'vendor/autoload.php';

// Redis connection
$redis = new Redis();
$redis->connect('Redis', 6379);

if (!$redis->exists('date')) {
	$date = date('H:i:s');
	$redis->setex('date', 5, $date);
} else {
	$date = $redis->get('date');
}

echo 'Time cached every 5 secs with Redis: ' . $date . '<br><br>';

$host   = 'db';
$user   = 'root';
$pass   = 'password';
$dbname = 'universe';

// MySQL connection
try {
    $db = new PDO ("mysql:host=$host;dbname=$dbname", $user, $pass);
} catch (PDOException $e) {
    echo "Error: " . $e->getMessage(); die();
}

// Print planet from MySQL
$stmt = $db->prepare('SELECT * FROM planet');
$stmt->execute();
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

$renderer = new \rationalboss\util\ArrayToText($rows);
$renderer->showHeaders(true);

echo '<pre>';
	$renderer->render();
echo '</pre>';

// Print comet from MySQL
$stmt = $db->prepare('SELECT * FROM comet');
$stmt->execute();
$rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

$renderer = new \rationalboss\util\ArrayToText($rows);
$renderer->showHeaders(true);

echo '<pre>';
	$renderer->render();
echo '</pre>';
