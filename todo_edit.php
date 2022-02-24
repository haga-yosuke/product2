<?php
session_start();
include("functions.php");
check_session_id();

$id = $_GET["id"];

$pdo = connect_to_db();

$sql = 'SELECT * FROM post_table WHERE id=:id';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);

try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

$record = $stmt->fetch(PDO::FETCH_ASSOC);

?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>投稿編集</title>
  <!-- <link rel="stylesheet" href="style.css"> -->
</head>

<body id="index">

  <h1 style="text-align:center;margin-top: 0em;margin-bottom: 1em;">
    X HOUND
  </h1>

  <form action="todo_update.php" method="POST">
    <fieldset>
      <legend>投稿を編集する</legend>

      <div>
        ユーザー名: <input type="text" name="name" value="<?= $record["todo"] ?>">
      </div>
      <div>
        投稿内容: <input type="text" name="text" value="<?= $record["deadline"] ?>">
      </div>
      <div>
        <button>送信する</button>
      </div>

      <input type="hidden" name="id" value="<?= $record["id"] ?>">

      <a href="todo_read.php">メインページに戻る</a>
    </fieldset>

  </form>

</body>

</html>