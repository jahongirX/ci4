<?= $this->extend('layouts/main') ?>


<?= $this->section('content')?>

    <div class="d-flex align-items-center justify-content-between">
        <h3 class="my-5">Товары</h3>
        <a href="/product/add" class="btn btn-success">Добавить товар</a>
    </div>
    <div class="card">
        <div class="card-body">


            <table class="table table-bordered table-striped table-light">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Наименование</th>
                        <th>Категория</th>
                        <th>Цена</th>
                        <th>Изображение</th>
                        <th>Действие</th>
                    </tr>
                </thead>
                <tbody>
                    <?php if(!empty($products)): ?>
                        <?php foreach($products as $product): ?>
                            <tr>
                                <td><?=$product['id']?></td>
                                <td><?=$product['name']?></td>
                                <td><?=$product['category_id']?></td>
                                <td><?=$product['new_price']?></td>
                                <td><img src="<?=$product['image']?>" style="width: 100px" alt=""></td>
                                <td style="width: 20%">
                                    <a href="/product/delete/<?=$product['id']?>" class="btn btn-danger">Удалить</a>
                                    <a href="#" class="btn btn-primary update_product" data-id="<?=$product['id']?>">Редактировать</a>
                                </td>
                            </tr>
                        <?php endforeach; ?>


                    <?php endif; ?>
                </tbody>
            </table>

            <?= $pager->links() ?>

        </div>
    </div>

<?= $this->endSection()?>