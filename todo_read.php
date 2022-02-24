<?php

session_start();
include("functions.php");
check_session_id();

$pdo = connect_to_db();

$sql = 'SELECT * FROM post_table ORDER BY name ASC';

$stmt = $pdo->prepare($sql);

try {
  $status = $stmt->execute();
} catch (PDOException $e) {
  echo json_encode(["sql error" => "{$e->getMessage()}"]);
  exit();
}

$result = $stmt->fetchAll(PDO::FETCH_ASSOC);
$output = "";
foreach ($result as $record) {
  $output .= "
    <tr>
      <td>{$record["name"]}</td>
      <td>{$record["text"]}</td>
      <td><a href='todo_edit.php?id={$record["id"]}'>編集する</a></td>
      <td><a href='todo_delete.php?id={$record["id"]}'>削除する</a></td>
    </tr>
  ";
}

?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>ログイン後</title>
  <link rel="stylesheet" href="main.css">
</head>

<body>

  <h1 style="text-align:center;margin-top: 0em;margin-bottom: 1em;">
    X HOUND
  </h1>

  <fieldset>

    <legend id="index">ログイン後イメージ</legend>
    
    <table id="explain">
      <thead>
        <tr>
          <th class="h2">ユーザーページ</th><br>

          <th class="h2">実装イメージ（インスタのユーザーページ参照）</th><
          <th class="h3">・アイコン、フォロー、フォロワー数、投稿画像の表示は一緒</th>
          <th class="h3">・写真の撮影を促せるよう目立つUIの写真撮影への移行ボタンにする</th>

        </tr>
      </thead>
    </table>

    <img src="img/userpage.PNG" class="snap" alt="ユーザーページ" title="ユーザーページイメージ">

    <br><br>
    <button type="submit" class="btn"><a href="todo_input.php">投稿画面へ</a></button><br>

    <br>
    <a href="logout.php" class="h2">トップ画面に戻る</a>

  </fieldset>

</body>

</html>