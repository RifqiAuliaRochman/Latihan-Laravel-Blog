<?php

namespace Database\Seeders;

use App\Models\Post;
use App\Models\User;
use App\Models\Category;
use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory(3)->create();
        
        Category::create([
            'name' => 'Web Programming',
            'slug'=> 'web-programming'
        ]);

        Category::create([
            'name' => 'Personal',
            'slug'=> 'personal'
        ]);
        
        Category::create([
            'name' => 'Web Design',
            'slug'=> 'web-design'
        ]);

        Post::factory(20)->create();

        // User::create([
        //     'name'=> 'Rifqi',
        //     'email' => 'rifqi6882@gmail.com',
        //     'password' => bcrypt('admin')
        // ]);

        // Post::create([
        //     'title' => 'Blog Pertama',
        //     'slug' => 'blog-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur molestiae obcaecati, eius dolorem tempore culpa unde adipisci dicta quas rerum nisi enim non in possimus',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem tempora id quis excepturi hic adipisci reprehenderit molestiae eum officia maiores nemo, odio omnis ut velit eos amet labore quos nobis, ipsum quo obcaecati ex temporibus minima animi? Aliquam consectetur tempore laborum ab quos, hic, deleniti accusamus ex ipsa eum maiores deserunt! Quam minus placeat ratione cum asperiores fuga voluptatum laboriosam omnis eum officia, mollitia cumque nulla? Delectus vero fuga quo nulla sed non quod. Molestiae deserunt ipsam placeat rem ea, ullam cum exercitationem esse nulla cupiditate laborum quidem nisi dolorum quam iusto minima nesciunt ipsa velit est quis sunt amet eum. Ex sed consequuntur eaque cum vel vero, iste a rem pariatur minus hic animi maiores possimus ut odit nisi ducimus veritatis perferendis corporis cumque, nulla fugit rerum adipisci dolorem! Eius incidunt aliquam necessitatibus numquam recusandae similique, impedit quam velit! Placeat iusto mollitia quidem officiis eos sequi expedita eius perferendis?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In quibusdam quas quaerat corrupti temporibus fugit voluptate at modi adipisci, placeat odit impedit quos eveniet voluptates alias nobis ratione veniam vel. Hic quia enim fuga nostrum. Temporibus, suscipit ad! Fugit, sit id quia itaque ea vero. Delectus vel cumque repellendus harum?</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aspernatur fugiat modi dolor ipsam hic natus officia eligendi dolore voluptatibus tempora adipisci ullam earum consequuntur laudantium commodi itaque ut corporis temporibus, iste quae fuga vero ducimus. Quae at, asperiores eos minus iusto soluta maxime, id beatae quasi explicabo amet tenetur nisi?</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
        
        // Post::create([
        //     'title' => 'Blog Kedua',
        //     'slug' => 'blog-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur molestiae obcaecati, eius dolorem tempore culpa unde adipisci dicta quas rerum nisi enim non in possimus',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem tempora id quis excepturi hic adipisci reprehenderit molestiae eum officia maiores nemo, odio omnis ut velit eos amet labore quos nobis, ipsum quo obcaecati ex temporibus minima animi? Aliquam consectetur tempore laborum ab quos, hic, deleniti accusamus ex ipsa eum maiores deserunt! Quam minus placeat ratione cum asperiores fuga voluptatum laboriosam omnis eum officia, mollitia cumque nulla? Delectus vero fuga quo nulla sed non quod. Molestiae deserunt ipsam placeat rem ea, ullam cum exercitationem esse nulla cupiditate laborum quidem nisi dolorum quam iusto minima nesciunt ipsa velit est quis sunt amet eum. Ex sed consequuntur eaque cum vel vero, iste a rem pariatur minus hic animi maiores possimus ut odit nisi ducimus veritatis perferendis corporis cumque, nulla fugit rerum adipisci dolorem! Eius incidunt aliquam necessitatibus numquam recusandae similique, impedit quam velit! Placeat iusto mollitia quidem officiis eos sequi expedita eius perferendis?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In quibusdam quas quaerat corrupti temporibus fugit voluptate at modi adipisci, placeat odit impedit quos eveniet voluptates alias nobis ratione veniam vel. Hic quia enim fuga nostrum. Temporibus, suscipit ad! Fugit, sit id quia itaque ea vero. Delectus vel cumque repellendus harum?</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aspernatur fugiat modi dolor ipsam hic natus officia eligendi dolore voluptatibus tempora adipisci ullam earum consequuntur laudantium commodi itaque ut corporis temporibus, iste quae fuga vero ducimus. Quae at, asperiores eos minus iusto soluta maxime, id beatae quasi explicabo amet tenetur nisi?</p>',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);
        
        // Post::create([
        //     'title' => 'Blog Ketiga',
        //     'slug' => 'blog-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur molestiae obcaecati, eius dolorem tempore culpa unde adipisci dicta quas rerum nisi enim non in possimus',
        //     'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem tempora id quis excepturi hic adipisci reprehenderit molestiae eum officia maiores nemo, odio omnis ut velit eos amet labore quos nobis, ipsum quo obcaecati ex temporibus minima animi? Aliquam consectetur tempore laborum ab quos, hic, deleniti accusamus ex ipsa eum maiores deserunt! Quam minus placeat ratione cum asperiores fuga voluptatum laboriosam omnis eum officia, mollitia cumque nulla? Delectus vero fuga quo nulla sed non quod. Molestiae deserunt ipsam placeat rem ea, ullam cum exercitationem esse nulla cupiditate laborum quidem nisi dolorum quam iusto minima nesciunt ipsa velit est quis sunt amet eum. Ex sed consequuntur eaque cum vel vero, iste a rem pariatur minus hic animi maiores possimus ut odit nisi ducimus veritatis perferendis corporis cumque, nulla fugit rerum adipisci dolorem! Eius incidunt aliquam necessitatibus numquam recusandae similique, impedit quam velit! Placeat iusto mollitia quidem officiis eos sequi expedita eius perferendis?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In quibusdam quas quaerat corrupti temporibus fugit voluptate at modi adipisci, placeat odit impedit quos eveniet voluptates alias nobis ratione veniam vel. Hic quia enim fuga nostrum. Temporibus, suscipit ad! Fugit, sit id quia itaque ea vero. Delectus vel cumque repellendus harum?</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aspernatur fugiat modi dolor ipsam hic natus officia eligendi dolore voluptatibus tempora adipisci ullam earum consequuntur laudantium commodi itaque ut corporis temporibus, iste quae fuga vero ducimus. Quae at, asperiores eos minus iusto soluta maxime, id beatae quasi explicabo amet tenetur nisi?</p>',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);
    }
}
