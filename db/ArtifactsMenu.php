﻿<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-style-Type" dontent="text/css">
<title>PM学科専用闇キャンパスポータル</title>
<link rel="stylesheet"href="style1.css" type="text/css">
		<style type="text/css">a { text-decoration: none; }</style>

</head>

<body link="#000000" vlink="#000000" alink="000000">



<table width="1000" align="center" frame="void" rules="none" border="2"  bordercolor="#bdb76b" bgcolor="#ffffff" >
<tr>
<td align="center" valign="middle">
<font size="7"color="#000000"><b>PM学科専用闇キャンパスポータル</b></font>
</td>
</tr>
</table>

<br>

		<table width="1000px" align="center" rules="none" frame="void" border="none" bgcolor="transparent">
			<tr>
				<th>
					<font size="6"color="000000"><b>過去の演習の成果物のメニュー</b></font>
				</th>
			</tr>
		</table>
<hr>
<br>

<form align="center" action="kensaku.php" method="post">
キーワードを入力してください：<input type="text" name="yourname">
<input type="submit" value="検索する">
</form>

<br>


<table width="800" height="50">
			<tr>
				<td align="center"><font size="7" color="000000"><b>1年次・オリエンテーション<b></font></td>
			</tr>
		</table>

<?php
//データベース接続設定
$dbServer = '127.0.0.1';
$dbName = 'kensaku';
$dsn = "mysql:host={$dbServer};dbname={$dbName};charset=utf8";
$dbUser = 'k';
$dbPass = '12345';
//データベースへの接続
$db = new PDO($dsn, $dbUser, $dbPass);


//prefテーブルからすべてのデータを取り出すSQL文を作る
$sql = "SELECT name, url FROM seika  LIMIT 12 OFFSET 4";
$prepare = $db->prepare($sql);
$prepare->execute();
$result = $prepare->fetchAll(PDO::FETCH_ASSOC);
//SQLクエリ(問い合わせ)をデータベースに発行する
//問い合わせ結果が$rstに入ってくる
//問い合わせた結果（データの集合）を1件ずつ取り出す
//データが無くなったらwhileループ終了
  //取り出したデータの各フィールドの値を表示させる
  //取り出したデータは連想配列として参照できる
foreach ($result as $person) {

print "<table align='center' width='1000px'>";

print "<tr align='center'><td align='left'><font size='7' color='000000'><b><a href = ".$person["url"].">".$person["name"]."</a></td></font></tr></table>";
}
?>

<br>


<table width="800" height="50">
			<tr>
				<td align="center"><font size="7" color="000000"><b>PM実験・前半<b></font></td>
			</tr>
		</table>

<?php
//prefテーブルからすべてのデータを取り出すSQL文を作る
$sql = "SELECT name, url FROM seika  LIMIT 39 OFFSET 16";
$prepare = $db->prepare($sql);
$prepare->execute();
$result = $prepare->fetchAll(PDO::FETCH_ASSOC);
//SQLクエリ(問い合わせ)をデータベースに発行する
//問い合わせ結果が$rstに入ってくる
//問い合わせた結果（データの集合）を1件ずつ取り出す
//データが無くなったらwhileループ終了
  //取り出したデータの各フィールドの値を表示させる
  //取り出したデータは連想配列として参照できる
foreach ($result as $person) {

print "<table align='center' width='1000px'>";

print "<tr align='center'><td align='left'><font size='7' color='000000'><b><a href = ".$person["url"].">".$person["name"]."</a></td></font></tr></table>";
}
?>

<br>


<table width="800" height="50">
			<tr>
				<td align="center"><font size="7" color="000000"><b>PM演習・後半<b></font></td>
			</tr>
		</table>

<?php
//prefテーブルからすべてのデータを取り出すSQL文を作る
$sql = "SELECT name, url FROM seika  LIMIT 40 OFFSET 55";
$prepare = $db->prepare($sql);
$prepare->execute();
$result = $prepare->fetchAll(PDO::FETCH_ASSOC);
//SQLクエリ(問い合わせ)をデータベースに発行する
//問い合わせ結果が$rstに入ってくる
//問い合わせた結果（データの集合）を1件ずつ取り出す
//データが無くなったらwhileループ終了
  //取り出したデータの各フィールドの値を表示させる
  //取り出したデータは連想配列として参照できる
foreach ($result as $person) {

print "<table align='center' width='1000px'></tr>";

print "<tr align='center'><td align='left'><font size='7' color='000000'><b><a href = ".$person["url"].">".$person["name"]."</a></td></font></tr></table>";
}
?>

<br>
<br>

<hr>

<br>

<form align="center" action="kensaku.php" method="post">
キーワードを入力してください：<input type="text" name="yourname">
<input type="submit" value="検索する">
</form>

<br>
<br>

<table width="800" align="center" rules="all" frame="all" border="1" bgcolor="#dcdcdc">
<tr>
<td align="center"><a href="index.htm"><font size="7" color="000000">　トップページへ</font></a></td>
</tr>
</table>
<br>

</body>
</html>
