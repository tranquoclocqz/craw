<?php
include 'functions.php';
require 'vendor/autoload.php';
include 'simple_html_dom.php';
$db = new PDODb(['type' => 'mysql',
	'host'                  => 'host',
	'username'              => 'root',
	'password'              => '',
	'dbname'                => 'ey_khanhvyhome',
	'port'                  => 3306,
	'prefix'                => 'my_',
	'charset'               => 'utf8']);
for ($i=1; $i < 2; $i++) { 
	$i=1;
	$page_url = 'https://khanhvyhome.com.vn/index.php?route=product/productall&page='.$i;
	$html = file_get_html($page_url);
	foreach ($html->find('div.product-layout') as $layout) {
		$data = array();
		$data['excerpt'] = $layout->find('p.letrai',0)->plaintext;
		$data['page_url'] = $page_url;
		$href = $layout->find('.product-thumb > .image > a',0)->href;
		$page = file_get_html($href);
		$data['url'] = page($href);
		$product_photo = $page->find('#product-zomm',0)->src;
		$data['name'] = $product_name =	$page->find('.thread-title > h2',0)->plaintext;
		$data['brand'] = $brand = $page->find('span[itemprop=brand]',0)->plaintext;
		$data['product_code'] = $product_code = $page->find('span[itemprop=mpn]',0)->plaintext;
		$data['price'] = $price = price($page->find('span.price-new',0)->plaintext);
		$data['old_price'] = $old_price = price($page->find('span.price-old',0)->plaintext);
		$data['created_at'] = $data['updated_at'] = time();
		$data['content'] = '';
		foreach ($page->find('div.tss') as $key => $value) {
			$data['content'] .= $value;
		}
		dd($data);
		die;
	}
}
