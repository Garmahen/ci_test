<?php

class News_like_model extends MY_Model
{
    const TABLE = 'news_likes';

    protected $id;
    protected $id_news;
    protected $time_created;
    
    function __construct($id = FALSE)
    {
        parent::__construct();
        $this->class_table = self::TABLE;
    }
    
    public function set_like($news_id)
    {
        $CI =& get_instance();

        $res = $CI->s->from(self::TABLE)->insert([
            'id_news' =>$news_id
        ])->execute();

        if(!$res){
            return FALSE;
        }
        return new self($CI->s->insert_id);
    }

    public function reset_like($news_id)
    {
        $CI =& get_instance();
        $CI->s->from(self::TABLE)
            ->where('id_news', $news_id)
            ->delete()
            ->limit(1)
            ->execute();
    }
}