<?php
class News_comments_model extends MY_Model
{
    const TABLE = 'news_comment';

    function __construct()
    {
        parent::__construct();
    }

    public static function set_comment($news_id, $comment)
    {
        $CI =& get_instance();

        $res = $CI->s->from(self::TABLE)->insert([
            'id_news' => $news_id,
            'comment' => $comment
        ])->execute();

        if(!$res){
            return FALSE;
        }
        return new self($CI->s->insert_id);
    }

    public static function delete_comment($id)
    {
        $CI =& get_instance();
        $CI->s->from(self::TABLE)
            ->where('id', $id)
            ->delete()
            ->execute();
    }
}