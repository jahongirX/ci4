<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;
use Faker\Factory;

class ProductSeeder extends Seeder
{
    public function run()
    {
        $faker = Factory::create();
        $data = [];
        for($i = 1; $i <= 20; $i++){
            $data[$i] = [
                'name' => $faker->text(),
                'category_id' => $faker->numberBetween(1,5),
                'new_price' => $faker->numberBetween(100,1000),
                'image' => $faker->imageUrl(400,400, 'phones',true,'apple', true),
                'product_description' =>  $faker->realText()
            ];
        }

        $this->db->table('product')->insertBatch($data);
    }
}
