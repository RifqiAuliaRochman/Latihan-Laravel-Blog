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
        return self::$blog_posts;
    }
}
