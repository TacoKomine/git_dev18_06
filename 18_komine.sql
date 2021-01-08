-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 08, 2021 at 08:40 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `gs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `gs_gm_table`
--

CREATE TABLE `gs_gm_table` (
  `id` int(12) NOT NULL,
  `item` varchar(64) NOT NULL,
  `category` varchar(64) DEFAULT NULL,
  `value` int(6) NOT NULL,
  `description` text NOT NULL,
  `fname` varchar(128) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='for EC web site test';

--
-- Dumping data for table `gs_gm_table`
--

INSERT INTO `gs_gm_table` (`id`, `item`, `category`, `value`, `description`, `fname`, `indate`) VALUES
(3, '僕ビール君ビール', 'Saison', 350, 'レモンやマスカット、ハーブを思わせる軽快な香りと、スッと抜ける爽やかな苦み。アルコール度数は4.5%に抑え、軽快な飲み口が特徴のビールです。こんなビールもあったのかと、イメージががらりと変わる、新しいクラフトビール体験をお楽しみください。', 'bokukimi.jpg', '2021-01-09 01:04:31'),
(4, 'HAZY JANE', 'Hazy IPA', 650, 'ドライホッピングによるパイナップルやマンゴー、フレッシュライムの鮮やかな香りに、松のニュアンス。\r\n\r\nそして、モルト由来のジューシーなオレンジのアロマが後味に現れます。\r\n\r\nこの濃密な完熟フルーツフレーバーが、強い苦味やアルコール感をバランスよくまとめあげ、何杯でも飲めてしまうスムースな味わいに仕上がっています。', 'brewdog-hazyjane.jpg', '2021-01-09 01:05:46'),
(5, 'Brewdog PALE ALE', 'Pale Ale', 600, 'ホップの聖地、米国西海岸産のホップが生み出す柑橘や松の鮮烈なアロマ、そして爽快な苦味。クラフトビールファンも納得のホッピーテイストですが、アルコール度を抑えた軽快な味わいは、飲み慣れないビギナーにもぴったり。\r\n商品名に初めてブルワリー名を冠した渾身のペールエールをお楽しみください。', 'brewdog-paleale.jpg', '2021-01-09 01:07:11'),
(6, 'Brewdog PUNK IPA', 'IPA', 580, '香りはしっかりとした上質な麦芽、トロピカルフルーツ、そして何よりも ブリュードッグらしいグレープフルーツ香 が、 大量のホップ とともに現れます。まさにホップの魔術師！飲み口の最初の印象は、香りの印象をそのまま引き継ぐ 南国フルーツと優雅な麦芽由来の甘さ、うっとりするビターグレープフルーツ 様の踊るホップ！ドライホッピングによる終わりの無い素晴らしい余韻へとつながります。', 'brewdog-punkipa.jpg', '2021-01-09 01:08:13'),
(7, 'Coedo Kyara', 'IPL', 380, '赤みがかった深い黄褐色、伽羅(きゃら)色のビール。白葡萄やスパイシーな柑橘を感じさせるアロマホップが香り、鮮やかで綺麗な苦味とともに口の中に広がります。6種の麦芽の配合とやや高めのアルコール分が、味の膨らみと丸みあるミディアムボディを織り成しています。低温発酵ラガー酵母による、飲み応えがありながらもきれていく心地よい後味です。', 'coedo-kyara.jpg', '2021-01-09 01:09:28'),
(8, 'Coedo Marihana', 'Session IPA', 350, '淡い黄金色と純白の泡にシトラスを想わせるアロマホップが華やかに香るセッション・IPA。ホップの魅力を存分にお楽しみいただけるように、香り高いホップを贅沢に投入しその香りを丁寧に引き出しました。香り高く洗練された苦味のあるしっかりとしたフレーバーと、低めのアルコール度数にクリアな飲み口のドリンカビリティを両立させた味わいです。ホップの個性とその風味を最大限に引き出す製法にちなんで毬花-Marihana-と名付けられました。', 'coedo-marihana.jpg', '2021-01-09 01:10:02'),
(9, 'Coedo Ruri', 'Pils', 350, 'クリアな黄金色と白く柔らかな泡のコントラスト、さわやかな飲み口が特徴のプレミアムピルスナービール。軽やかな口当たりながらも、深みある味わいとホップの香味苦味のバランスをとった上質の大人の楽しみ。飽きがこず、どんなお食事にも合うビールです。その透明感溢れる特徴にちなんで「瑠璃 -Ruri-」と名付けられました。', 'coedo-ruri.jpg', '2021-01-09 01:10:35'),
(10, 'DHC Belgian White', 'Belgian White', 350, 'オレンジピールとコリアンダーを使ったフルーティで爽やかな香りただようベルギー伝統スタイルのビール。\r\n苦味をおさえて、小麦のやわらかな味わいと酵母由来の爽やかな酸味を愉しめる口あたりなめらかな無濾過のホワイトエールです。', 'dhc-belgianwhite.jpg', '2021-01-09 01:12:52'),
(11, 'DHC Golden Meister', 'Pilsner', 350, '醸造家がビールの出来を確かめる時にしか味わえなかった無濾過ビール。\r\n酵母を濾過せず、ビール本来の麦芽と酵母の旨みが味わえるピルスナータイプのビールです。温度が上がってくるとさらに甘みとまろやかさを感じられる特別な味わいをゆっくりご堪能ください。', 'dhc-goldenmeister.jpg', '2021-01-09 01:14:02'),
(12, 'DHC Premium Rich Ale', 'Pale Ale', 350, '厳選したホップを贅沢に使用。グレープフルーツのような柑橘系アロマホップの華やかで豊かな香りと、コクのある味わいの絶妙なバランスが魅力。\r\n本格派エールビールで極上のひとときをお愉しみください。冷蔵庫から出して少しおいた12℃くらいが飲み頃です。', 'dhc-richale.jpg', '2021-01-09 01:15:28'),
(13, '常陸野ネストラガー', 'Lager', 350, '麦芽の芳醇な旨味の中にも、アロマホップによる爽快な香りを感じる下面醗酵の淡色ビールです。キレの良いフレッシュなのど越しをお楽しみください。', 'hitachino-lager.jpg', '2021-01-09 01:18:26'),
(14, 'ホワイトエール', 'White Ale', 350, 'コリアンダー、オレンジピール、ナツメグ等を加えた小麦ビールです。ハーブによる爽やかな香り、小麦麦芽による酸味と柔らかな味わいが特徴です。', 'hitacino-whiteale.jpg', '2021-01-09 01:19:01'),
(15, '伊勢角屋　Hazy IPA', 'Hazy IPA', 450, 'にごりある特徴的な外観から、すっきりとしたパッションフルーツの香りとそれを包む柑橘のドライな香りが爽やかに広がります。飲み込むとナチュラルな甘みが優しく柔らかく感じられます。ほどよいボディながら、小麦のサラッとした口当たりが爽やかで、ＩＰＡらしいホップのしっかりした苦みがミディアムボディを引き締めながら、小麦麦芽のかすかな酸味とともに穏やかな余韻を引き立たせます。様々な料理に合わせやすいですよ！', 'isekadoya-hazyipa.jpg', '2021-01-09 01:22:07'),
(16, '伊勢角屋 HIME WHITE', 'Wheat Ale', 380, 'コリアンダーと酵母が醸すスパイシーな香り、軽やかな口当たりと瑞々しい飲み心地は小麦麦芽の優しさです。天然酵母のナチュラルな酸味と控えめな苦みが、やわらかな印象をすっきりとまとめて、かすかに香る柚子の風味とともに爽やかなフィニッシュを楽しんでいただけます。バランスの取れた味わいが、小麦を使ったお料理や、スパイスを使ったお食事に合わせやすい、和のホワイトビールです。※酵母が瓶の底に白濁して沈殿することがございます。品質上問題はございませんので、瓶を倒してゆっくりと混ぜてください。\r\n\r\n', 'isekadoya-himewhite.jpg', '2021-01-09 01:23:43'),
(17, '伊勢角屋IPA', 'IPA', 380, '3種のホップの柑橘感のあるメロンのような甘くフルーティーな香りにかすかなスパイシーさアクセントに、豊かに広がります。甘みと苦みのバランスが良く、飲み応えもあるのに、まったく引っかかることなくスルスルと喉の奥に消えていきます。クリアでしっかりしたホップの苦みをほどよいボディが支えて、ホップの旨味や余韻を楽しんでいただけます。IPAらしい飲み応えと飲みやすさとのバランスが取れた、どのタイミングで飲んでもおいしく、おかわりしたくなるIPAに仕上げました。', 'isekadoya-ipa.jpg', '2021-01-09 01:24:34'),
(18, 'ねこにひき', 'New England IPA', 450, '白濁したゴールドの外観、4種のホップが醸す柑橘やトロピカルフルーツなど豊かでフルーティーな香りに包まれます。ジューシーで優しい甘さの「ホップ」ジュースのように柔らかな口当たり、芳醇なフレーバーが次々に現れますが、ベタつくことなくスムーズに喉元を通り消えて行きます。苦みも控えめで、8％のアルコールも感じることなく、ジューシーな印象が強く残る余韻を楽しんでいただけます。 ABBYとぎんが守る？カルミネーションと伊勢角が、ホップの香りをまとった酵母でチャレンジした特別なIPAです！ コラボしたカルミネーションのトーマスも太鼓判を押す逸品に仕上がりました。', 'isekadoya-nekonihiki.jpg', '2021-01-09 01:25:39'),
(19, 'ガツんとIPA', 'IPA', 350, 'グレープフルーツのような柑橘系の香りが爽やか。\r\nシトラを中心に、ギャラクシー、コロンバス、モザイクなど5種類のホップを使用。香りづけのためのドライホッピング（二度入れ）で、心地よい苦味と鼻を抜ける爽やかな香りを表現。\r\nキレがあり苦いが、飲み易い。', 'jcraft-hoppinng-gatsunto-ipa.jpg', '2021-01-09 01:26:28'),
(20, 'ジューシーIPA', 'New England IPA', 380, 'モルトとホップの甘みがしっかリ感じられる。\r\n小麦とオーツ麦を使い、やわらかく飲み易い味。\r\nホップは主にモザイクとギャクシーを使用。ジューシーなホップ感を表現。\r\nトロピカルフルーツのような香りで、飲み続けられる味わい。', 'jcraft-hoppinng-juicy-ipa.jpg', '2021-01-09 01:27:41'),
(21, 'アマビエIPA', 'IPA', 400, 'アマビエIPAは柑橘系アロマが特徴の7種類のホップ(※)を使用しています。\r\n柑橘のような香りがするだけではなく、果汁まで入っているのではないかと感じさせるジューシーさがあります。たっぷりの小麦麦芽にオーツ麦も加えたボディは、クリーミーで滑らか。後口はドライで、それなりの苦さも兼ね備えています。7％という少し高めのアルコールを持ちながらも、みずみずしい飲み口です。', 'sankt-amabie.jpg', '2021-01-09 01:28:28'),
(22, 'Hazy Little Thing IPA', 'Hazy IPA', 500, '香りはトロピカルフルーツ、ストーンフルーツ、シトラス、青々とした草にモルトのアロマも感じられる。味わいはジューシーなフルーツフレイバーにあふれ、ほんのりとした甘味とともにマイルドな苦味が楽しめる仕上がり。', 'sierranevada_hazylittlething.jpg', '2021-01-09 01:30:09'),
(23, 'Fantastic Haze', 'Hazy IPA', 550, 'ファンタスティック＆ジューシー＆ヘイジーなエール”をコンセプトに造ったインペリアルIPA。熟したマンゴーやメロン、柑橘果実を連想させる。5種のホップと大麦、小麦、オーツ麦を使った、ウソのようにファンタスティックな味わい。', 'sierranevada-fantastichaze.jpg', '2021-01-09 01:31:07'),
(24, '水曜日のネコ', 'Belgian White', 320, 'グラスに注げば立ちのぼる、青りんごを思わせる香りとオレンジピールの爽やかな香り。ほのかなハーブ感がフルーティさを引き立て、すっきりとした飲み口がやさしく喉を潤してくれます。他のビールと比べて苦みが少ないので、普段ビールを飲まない方にもおすすめ。', 'suineko.jpg', '2021-01-09 01:32:03'),
(25, 'TOKYO BLACK', 'Porter', 350, 'ロースト麦芽によって生まれる黒い色と、コーヒーやココアを思わせる香りが特徴の黒ビール。なめらかな口当たりと、ほのかに感じられる麦芽の甘みのおかげで、飲んだあとの印象がとても穏やかなのが特徴です。今日はお家でまったりしたいという方におすすめ。', 'tokyoblack.jpg', '2021-01-09 01:32:53'),
(26, 'Dark Matter IPA', 'Hazy IPA', 600, 'シンプルなモルト配合とStrataホップを中心としたアロマティックなダブルドライホップドIPA', 'uchu-darkmatteripa.jpg', '2021-01-09 01:33:56'),
(27, 'MARS', 'Hazy IPA', 780, '五次元フルーツを探す若者に人気の「うちゅうDO」を極める猛者たちのための五次元DOJO。身近な太陽系の惑星は銀河系でも有名な五次元DOJOのメッカだった！不毛な惑星と思われがちな火星は「火のDOJO」と呼ばれ入門生が絶えない。火のDOJO師範である、マスターカシェーイ直伝のホップブレンドでお送りするHAZY IPA', 'uchu-mars.jpg', '2021-01-09 01:35:36'),
(28, 'YONA YONA ALE', 'American Pale Ale', 320, 'クラフトビールの王道の味わいを追求した、アメリカンペールエール。\r\nアロマホップ「カスケード」の柑橘類を思わせるフレッシュな香りと、やさしいモルトの甘みが特徴です。ビールが喉をとおったあとも、香りが心地よくとどまりつづけるよう醸造しました。', 'yonayona.jpg', '2021-01-09 01:36:39'),
(29, 'インドの青鬼', 'IPA', 320, 'グレープフルーツのような華やかなホップの香りの陰に、思わず「二ガッ！」と叫んでしまうほどホップの強烈な苦味が隠れています。この苦さと深いコクが飲むものを虜にしてやまない、熱狂的ビールファンにこそおすすめしたい個性派ビールです。', 'aooni.jpg', '2021-01-09 05:18:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_gm_table`
--
ALTER TABLE `gs_gm_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_gm_table`
--
ALTER TABLE `gs_gm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;