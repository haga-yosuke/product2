<?php

session_start();
include("functions.php");
check_session_id();

?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>投稿画面</title>
  <link rel="stylesheet" href="main.css">
</head>

<body>

  <h1 style="text-align:center;margin-top: 0em;margin-bottom: 1em;">
    X HOUND
  </h1>

  <form action="todo_create.php" method="POST">
    <fieldset>
      <legend id="index">投稿画面イメージ</legend>

      <table id="explain">
        <thead>
          <tr>
            <th class="h2">投稿ページ</th><br>

            <th class="h2">実装イメージ（インスタの投稿ページ参照）</th>
            <th class="h3">・このアプリで撮った写真のみを投稿できる仕様にする</th>

          </tr>

        </thead>
      </table>
      <img src="img/postpage.PNG" class="snap" alt="投稿ページ" title="投稿ページイメージ">

      <a href="todo_read.php" class="h2">メインページに戻る</a><br>

      <br>
    </fieldset>

    <br>
  </form>

</body>

</html>