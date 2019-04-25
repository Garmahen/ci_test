<?php
class Comments extends MY_Controller
{
    public function __construct()
    {
        parent::__construct();

        $this->CI =& get_instance();
        $this->load->model('news_comments_model');
        $this->load->model('comments_like_model');
    }


    public function message($to = 'World', $too= 'world')
    {
        echo "Hello {$to}!".PHP_EOL;
        echo "hello {$too}!".PHP_EOL;
    }
    

    public function setComment($news_id, $comment) {
        $this->news_comments_model->set_comment($news_id, $comment);
        $this->response("Comment ". $comment . ". Set to news id=". $news_id );
    }

    /**
     * Delete resource from storage.
     */
    public function deleteComment($id)
    {
        $this->news_comments_model->delete_comment($id);
        $this->response("Comment id=".$id." deleted");
    }

    /**
     * Put like.
     */
    public function setLike($id)
    {
        $this->comments_like_model->set_like($id);
        $this->response("Comment id=".$id." liked");
    }

    /**
     * Delete like.
     */
    public function resetLike($id)
    {
        $this->comments_like_model->reset_like($id);
        $this->response("Comment id=".$id." disliked");
    }
}
