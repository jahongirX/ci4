<form action="/product/update/<?=$productData['id']?>" method="post">

    <div class="row">

        <div class="col-md-8">
            <div class="card bg-light">
                <div class="card-body">
                    <div class="input_item mb-3">
                        <input type="text" value="<?=$productData['name']?>" name="name" class="form-control" placeholder="Наименовние товара">
                    </div>

                    <div class="row">
                        <div class="col-md-6">
                            <div class="input_item mb-3">
                                <input type="text" value="<?=$productData['new_price']?>" name="new_price" class="form-control" placeholder="Новая цена">
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="input_item mb-3">
                                <input type="text" value="<?=$productData['old_price']?>" name="old_price" class="form-control" placeholder="Старая цена">
                            </div>
                        </div>
                    </div>

                    <div class="input_item">
                        <textarea rows="6" class="form-control" name="product_description" placeholder="Описание товара"><?=$productData['product_description']?></textarea>
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
                                    <input <?=($productData['status'] == 1) ? 'checked' : ''?> class="form-check-input" type="checkbox" role="switch" name="status">
                                    Status
                                </label>
                            </div>

                            <div class="form-check form-switch">
                                <label class="form-check-label">
                                    <input <?=($productData['top'] == 1) ? 'checked' : ''?> class="form-check-input" type="checkbox" role="switch" name="top">
                                    Top
                                </label>
                            </div>
                            <div class="form-check form-switch">
                                <label class="form-check-label">
                                    <input <?=($productData['new'] == 1) ? 'checked' : ''?>  class="form-check-input" type="checkbox" role="switch" name="new">
                                    New
                                </label>
                            </div>

                            <div class="form-check form-switch">
                                <label class="form-check-label">
                                    <input <?=($productData['sale'] == 1) ? 'checked' : ''?> class="form-check-input" type="checkbox" role="switch" name="sale">
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