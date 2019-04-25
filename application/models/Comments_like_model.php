<?php

class Comments_like_model extends MY_Model
{
    const TABLE = 'comments_likes';

    protected $id;
    protected $id_comment;
    protected $time_created;

    function __construct()
    {
        parent::__construct();
        $this->class_table = self::TABLE;
    }

    public function set_like($comment_id)
    {
        $CI =& get_instance();

        $res = $CI->s->from(self::TABLE)->insert([
            'id_comment' =>$comment_id
        ])->execute();

        if(!$res){
            return FALSE;
        }
        return new self($CI->s->insert_id);
    }

    public function reset_like($comment_id)
    {
        $CI =& get_instance();

        $CI->s->from(self::TABLE)
            ->where('id_comment', $comment_id)
            ->delete()
            ->limit(1)
            ->execute();
    }
}