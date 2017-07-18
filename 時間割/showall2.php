<!DOCTYPE html>
<html lang="ja">
  <head>
    <meta charset="UTF-8">
    <title>すべてのつぶやき</title>
  </head>
  <body>
  <nav id="nav">
<ul>
<li><a href="showall2.php">登録画像画面</a></li>
<li><a href="hyoushi2.php">個人時間割作成画面</a></li>
<li><a href="hyoushi1.php">登録画面</a></li>

<ul>
</nav>

    <div>
      <?php
      # データベース設定☆レシピ260☆（データベースに接続したい）を読み込みます☆レシピ041☆（他のファイルを取り込んで利用したい）。
      require_once 'database_conf.php';
      # h()関数☆レシピ221☆（安全にブラウザで値を表示したい）を読み込みます☆レシピ041☆（他のファイルを取り込んで利用したい）。
      require_once 'h.php';
      try {
        # MySQLデータベースに接続します☆レシピ260☆（データベースに接続したい）。
        $db = new PDO($dsn, $dbUser, $dbPass);
        $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        #すべてのつぶやきをデータベースから取得する。
        $sql = 'SELECT * FROM tweets';
        $prepare = $db->prepare($sql);
        $prepare->execute();
        $result = $prepare->fetchAll(PDO::FETCH_ASSOC);
        #すべてのつぶやきを表示する。
        echo '<ul>';
        foreach ($result as $tweet) {
          $id = $tweet['id'];
          $body = h($tweet['body']);
          echo "<li><a href='item.php?id=${id}'>${id}</a>：${body}</li>";
        }
        echo '</ul>';
      } catch (PDOException $e) {
        # エラーが発生した場合、PDOException例外がスローされるのでキャッチします。
        echo 'エラーが発生しました。内容: ' . h($e->getMessage());
      }
      ?>
    </div>
  </body>
</html>