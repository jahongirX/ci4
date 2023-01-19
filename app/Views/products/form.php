<?= $this->extend('layouts/main') ?>


<?= $this->section('content')?>

    <div class="d-flex align-items-center justify-content-between">
        <h3 class="my-5">Добавление товара</h3>
    </div>

    <?php if(!empty($validation)): ?>
        <div class="text-danger"><?=$validation->listErrors()?></div>
    <?php endif; ?>

    <form action="/product/add" method="post">

        <div class="row">

            <div class="col-md-8">
                <div class="card bg-light">
                    <div class="card-body">
                        <div class="input_item mb-3">
                            <input type="text" name="name" class="form-control" placeholder="Наименовние товара">
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <div class="input_item mb-3">
                                    <input type="text" name="new_price" class="form-control" placeholder="Новая цена">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input_item mb-3">
                                    <input type="text" name="old_price" class="form-control" placeholder="Старая цена">
                                </div>
                            </div>
                        </div>

                        <div class="input_item">
                            <textarea rows="6" class="form-control" name="product_description" placeholder="Описание товара"></textarea>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-4">
                <div class="card bg-light">
                    <div class="card-body">

                        <div class="input_item mb-3">
                            <label class="mb-1" for="category_id">Категория товара</label>
                            <select id="category_id" name="category_id" class="form-select">
                                <option value="1">Электроника</option>
                                <option value="2">Книгы</option>
                                <option value="3">Одежда</option>
                            </select>
                        </div>

                        <div class="input_items">
                            <div class="">
                                <div class="form-check form-switch">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" role="switch" name="status">
                                        Status
                                    </label>
                                </div>

                                <div class="form-check form-switch">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" role="switch" name="top">
                                        Top
                                    </label>
                                </div>
                                <div class="form-check form-switch">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" role="switch" name="new">
                                        New
                                    </label>
                                </div>

                                <div class="form-check form-switch">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="checkbox" role="switch" name="sale">
                                        Sale
                                    </label>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <div class="col-md-4 mt-4">
                <button class="btn btn-success">Сохранить</button>
            </div>

        </div>

    </form>

<?= $this->endSection()?>