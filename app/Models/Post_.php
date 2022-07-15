<?php

namespace App\Models;

class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Blog Pertama",
            "slug" => "judul-blog-pertama",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam obcaecati totam quam saepe repellendus nesciunt, tenetur esse laudantium commodi fuga alias reiciendis dolor cupiditate, culpa non porro eum consectetur assumenda delectus itaque, dignissimos recusandae. Quos, amet iure? Saepe accusantium illum enim dolor? Animi quam adipisci voluptatem. Dolore enim architecto amet sequi possimus tempora doloremque consequuntur incidunt natus, quidem repellat repudiandae quasi saepe omnis? Aperiam veniam, eveniet numquam perspiciatis omnis quam voluptas magnam, ipsam eaque vitae consequatur voluptates dolores rerum atque voluptate at recusandae corrupti impedit obcaecati nesciunt doloribus minima earum eligendi iste? Reprehenderit labore corporis ratione atque quibusdam blanditiis eaque."
        ],
        [
            "title" => "Judul Blog Kedua",
            "slug" => "judul-blog-kedua",
            "body" => "Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam obcaecati totam quam saepe repellendus nesciunt, tenetur esse laudantium commodi fuga alias reiciendis dolor cupiditate, culpa non porro eum consectetur assumenda delectus itaque, dignissimos recusandae. Quos, amet iure? Saepe accusantium illum enim dolor? Animi quam adipisci voluptatem. Dolore enim architecto amet sequi possimus tempora doloremque consequuntur incidunt natus, quidem repellat repudiandae quasi saepe omnis? Aperiam veniam, eveniet numquam perspiciatis omnis quam voluptas magnam, ipsam eaque vitae consequatur voluptates dolores rerum atque voluptate at recusandae corrupti impedit obcaecati nesciunt doloribus minima earum eligendi iste? Reprehenderit labore corporis ratione atque quibusdam blanditiis eaque."
        ]
    ];


    public static function all()
    {
        return collect(self::$blog_posts);
    }


    public static function find($slug)
    {
        $posts = static::all();
        return $posts->firstWhere('slug', $slug);
    }
}


// <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem tempora id quis excepturi hic adipisci reprehenderit molestiae eum officia maiores nemo, odio omnis ut velit eos amet labore quos nobis, ipsum quo obcaecati ex temporibus minima animi? Aliquam consectetur tempore laborum ab quos, hic, deleniti accusamus ex ipsa eum maiores deserunt! Quam minus placeat ratione cum asperiores fuga voluptatum laboriosam omnis eum officia, mollitia cumque nulla? Delectus vero fuga quo nulla sed non quod. Molestiae deserunt ipsam placeat rem ea, ullam cum exercitationem esse nulla cupiditate laborum quidem nisi dolorum quam iusto minima nesciunt ipsa velit est quis sunt amet eum. Ex sed consequuntur eaque cum vel vero, iste a rem pariatur minus hic animi maiores possimus ut odit nisi ducimus veritatis perferendis corporis cumque, nulla fugit rerum adipisci dolorem! Eius incidunt aliquam necessitatibus numquam recusandae similique, impedit quam velit! Placeat iusto mollitia quidem officiis eos sequi expedita eius perferendis?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In quibusdam quas quaerat corrupti temporibus fugit voluptate at modi adipisci, placeat odit impedit quos eveniet voluptates alias nobis ratione veniam vel. Hic quia enim fuga nostrum. Temporibus, suscipit ad! Fugit, sit id quia itaque ea vero. Delectus vel cumque repellendus harum?</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aspernatur fugiat modi dolor ipsam hic natus officia eligendi dolore voluptatibus tempora adipisci ullam earum consequuntur laudantium commodi itaque ut corporis temporibus, iste quae fuga vero ducimus. Quae at, asperiores eos minus iusto soluta maxime, id beatae quasi explicabo amet tenetur nisi?</p>

Post::create([
    'title' => 'Judul Blog Pertama',
    'category_id' => 1,
    'slug' => 'judul-blog-pertama',
    'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Pariatur molestiae obcaecati, eius dolorem tempore culpa unde adipisci dicta quas rerum nisi enim non in possimus',
    'body' => '<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Quidem tempora id quis excepturi hic adipisci reprehenderit molestiae eum officia maiores nemo, odio omnis ut velit eos amet labore quos nobis, ipsum quo obcaecati ex temporibus minima animi? Aliquam consectetur tempore laborum ab quos, hic, deleniti accusamus ex ipsa eum maiores deserunt! Quam minus placeat ratione cum asperiores fuga voluptatum laboriosam omnis eum officia, mollitia cumque nulla? Delectus vero fuga quo nulla sed non quod. Molestiae deserunt ipsam placeat rem ea, ullam cum exercitationem esse nulla cupiditate laborum quidem nisi dolorum quam iusto minima nesciunt ipsa velit est quis sunt amet eum. Ex sed consequuntur eaque cum vel vero, iste a rem pariatur minus hic animi maiores possimus ut odit nisi ducimus veritatis perferendis corporis cumque, nulla fugit rerum adipisci dolorem! Eius incidunt aliquam necessitatibus numquam recusandae similique, impedit quam velit! Placeat iusto mollitia quidem officiis eos sequi expedita eius perferendis?</p><p>Lorem ipsum dolor sit amet consectetur adipisicing elit. In quibusdam quas quaerat corrupti temporibus fugit voluptate at modi adipisci, placeat odit impedit quos eveniet voluptates alias nobis ratione veniam vel. Hic quia enim fuga nostrum. Temporibus, suscipit ad! Fugit, sit id quia itaque ea vero. Delectus vel cumque repellendus harum?</p><p>Lorem, ipsum dolor sit amet consectetur adipisicing elit. Aspernatur fugiat modi dolor ipsam hic natus officia eligendi dolore voluptatibus tempora adipisci ullam earum consequuntur laudantium commodi itaque ut corporis temporibus, iste quae fuga vero ducimus. Quae at, asperiores eos minus iusto soluta maxime, id beatae quasi explicabo amet tenetur nisi?</p>'
])

Category::create([
    'name' => 'personal',
    'slug' => 'personal'
])