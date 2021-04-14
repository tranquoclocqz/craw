<?php
use Intervention\Image\ImageManagerStatic as Image;
function dd($data)
{
    echo '<pre>';
    print_r($data);
    echo '</pre>';
    die;
}
function preg_number($string)
{
    return preg_replace('/[^0-9]/', '', $str);
}
function price($str)
{
    $str = str_replace('.', '', $str);
    $str = str_replace('đ', '', $str);
    return $str;
}
function page($pageURL)
{
    $pageURL = explode("?page=", $pageURL);
    return $pageURL[0];
}
function create_slug($title)
{
    $replacement       = '-';
    $map               = array();
    $quotedReplacement = preg_quote($replacement, '/');
    $default           = array(
        '/à|á|ạ|ả|ã|â|ầ|ấ|ậ|ẩ|ẫ|ă|ằ|ắ|ặ|ẳ|ẵ|À|Á|Ạ|Ả|Ã|Â|Ầ|Ấ|Ậ|Ẩ|Ẫ|Ă|Ằ|Ắ|Ặ|Ẳ|Ẵ|å/' => 'a',
        '/è|é|ẹ|ẻ|ẽ|ê|ề|ế|ệ|ể|ễ|È|É|Ẹ|Ẻ|Ẽ|Ê|Ề|Ế|Ệ|Ể|Ễ|ë/'                         => 'e',
        '/ì|í|ị|ỉ|ĩ|Ì|Í|Ị|Ỉ|Ĩ|î/'                                                 => 'i',
        '/ò|ó|ọ|ỏ|õ|ô|ồ|ố|ộ|ổ|ỗ|ơ|ờ|ớ|ợ|ở|ỡ|Ò|Ó|Ọ|Ỏ|Õ|Ô|Ồ|Ố|Ộ|Ổ|Ỗ|Ơ|Ờ|Ớ|Ợ|Ở|Ỡ|ø/' => 'o',
        '/ù|ú|ụ|ủ|ũ|ư|ừ|ứ|ự|ử|ữ|Ù|Ú|Ụ|Ủ|Ũ|Ư|Ừ|Ứ|Ự|Ử|Ữ|ů|û/'                       => 'u',
        '/ỳ|ý|ỵ|ỷ|ỹ|Ỳ|Ý|Ỵ|Ỷ|Ỹ/'                                                   => 'y',
        '/đ|Đ/'                                                                   => 'd',
        '/ç/'                                                                     => 'c',
        '/ñ/'                                                                     => 'n',
        '/ä|æ/'                                                                   => 'ae',
        '/ö/'                                                                     => 'oe',
        '/ü/'                                                                     => 'ue',
        '/Ä/'                                                                     => 'Ae',
        '/Ü/'                                                                     => 'Ue',
        '/Ö/'                                                                     => 'Oe',
        '/ß/'                                                                     => 'ss',
        '/[^\s\p{Ll}\p{Lm}\p{Lo}\p{Lt}\p{Lu}\p{Nd}]/mu'                           => ' ',
        '/\\s+/'                                                                  => $replacement,
        sprintf('/^[%s]+|[%s]+$/', $quotedReplacement, $quotedReplacement)        => '',
    );
    //Some URL was encode, decode first
    $title = urldecode($title);
    $map   = array_merge($map, $default);
    return strtolower(preg_replace(array_keys($map), array_values($map), $title));
}
function clone_image($url, $new_name)
{

    $ext        = pathinfo($url, PATHINFO_EXTENSION);
    $image_name = $new_name . '.' . $ext;
    $path       = "images/";
    $crop_path  = "crop/";
    $ch         = curl_init($url);
    $fp         = fopen($path . $image_name, 'wb');
    curl_setopt($ch, CURLOPT_FILE, $fp);
    curl_setopt($ch, CURLOPT_HEADER, 0);
    curl_exec($ch);
    curl_close($ch);
    fclose($fp);
    if (is_file($path . $image_name)) {
        $image = Image::make($path.$image_name)->crop(690,621,54,91)->save($crop_path.$image_name);
    }

    return $image_name;
}

function replace_content($str){
	$str = preg_replace('/<iframe.*?\/iframe>/','', $str);
	$str = preg_replace('/<em.*?\/em>/','', $str);
	$str = preg_replace("/<img[^>]+\>/i", "", $str);
	$str = preg_replace('/<a ([^>]*)href="[^"]+"([^>]*)>/', '<a href="#">', $str);
	return $str;
}