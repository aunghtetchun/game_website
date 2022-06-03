<?php

namespace App\Http\Controllers;

use App\Ads;
use App\Category;
use App\Comment;
use App\Post;
use App\Rating;
use App\RequestApp;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class ApiController extends Controller
{
//    public function __construct()
//    {
//        $this->middleware('');
//    }
    public function index(){

        $games=Post::with('getPhoto')->with('getCategory')->latest()->paginate(20);
        foreach ($games as $g){
            $logo = $g->logo;
            $g->logo = asset("storage/thumbnail/".$logo);
            $g->photos = array_map(function($photo){
                return asset("storage/post/".$photo["name"]);
            },$g->getPhoto()->get()->toArray());
            $g->photos_thumbnail = array_map(function($photo){
                return asset("storage/thumbnail/".$photo["name"]);
            },$g->getPhoto()->get()->toArray());
            $g->addHidden(["getPhoto"]);
        }
        $cat=Category::all();
        return [$games,$cat];


    }
    public function all(){
        $games=Post::with('getPhoto')->with('getCategory')->latest()->get();
        foreach ($games as $g){
            $logo = $g->logo;
            $g->logo = asset("storage/thumbnail/".$logo);
            $g->photos = array_map(function($photo){
                return asset("storage/post/".$photo["name"]);
            },$g->getPhoto()->get()->toArray());
            $g->photos_thumbnail = array_map(function($photo){
                return asset("storage/thumbnail/".$photo["name"]);
            },$g->getPhoto()->get()->toArray());
            $g->addHidden(["getPhoto"]);
        }
        $cat=Category::all();
        return [$games,$cat];
    }

    public function show($id){
        $games=Post::where('category_id',$id)->with('getPhoto')->with('getCategory')->latest()->paginate(20);
        foreach ($games as $g){
            $logo = $g->logo;
            $g->logo = asset("storage/thumbnail/".$logo);
            $g->photos = array_map(function($photo){
                return asset("storage/post/".$photo["name"]);
            },$g->getPhoto()->get()->toArray());
            $g->photos_thumbnail = array_map(function($photo){
                return asset("storage/thumbnail/".$photo["name"]);
            },$g->getPhoto()->get()->toArray());
            $g->addHidden(["getPhoto"]);
        }
        return $games;

    }




    public function gameList(){
        $title='All Games List';
        $games=Post::latest()->paginate(12);
//        return $games;
        return view('games',compact('games','title'));
    }


    public function showComment($id){
        $post=Post::where('id',$id)->get();
        return view('comment.show',compact('post'));
    }


    public function store(Request $request)
    {
//        return $request;
        $request->validate([
            "app_name" => ['required'],
            "username" => "required|max:150",
//            "phone" => "required|max:50",
            "description" => "required|max:1000",
            "playstore_link" => "required",
        ]);
        $finish='Hi '.$request->username .' We will check your requested '.$request->app_name.' game soon. ....';
        $requestApp=new RequestApp();
        $requestApp->app_name=$request->app_name;
        $requestApp->username=$request->username;
        $requestApp->phone='00099000';
        $requestApp->description=$request->description;
        $requestApp->playstore_link=$request->playstore_link;
        $requestApp->save();
        return $finish;
    }

    public function ads(){
        $ads=Ads::all();
        foreach ($ads as $g){
            $logo = $g->photo;
            $g->photo = asset("storage/ads/".$logo);
        }
        return $ads;
    }


    public function storeRating(Request $request)
    {
        $request->validate([
            "post_id"=>"required|numeric",
            "rating"=>"required|numeric",
        ]);
        $rating=new Rating();
        $rating->post_id=$request->post_id;
        $rating->rating=$request->rating;
        $rating->save();

        return redirect()->back();
    }
    public function storeComment(Request $request)
    {
        $request->validate([
            "post_id"=>"required|numeric",
            "comment"=>"required|max:120",
        ]);
        $comment=new Comment();
        $comment->post_id=$request->post_id;
        $comment->comment=$request->comment;
        $comment->save();

        return redirect()->back();
    }

}


