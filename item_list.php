<?php
// 1. DB接続
try{
    //Password:MAMP='root',XAMPP=''
    //ID:'root', Password: 'root'
    $pdo = new PDO('mysql:dbname=gs_db; charset=utf8; host=localhost:3306','root','root');
}catch( PODException $e){
    exit('DbConnectError:'.$e->getMessage());
}

// 2.データ登録SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table");
$status = $stmt->execute();

// 3.データ表示
$view="";
if($status==false){
    $error = $stmt->errorInfo();
    exit("ErrorQuery".$error[2]);
}else{
    //SELECTデータの数だけ自動でループしてくれる
    while( $res = $stmt->fetch(PDO::FETCH_ASSOC)){
        $view .= '<li class="cart-list">';
        $view .=    '<ul class="item-container">';
        $view .=       '<li class="item-container-left">';
        $view .=          '<p><img class="cart-thumb" src="../img/'.$res['fname'].'" alt=""></p>';
        $view .=       '</li>';
        $view .=       '<li class="item-container-middle">';
        $view .=          '<h2 class="cart-title">'.$res['item'].'</h2>';
        $view .=          '<p class="cart-category">'.$res['category'].'</p>';
        $view .=          '<p class="cart-price">¥'.$res['value'].'</p>';
        $view .=       '</li>';
        $view .=       '<li class="item-container-right">';
        $view .=          '<a href="#" class="btn-update">編集</a>';
        $view .=          '<form action="delete.php" method="post">';
		$view .=             '<input class="btn-delete" type="submit" value="削除">';
		$view .=             '<input type="hidden" name="id" value="'.$res['id'].'">';
		$view .=          '</form>';
        $view .=       '</li>';
        $view .=     '</ul>';
        $view .= '</li>';
    }
}
?>

<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <title>Item List</title>
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/style.css">
    <link rel="stylesheet" href="./css/jquery.bxslider.css">
</head>
<body class="cms">
    <div class="outer">
        <h1 class="page-title page-title_cms">登録済み商品一覧</h1>
        <div class="wrapper wrapper-main flex-parent">
        <a href="index.php">商品追加ページへ</a>
            <main class="wrapper-main">
                <ul class="cart-products">
                    <?php echo $view;?>
                </ul>
            </main>
        </div>
    </div>
</body>
</html>