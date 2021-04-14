<?php
include "config.php";
for ($i=79; $i <= 100; $i++) {
	$page_url = 'https://khanhvyhome.com.vn/index.php?route=product/productall&page='.$i;
	$html = file_get_html($page_url);
	foreach ($html->find('div.product-layout') as $layout) {
		$data = array();
		$data['excerpt'] = $layout->find('p.letrai',0)->plaintext;
		$data['page_url'] = $page_url;
		echo $href = page(str_replace(' ', '%20',$layout->find('.product-thumb > .image > a',0)->href));
		echo "<br>";
		$page = file_get_html($href);
		$data['url'] = page($href);
		$data['name'] = $product_name =	$page->find('.thread-title > h2',0)->plaintext;
		$data['slug'] = $slug = create_slug($product_name);
		$product_photo = $page->find('#product-zomm',0)->src;
		if ($product_photo) {
			$data['photo'] = clone_image($product_photo,$slug);
		}
		$data['brand'] = $brand = $page->find('span[itemprop=brand]',0)->plaintext;
		$data['product_code'] = $product_code = $page->find('span[itemprop=mpn]',0)->plaintext;
		$data['price'] = $price = price($page->find('.price-box > .price > span[itemprop=price]',0)->plaintext);
		$old_price =  price($page->find('.price-box > .price > span.price-old',0)->plaintext);
		$data['old_price'] = $old_price ? $old_price : 0;
		$data['created_at'] = $data['updated_at'] = time();
		$data['content'] = '';
		foreach ($page->find('div.tss') as $key => $value) {
			$data['content'] .= replace_content($value);
		}
		$db->insert('product',$data);
	}
}