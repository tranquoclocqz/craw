<?php 
include "config.php";
$result = $db->rawQuery("select page_url,count(*) as n from ey_product group by page_url");
?>
<table>
	<?php foreach ($result as $key => $value) {
		?>
		<tr>
			<td>
				<?php echo $value['page_url'] ?>
			</td>
			<td>
				<?php echo $value['n'] ?>
			</td>
		</tr>
	<?php } ?>

</table>