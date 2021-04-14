<?php 
include "config.php";
$url = 'https://khanhvyhome.com.vn/ban-le-k%C3%ADnh-tuong-90-do-981-77-945';
$data = array();
$data['excerpt'] = 'Vòi rửa chén Vosler VL-6003C Vòi rửa nóng lạnh Chất liệu: Đồng thau..';
$data['page_url'] = 'https://khanhvyhome.com.vn/index.php?route=product/productall&page=22';
echo $href = page(str_replace(' ', '%20',$url));
echo "<br>";
$page = file_get_html($href);
$data['url'] = page($href);

$product_name =	str_replace("\t",'',$page->find('.thread-title > h2',0)->plaintext);
$product_name = trim($product_name);

$data['name'] = $product_name;
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
dd($data);
die;
$db->insert('product',$data);