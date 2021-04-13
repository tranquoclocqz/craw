-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 13, 2021 lúc 05:55 PM
-- Phiên bản máy phục vụ: 10.4.8-MariaDB
-- Phiên bản PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `ey_khanhvyhome`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ey_product`
--

CREATE TABLE `ey_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'NULL',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `old_price` int(11) NOT NULL DEFAULT 0,
  `brand` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'null',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ey_product`
--

INSERT INTO `ey_product` (`id`, `name`, `slug`, `url`, `page_url`, `photo`, `product_code`, `content`, `excerpt`, `price`, `old_price`, `brand`, `created_at`, `updated_at`) VALUES
(2, ' 						Bếp từ Bosch PPI82560MS - 					', 'bep-tu-bosch-ppi82560ms', 'https://khanhvyhome.com.vn/bep-tu-bosch-PPI82560MS', 'https://khanhvyhome.com.vn/index.php?route=product/productall&page=1', 'bep-tu-bosch-ppi82560ms.png', 'PPI82560MS', '<div class=\"col_conten_des tss description\" id=\"description\"> 				  <div class=\"title_in\"> 					<h2>Nổi bật</h2> 				  </div> 				  <div class=\"table-responsive\"> 				  <p style=\"text-align: center;\"></p>    <p style=\"text-align: center;\"><span style=\"color:#0000CD;\"></span></p>    <p><strong>BẾP TỪ BOSCH PPI82560MS</strong></p>    <p align=\"center\"></p>    <p align=\"center\"></p>    <p><strong>Ưu điểm nổi bật của bếp từ Bosch PPI82560MS:</strong></p>    <p>- Thương hiệu nổi tiếng: Bosch l&agrave; thương hiệu nổi tiếng về thiết bị nội thất nh&agrave; bếp cao cấp của Đức. Trong đ&oacute;, sản phẩm <strong>bếp từ Bosch PPI82560MS </strong>được c&aacute;c chuy&ecirc;n gia v&agrave; người ti&ecirc;u d&ugrave;ng đ&aacute;nh gi&aacute; cao về hiệu năng hoạt động v&agrave; vẻ ngo&agrave;i thẩm mỹ của sản phẩm đem lại cho kh&ocirc;ng gian bếp.</p>    <p>- Thiết kế sang trọng, tinh tế: Bếp sử dụng gam m&agrave;u chủ đạo l&agrave; m&agrave;u đen sang trọng, dễ phối hợp với c&aacute;c nội thất kh&aacute;c trong gia đ&igrave;nh. Mặt k&iacute;nh bếp v&aacute;t cạnh gọn g&agrave;ng, c&aacute;c v&ugrave;ng nấu được đ&aacute;nh dấu chữ thập l&agrave; điểm nhấn tạo n&ecirc;n sự tinh tế của thiết kế.</p>    <p style=\"text-align: center;\"></p>    <p align=\"center\"></p>    <p>- Chất liệu k&iacute;nh cao cấp: <strong>Bếp từ Bosch PPI82560MS</strong> sử dụng chất liệu mặt k&iacute;nh Schott Ceran chịu lực, chịu nhiệt (khả năng chịu nhiệt tối đa 1000&deg;C, chống sốc nhiệt l&ecirc;n đến 750&deg;C), chống trầy xước, dễ d&agrave;ng vệ sinh lau ch&ugrave;i mặt bếp, trả lại vẻ ngo&agrave;i sạch đẹp.</p>    <p>- C&ocirc;ng suất mạnh mẽ: Bếp trang bị chế độ gia nhiệt với 9 cấp độ kh&aacute;c nhau v&agrave; tổng c&ocirc;ng suất nấu l&agrave; 3.5 Kw đ&aacute;p ứng y&ecirc;u cầu chế biến nhanh m&oacute;n ăn thơm ngon.</p>    <p>- V&ugrave;ng nấu đa dạng​: <strong>Bếp từ Bosch PPI82560MS</strong> được thiết kế gồm 2 v&ugrave;ng nấu, c&oacute; thể nấu c&ugrave;ng l&uacute;c 2 m&oacute;n gi&uacute;p bạn tiết kiệm được thời gian nấu thức ăn hơn.</p>    <p>- Nhiều tiện &iacute;ch th&ocirc;ng minh đi k&egrave;m: L&agrave; d&ograve;ng <a href=\"#\"><strong>bếp từ hiện đại</strong></a> được sản xuất theo c&ocirc;ng nghệ ti&ecirc;n tiến đi c&ugrave;ng nhiều t&iacute;nh năng tiện &iacute;ch như chế độ nấu nhanh tiết kiệm thời gian, giữ ấm thức ăn, cảnh b&aacute;o nhiệt dư, hẹn giờ tắt m&aacute;y, kh&oacute;a an to&agrave;n, tiết kiệm điện, bảng điều khiển cảm ứng.</p>    <p style=\"text-align: center;\"></p>    <p align=\"center\"></p>  				</div> 			  </div><div class=\"col_conten_spec tss specification\" id=\"specification\" > 				<div class=\"title_in table-responsive\"> 					<h2>Thông số</h2> 				</div> 			  	<div class=\"table-responsive\"><p><strong>Th&ocirc;ng số kỹ thuật bếp từ Bosch PPI82560MS:</strong></p>    <p style=\"text-align: center;\"></p>    <p align=\"center\"></p>    <p>Thương hiệu: Bosch.</p>    <p>M&atilde; sản phẩm: PPI82560MS.</p>    <p>Loại sản phẩm: Bếp từ &acirc;m.</p>    <p>K&iacute;ch thước sản phẩm: 780 x 450 x 59 mm.</p>    <p>K&iacute;ch thước hộc bếp: 700-702x400-402x59 mm.</p>    <p>Số v&ugrave;ng từ: 02</p>    <ul>  	<li>C&ocirc;ng suất v&ugrave;ng nấu 1: 2.2 kW.</li>  	<li>C&ocirc;ng suất v&ugrave;ng nấu 2: 1.3 kW.</li>  </ul>    <p>Tổng c&ocirc;ng suất: 3.5 kW.</p>    <p>Số mức c&ocirc;ng suất nấu: 9.</p>    <p>Hiệu điện thế: 220 - 240V.</p>    <p>Tần số: 50/60 Hz, 16 A.</p>    <p>Chiều d&agrave;i d&acirc;y nguồn: 1.1 m, kh&ocirc;ng k&egrave;m đầu cắm.</p>    <p>Trọng lượng tịnh (kg): 10 kg.</p>    <p>Xuất xứ: Trung Quốc.</p>  </div> 			  </div><div class=\"col_conten_des2 tss description2\" id=\"description2\"> 				<div class=\"title_in table-responsive\"> 					<h2>Tổng quan</h2> 				</div> 					<div class=\"table-responsive\"><p style=\"text-align: center;\"></p>    <h1 style=\"text-align: center;\"><span style=\"color:#0000CD;\"><span style=\"font-size:10px;\"></span></span></h1>    <p><strong>C&aacute;c chức năng th&ocirc;ng minh của bếp từ Bosch PPI82560MS:</strong></p>    <p style=\"text-align: center;\"></p>    <p align=\"center\"></p>    <p>- Tự động nhận diện v&ugrave;ng nấu Auto Star: Với t&iacute;nh năng n&agrave;y gi&uacute;p bạn dễ d&agrave;ng thao t&aacute;c chọn mức nhiệt cho v&ugrave;ng nấu hơn, chỉ cần đặt nồi l&ecirc;n 1 v&ugrave;ng bếp bất kỳ, <strong>bếp từ Bosch PPI82560MS</strong> sẽ tự động nhận diện v&agrave; hiển thị đ&egrave;n của v&ugrave;ng bếp đ&oacute;, bạn chỉ việc chọn mức nhiệt ph&ugrave; hợp với m&oacute;n ăn.</p>    <p>- Hẹn giờ th&ocirc;ng minh: Việc chế biến m&oacute;n ăn sẽ trở n&ecirc;n tiện lợi hơn rất nhiều với t&iacute;nh năng n&agrave;y, bạn kh&ocirc;ng cần phải đứng canh chừng tắt bếp, chỉ cần thiết lập thời gian đun nấu cho bếp (mỗi v&ugrave;ng nấu c&oacute; thể thiết lập thời gian kh&aacute;c nhau). Khi hết giờ, bếp sẽ tự động tắt v&agrave; ph&aacute;t ra &acirc;m thanh b&aacute;o hiệu cho bạn.</p>    <p>- Nấu nhanh Power Boost: Chế độ n&agrave;y của <strong>bếp từ Bosch PPI82560MS</strong> sẽ tăng c&ocirc;ng suất của bếp l&ecirc;n mức tối đa, gi&uacute;p bạn tiết kiệm được thời gian chờ đợi đun nấu.</p>    <p>- Giữ ấm đ&aacute;y nồi: Khi nấu cơm, thức ăn xong chưa d&ugrave;ng ngay, bạn c&oacute; thể bật chế độ n&agrave;y để giữ nhiệt cho nồi, vừa gi&uacute;p thức ăn vẫn ấm n&oacute;ng vừa kh&ocirc;ng ti&ecirc;u hao nhiều điện năng.</p>    <p>- Cảnh b&aacute;o nhiệt dư (H/h): Chức năng n&agrave;y của <strong>bếp từ Bosch PPI82560MS</strong> cảnh b&aacute;o lượng nhiệt đang c&ograve;n n&oacute;ng tr&ecirc;n mặt bếp, hạn chế trường hợp bỏng do mặt bếp c&ograve;n n&oacute;ng người d&ugrave;ng tiến h&agrave;nh vệ sinh hoặc chạm tay v&agrave;o mặt bếp g&acirc;y nguy hiểm.</p>    <p>- Kh&oacute;a an to&agrave;n đối với trẻ em: Hạn chế trường hợp trẻ em nghịch hay người kh&aacute;c bất cẩn chạm v&agrave;o bảng điều khiển hoặc khi bạn cần tiến h&agrave;nh lau ch&ugrave;i vệ sinh mặt bếp th&igrave; n&ecirc;n bật chế độ kh&oacute;a an to&agrave;n n&agrave;y l&ecirc;n để v&ocirc; hiệu h&oacute;a bảng điều khiển.</p>    <p>- Chức năng kh&oacute;a bảng điều khiển tạm thời: Khi bật chế độ n&agrave;y bảng điều khiển sẽ được kh&oacute;a tạm thời 30 gi&acirc;y, bạn c&oacute; thể lau ch&ugrave;i bếp ngay trong l&uacute;c đang nấu m&agrave; kh&ocirc;ng ảnh hưởng đến chương tr&igrave;nh nấu đ&atilde; được c&agrave;i đặt trước đ&oacute;.</p>    <p>- Chức năng kiểm so&aacute;t nhiệt độ Temperature Control: gi&uacute;p bạn kiểm so&aacute;t nhiệt độ dầu, kh&ocirc;ng lo ch&aacute;y dầu khi thực hiện c&aacute;c m&oacute;n chi&ecirc;n r&aacute;n.</p>    <p>- Chức năng chống tr&agrave;n hiệu quả: <strong>Bếp từ Bosch PPI82560MS </strong>sẽ tự động ngừng hoạt động khi nước tr&agrave;n ra mặt bếp v&agrave; bếp chỉ hoạt động lại khi bạn đ&atilde; l&agrave;m sạch nước v&agrave; bật nguồn trở lại, rất an to&agrave;n khi sử dụng.</p>  </div> 			  </div><div class=\"col_conten_des3 tss description3\" id=\"description3\"> 				<div class=\"title_in table-responsive\"> 					<h2>Hướng dẫn</h2> 				</div> 					<div class=\"table-responsive\"><p><strong>Hướng dẫn sử dụng bếp từ Bosch PPI82560MS:</strong></p>    <p><strong>C&aacute;ch lắp đặt sản phẩm:</strong> <strong>Bếp từ Bosch PPI82560MS</strong> được lắp đặt &acirc;m tủ v&agrave; vị tr&iacute; lắp đặt t&ugrave;y thuộc v&agrave;o tủ bếp của bạn, đảm bảo sao cho ph&ugrave; hợp với y&ecirc;u cầu k&iacute;ch thước lắp đặt của bếp ở tr&ecirc;n để bếp hoạt động tốt hơn.</p>    <p>Đọc kỹ hướng dẫn sử dụng: Bạn n&ecirc;n đọc kỹ hướng dẫn sử dụng v&agrave; c&aacute;c lưu &yacute; đi k&egrave;m của sản phẩm để sử dụng bếp an to&agrave;n, đ&uacute;ng c&aacute;ch v&agrave; hiệu quả hơn.</p>    <p><strong>C&aacute;ch sử dụng bếp từ Bosch PPI82560MS: </strong></p>    <p>- Bước 1: Khởi động bếp từ bằng c&aacute;ch giữ ph&iacute;m nguồn khoảng 2 gi&acirc;y.</p>    <p>- Bước 2: Chọn v&ugrave;ng nấu, chọn mức c&ocirc;ng suất ph&ugrave; hợp (Khi đặt nồi l&ecirc;n bếp, l&uacute;c n&agrave;y bếp sẽ tự nhận diện v&ugrave;ng nấu v&agrave; t&ugrave;y v&agrave;o m&oacute;n ăn cần nhiệt độ nấu kh&aacute;c nhau, bạn chỉ cần chọn mức c&ocirc;ng suất ph&ugrave; hợp để chế biến m&oacute;n ăn).</p>    <p>- Bước 3 (Nếu muốn): Chọn c&aacute;c chức năng th&ocirc;ng minh của bếp hỗ trợ nấu:</p>    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Khi muốn đun s&ocirc;i nước nhanh: c&oacute; thể chọn chế độ nấu nhanh Power Boost.</p>    <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; + Khi muốn giữ ấm thức ăn: c&oacute; thể chọn chế độ giữ ấm đ&aacute;y nồi.</p>    <p>- Bước 4: Tắt bếp khi chế biến xong thức ăn.</p>    <p><strong>C&aacute;c c&aacute;ch vệ sinh bếp từ Bosch PPI82560MS:</strong></p>    <p>- D&ugrave;ng baking soda h&ograve;a với nước theo tỉ lệ 2:1 rồi đổ l&ecirc;n bề mặt bếp đợi trong 5-10 ph&uacute;t rồi lau sạch lại bằng khăn mềm.</p>    <p>&nbsp;- D&ugrave;ng khăn thấm giấm hay nước cốt chanh pha lo&atilde;ng để vệ sinh mặt bếp.</p>    <p>- Sử dụng chất tẩy rửa CIF, sau đ&oacute; d&ugrave;ng khăn mềm lau lại.</p>    <p>Lưu &yacute; khi vệ sinh: Ngắt nguồn điện của bếp trước khi vệ sinh để đảm bảo an to&agrave;n, kh&ocirc;ng vệ sinh khi bếp vừa nấu xong v&igrave; mặt bếp c&ograve;n n&oacute;ng.</p>    <p><strong>Đập hộp bếp từ Bosch PPI82560MS:</strong></p>    <p>- <strong>Bếp từ Bosch PPI82560MS</strong> được đặt trong th&ugrave;ng carton. L&agrave; sản phẩm nhập khẩu nguy&ecirc;n chiếc n&ecirc;n b&ecirc;n ngo&agrave;i th&ugrave;ng c&oacute; d&aacute;n tem ch&iacute;nh gồm m&atilde; sản phẩm, thương hiệu, m&atilde; vạch v&agrave; tem phụ đơn vị nhập khẩu, ng&agrave;y th&aacute;ng sản xuất,&hellip; B&ecirc;n trong hộp gồm c&oacute; bếp từ bọc trong c&aacute;c miếng xốp chắc chắn v&agrave; c&aacute;c phụ kiện lắp đặt (ốc, v&iacute;t,&hellip;), phiếu bảo h&agrave;nh k&egrave;m s&aacute;ch hướng dẫn lắp đặt v&agrave; sử dụng tiếng Anh. T&ugrave;y từng loại bếp sẽ c&oacute; những phụ kiện kh&aacute;c nhau.</p>    <p>Xem th&ecirc;m:&nbsp;<u><strong><a href=\"#\">Đ&aacute;nh gi&aacute; chất lượng bếp điện từ Bosch c&oacute; thực sự tốt như mong đợi</a></strong></u></p>  </div> 			  </div>', 'Sau những m&oacute;n ăn thơm ngon m&agrave; bạn nấu l&agrave; nhiều m&ugrave;i thức ăn trộn lẫn với ..', 12790000, 15990000, 'Bosch', 1618328910, 1618328910);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `ey_product`
--
ALTER TABLE `ey_product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `ey_product`
--
ALTER TABLE `ey_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
