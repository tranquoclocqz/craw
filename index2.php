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
<?php  ?>
<?php /*
$result = $db->rawQuery("SELECT slug,id,name,photo from ey_product");
?>
<?php foreach ($result as $key => $value): ?>
	<?php if (!file_exists('crop/'.$value['photo'])): ?>
		<?php echo $value['id'] ?> - <?php echo $value['name'] ?> - <?php echo $value['slug'] ?> - <?php echo $value['photo'] ?>
		<?php break; ?>
	<?php endif ?>
<?php endforeach */?>