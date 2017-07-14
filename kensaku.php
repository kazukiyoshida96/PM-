<?php
header("Content-type: text/html; charset=utf-8");

if(empty($_POST)) {
	header("Location: ArtifactsMenu.htm");
	exit();
}else{
	//名前入力判定
	if (!isset($_POST['yourname'])  || $_POST['yourname'] === "" ){
		$errors['name'] = "名前が入力されていません。";
	}
}

if(count($errors) === 0){
	
	$dsn = 'mysql:host=localhost;dbname=kensaku;charset=utf8';
	$user = 'k';
	$password = '12345';

	try{
		$dbh = new PDO($dsn, $user, $password);
		$statement = $dbh->prepare("SELECT * FROM seika WHERE name LIKE (:name) ");
	
		if($statement){
			$yourname = $_POST['yourname'];
			$like_yourname = "%".$yourname."%";
			//プレースホルダへ実際の値を設定する
			$statement->bindValue(':name', $like_yourname, PDO::PARAM_STR);
			
			if($statement->execute()){
				//レコード件数取得
				$row_count = $statement->rowCount();
				
				while($row = $statement->fetch()){
					$rows[] = $row;
				}
				
			}else{
				$errors['error'] = "検索失敗しました。";
			}
			
			//データベース接続切断
			$dbh = null;	
		}
	
	}catch (PDOException $e){
		print('Error:'.$e->getMessage());
		$errors['error'] = "データベース接続失敗しました。";
	}
}

?>

<!DOCTYPE html>
<html>
<head>

		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="Content-style-Type" dontent="text/css">
		<title>PM学科専用闇キャンパスポータル</title>
		<link rel="stylesheet"href="style1.css" type="text/css">
		<style type="text/css">a { text-decoration: none; }</style>

<title>検索結果</title>
<meta charset="utf-8">
</head>
<body>

	<body link="#ff0000" vlink="#ff0000" alink="ff0000">

		<table width="100%" align="center" frame="void" rules="none" border="2"  bordercolor="#bdb76b" bgcolor="#000000" >
			<tr>
				<td align="center" valign="middle">
					<a href="ArtifactsMenu.htm"><font size="7"><b>検索結果</b></font></a>
				</td>
			</tr>
		</table

<?php if (count($errors) === 0): ?>

<font color="ff0000"><p><?=htmlspecialchars($yourname, ENT_QUOTES, 'UTF-8')."さんで検索。"?></p>
<p>検索結果は<?=$row_count?>件です。</p></font>

<table align="center" width="1000px" border='1'>

<tr align="center"><!--<td><font color="ff0000">id</font></td>-->
<td><font color="ff0000">演習名、所属名</font></td></tr>

<?php 
foreach($rows as $row){
?>
 
<tr align="center"><font color="ff0000"> 
	<!--<td>c$row['id']?></td>-->
	"<td><a href=".$row['url']."</a>"
		<?=htmlspecialchars($row['name'],ENT_QUOTES,'UTF-8')?></td></font></a>
</tr> 
<?php 
} 
?>

<?php elseif(count($errors) > 0): ?>
<?php
foreach($errors as $value){
	echo "<p>".$value."</p>";
}
?>
<?php endif; ?>



</body>
</html>