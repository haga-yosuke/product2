<?php
session_start();
include("functions.php");
check_session_id();


if (
  !isset($_POST['name']) || $_POST['name'] == '' ||
  !isset($_POST['text']) || $_POST['text'] == ''
) {
  echo json_encode(["error_msg" => "no input"]);
  exit();
}

$name = $_POST['name'];
$text = $_POST['text'];

$pdo = connect_to_db();

$sql = 'INSERT INTO post_table(id, name, text, created_at, updated_at) VALUES(NULL, :name, :text, now(), now())';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':name', $name, PDO::PARAM_STR);
$stmt->bindValue(':text', $text, PDO::PARAM_STR);

try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

header("Location:todo_input.php");
exit();
