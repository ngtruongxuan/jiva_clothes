<?php
$router->get('',[
    'as'=>'web.category.index',
    'uses'=>'HomeController@getCategory'
]);
