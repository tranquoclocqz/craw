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

function utf8convert($str = '')
    {
        if ($str != '') {
            $utf8 = array(
                'a' => 'á|à|ả|ã|ạ|ă|ắ|ặ|ằ|ẳ|ẵ|â|ấ|ầ|ẩ|ẫ|ậ|Á|À|Ả|Ã|Ạ|Ă|Ắ|Ặ|Ằ|Ẳ|Ẵ|Â|Ấ|Ầ|Ẩ|Ẫ|Ậ',
                'd' => 'đ|Đ',
                'e' => 'é|è|ẻ|ẽ|ẹ|ê|ế|ề|ể|ễ|ệ|É|È|Ẻ|Ẽ|Ẹ|Ê|Ế|Ề|Ể|Ễ|Ệ',
                'i' => 'í|ì|ỉ|ĩ|ị|Í|Ì|Ỉ|Ĩ|Ị',
                'o' => 'ó|ò|ỏ|õ|ọ|ô|ố|ồ|ổ|ỗ|ộ|ơ|ớ|ờ|ở|ỡ|ợ|Ó|Ò|Ỏ|Õ|Ọ|Ô|Ố|Ồ|Ổ|Ỗ|Ộ|Ơ|Ớ|Ờ|Ở|Ỡ|Ợ',
                'u' => 'ú|ù|ủ|ũ|ụ|ư|ứ|ừ|ử|ữ|ự|Ú|Ù|Ủ|Ũ|Ụ|Ư|Ứ|Ừ|Ử|Ữ|Ự',
                'y' => 'ý|ỳ|ỷ|ỹ|ỵ|Ý|Ỳ|Ỷ|Ỹ|Ỵ',
                '' => '`|\~|\!|\@|\#|\||\$|\%|\^|\&|\*|\(|\)|\+|\=|\,|\.|\/|\?|\>|\<|\'|\"|\“|\”|\:|\;|_',
            );

            foreach ($utf8 as $ascii => $uni) {
                $str = preg_replace("/($uni)/i", $ascii, $str);
            }
        }

        return $str;
    }
function create_slug($text = '')
    {
        if ($text != '') {
            $text = strtolower(utf8convert($text));
            $text = preg_replace("/[^a-z0-9-\s]/", "", $text);
            $text = preg_replace('/([\s]+)/', '-', $text);
            $text = str_replace(array('%20', ' '), '-', $text);
            $text = preg_replace("/\-\-\-\-\-/", "-", $text);
            $text = preg_replace("/\-\-\-\-/", "-", $text);
            $text = preg_replace("/\-\-\-/", "-", $text);
            $text = preg_replace("/\-\-/", "-", $text);
            $text = '@' . $text . '@';
            $text = preg_replace('/\@\-|\-\@|\@/', '', $text);
        }

        return $text;
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

function check_exist($slug){
    global $db;
    $count = $db->rawQueryOne("SELECT count(*) as num from ey_product where slug like ?",array($slug));
    return $count['num'];
}