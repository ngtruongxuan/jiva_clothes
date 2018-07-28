<?php
namespace App\Http\Controllers\Web;

use App\Http\Controllers\BaseController;
use App\Http\Repositories\CategoryRepository;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;

class HomeController extends BaseController {
    protected $categoryRepo;
    public function __construct(Request $_request,CategoryRepository $_categoryRepo)
    {
        parent::__construct($_request);
        $this->categoryRepo = $_categoryRepo;

    }
    public function home(){
//        return redirect('admin');
        return view('webs.home',['category'=>[]]);
    }
    public function getCategory(){
        $ctId = $this->request->get('category');
        $category = $this->categoryRepo->find($ctId);
        return view('webs.home',['category'=>$category]);
    }
}