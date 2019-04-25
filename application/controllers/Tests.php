<?php
class Tests extends MY_Controller
{
    protected $response_data;
    const NEWS_LIMIT = 3;

    public function __construct()
    {
        parent::__construct();

        $this->CI =& get_instance();
        $this->load->model('news_model');
        $this->load->model('news_like_model');

        $this->response_data = new stdClass();
        $this->response_data->status = 'success';
        $this->response_data->error_message = '';
        $this->response_data->data = new stdClass();

        if (ENVIRONMENT === 'production')
        {
            die('Access denied!');
        }
    }
    // костыль
    public function index()
    {
//        $news = $this->get_last_news();
        $news = $this->news_model->get_last_news(self::NEWS_LIMIT);
        $this->response($news);
    }
//    public function get_last_news()
//    {
//        $this->response_data->data->news = News_model::get_all('short_info');
//        $this->response_data->data->patch_notes = '';
//        $this->response($this->response_data);
//    }

    public function setLike($news_id) {
        $this->news_like_model->set_like($news_id);
        $this->response("News id=". $news_id ." set like");
    }

    public function resetLike($news_id) {
        $this->news_like_model->reset_like($news_id);
        $this->response("News id=". $news_id ." reset like");
    }
    
}
