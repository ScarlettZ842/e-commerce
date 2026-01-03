<?php 

require __DIR__ . '/header.php';
require __DIR__ . '/../csrf.php';
require __DIR__ . '/db.php';

$products = [];
$searchEmpty = false;
$page = 1;
$results_per_page = 9;
$page_first_result;
$number_of_pages;

$statement = $pdo->prepare("SELECT * FROM categories ORDER BY title");
$statement->execute();
$categories = $statement->fetchAll(PDO::FETCH_ASSOC);

if(!isset($_GET['p'])) {
	$page = 1;
} else {
	$page = filter_input(INPUT_GET, 'p', FILTER_SANITIZE_NUMBER_INT);
}

if(isset($_POST['q']) && isset($_GET['c']) && CSRF::validateToken($_POST['token'])) {
	$query = filter_input(INPUT_POST, 'q');
	$category = filter_input(INPUT_GET, 'c');
	$statement = $pdo->prepare("SELECT * FROM products WHERE category='$category' AND CONCAT(`title`, `price`, `description`, `category`) LIKE '%$query%'");
	$statement->execute();
	if($statement->rowCount() > 0){
		$products = $statement->fetchAll(PDO::FETCH_ASSOC);
	} else {
		$searchEmpty = true;
	}
} elseif(isset($_POST['q']) && CSRF::validateToken($_POST['token'])) {
	$query = filter_input(INPUT_POST, 'q');
	$statement = $pdo->prepare("SELECT * FROM products WHERE CONCAT(`title`, `price`, `description`, `category`) LIKE '%$query%'");
	$statement->execute();
	if($statement->rowCount() > 0){
		$products = $statement->fetchAll(PDO::FETCH_ASSOC);
	} else {
		$searchEmpty = true;
	}
} elseif(isset($_GET['c'])) {
	$page_first_result = ($page - 1) * $results_per_page;
	$statement = $pdo->prepare("SELECT count(*) FROM products WHERE category=?");
	$statement->execute(array(filter_input(INPUT_GET, 'c')));
	$number_of_result = $statement->fetchColumn();
	$number_of_pages = ceil($number_of_result / $results_per_page);

	$statement = $pdo->prepare("SELECT * FROM products WHERE category=? LIMIT $page_first_result, $results_per_page");
	$statement->execute(array(filter_input(INPUT_GET, 'c')));
	if($statement->rowCount() > 0) {
		$products = $statement->fetchAll(PDO::FETCH_ASSOC);
	}
} else {
	$page_first_result = ($page - 1) * $results_per_page;
	$statement = $pdo->prepare("SELECT count(*) FROM products");
	$statement->execute();
	$number_of_result = $statement->fetchColumn();
	$number_of_pages = ceil($number_of_result / $results_per_page);
	$statement = $pdo->prepare("SELECT * FROM products LIMIT $page_first_result, $results_per_page");
	$statement->execute();
	if($statement->rowCount() > 0) {
		$products = $statement->fetchAll(PDO::FETCH_ASSOC);
	}
}




?>
<section class="products section">
	<div class="container">
		<div class="row">
			<div class="col-md-3">
				<div class="widget product-category">
					<h4 class="widget-title">Categories</h4>
					<div class="panel-group commonAccordion" id="accordion" role="tablist" aria-multiselectable="true">
					  	<div class="panel panel-default">
							<div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
								<div class="panel-body">
									<ul>
									<li><a href="/e-commerce/products">All</a></li>
									<?php foreach($categories as $category): ?>
										<li><a href="/e-commerce/products?c=<?= htmlspecialchars($category['title']); ?>"><?= htmlspecialchars($category['title']); ?></a></li>
										<?php endforeach; ?>
									</ul>
								</div>
							</div>
					  	</div>
						<br>
						<?php if(isset($_GET['c'])): ?>
						<form action="/e-commerce/products?c=<?= filter_input(INPUT_GET, 'c') ?>" method="post">
								<?php CSRF::csrfInputField() ?>
							    <div class="form-group">
								    <input name="q" type="search" class="form-control" placeholder="Search...">
						<?php else: ?>
							<form action="/products" method="post">
								<?php CSRF::csrfInputField() ?>
							    <div class="form-group">
								    <input name="q" type="search" class="form-control" placeholder="Search...">
						<?php endif ?>
							    </div>
							<div class="text-center">
								<button name="search" type="submit" class="btn btn-main btn-small">Search</button>
							</div>
						</form>
					</div>
					
				</div>
			</div>
			<div class="col-md-9">
				<div class="row">
					<?php if(!$searchEmpty): ?>
						<?php $count = 0; ?>
						<?php foreach($products as $product): ?>
							<?php $count++; ?>
							<div class="col-md-4">
								<div class="product-item">
									<div class="product-thumb">
										<!--<span class="bage">Sale</span>-->
									<img class="img-responsive" src="/e-commerce/<?= htmlspecialchars(unserialize($product['images'])[0]) ?>" alt="product-img" style="width: 100%; height: 200px; object-fit: cover;" />
									</div>
									<div class="product-content">
										<h4><a href="/e-commerce/item?id=<?= htmlspecialchars($product['id']) ?>"><?= htmlspecialchars($product['title']) ?></a></h4>
										<p class="price">₦ <?= number_format($product['price'], 2) ?></p>
									</div>
								</div>
							</div>
							<?php if($count % 3 == 0): ?>
								<div class="clearfix"></div>
							<?php endif; ?>
						<?php endforeach; ?>
					<?php else: ?>
						<div class="col-md-6 col-md-offset-3">
							<div class="block text-center">
								<i class="tf-ion-ios-cart-outline"></i>
								<h2 class="text-center">No items found.</h2>
								<a href="/e-commerce/products" class="btn btn-main mt-20">Return to shop</a>
							</div>
						</div>
					<?php endif ?>

		

				</div>				
			</div>
		
		</div>
		<?php if(!isset($_POST['q'])): ?>
			<div class="row">
				<div class="col-sm-12 text-center">
					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							<?php
								$category_param = isset($_GET['c']) ? '&c=' . filter_input(INPUT_GET, 'c') : '';
								
								// Previous button
								if($page > 1): ?>
									<li class="page-item">
										<a class="page-link" href="/e-commerce/products?p=<?= $page - 1 ?><?= $category_param ?>" aria-label="Previous">
											<span aria-hidden="true">&laquo;</span>
										</a>
									</li>
								<?php else: ?>
									<li class="page-item disabled">
										<span class="page-link">&laquo;</span>
									</li>
								<?php endif;
								
								// Page numbers
								for($i = 1; $i <= $number_of_pages; $i++): 
									if($i == $page): ?>
										<li class="page-item active"><span class="page-link"><?= $i ?></span></li>
									<?php else: ?>
										<li class="page-item"><a class="page-link" href="/e-commerce/products?p=<?= $i ?><?= $category_param ?>"><?= $i ?></a></li>
									<?php endif;
								endfor;
								
								// Next button
								if($page < $number_of_pages): ?>
									<li class="page-item">
										<a class="page-link" href="/e-commerce/products?p=<?= $page + 1 ?><?= $category_param ?>" aria-label="Next">
											<span aria-hidden="true">&raquo;</span>
										</a>
									</li>
								<?php else: ?>
									<li class="page-item disabled">
										<span class="page-link">&raquo;</span>
									</li>
								<?php endif; ?>
						</ul>
					</nav>
				</div>
			</div>
		<?php endif ?>
	</div>
</section>
<?php require __DIR__ . '/footer.php'; ?>