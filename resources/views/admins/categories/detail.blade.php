@extends('admins.layouts.master')
@section('title', 'Category')
@section('controller', 'Category')
@section('action'){{isset($data->id)?'Detail':'New'}}@endsection
@section('parent', 'Home')
@section('parent2', 'Master Data')
@section('parent3', 'Category')
@section('content')
<form autocomplete="off">
    <link rel="stylesheet" type="text/css" href="{{plugin_path('/easyui/themes/bootstrap/easyui.css')}}">
    {{--<link rel="stylesheet" type="text/css" href="{{plugin_path('/easyui/themes/icon.css')}}">--}}
    <script type="text/javascript" src="{{plugin_path('/easyui/jquery.easyui.min.js')}}"></script>


    <link rel="stylesheet" type="text/css" href="{{module_path('/fontawesome-iconpicker/dist/css/fontawesome-iconpicker.css')}}">
    <script type="text/javascript" src="{{module_path('/fontawesome-iconpicker/dist/js/fontawesome-iconpicker.js')}}"></script>

    <input type="hidden" id="txt_id" name="id" value="{{isset($data->id)?$data->id:''}}">
    <div class="row">
        <div class="col-md-6">
            <div class="row">
                <label class="col-xs-4">Category name</label>
                <div class="col-xs-8">
                    <input style="width: 100%" type="text" id="txt_categoryName_detail" name="category_name" value="{{isset($data->category_name)?$data->category_name:''}}">
                </div>
            </div>
            <div class="row">
                <label class="col-xs-4">Status</label>
                <div class="col-xs-8">
                    <div>
                        <select class="form-control" id="cbo_status_detail" name="status" style="padding-top: 2px; padding-bottom: 2px; height: 29px;">
                            {{--<option value="0" selected="">Select a Status</option>--}}
                            @foreach($statusList as $item)
                                <option value="{{$item['value']}}" @if(isset($data->status) && $item['value']==$data->status) selected="selected" @endif>{{$item['text']}} </option>
                            @endforeach
                        </select>
                    </div>
                </div>
            </div>
            <div class="row">
                <label class="col-xs-4">Description</label>
                <div class="col-xs-8">
                    <textarea style="width: 100%" type="text" id="txt_note_detail" name="note">{{isset($data->note)?$data->note:''}}</textarea>
                </div>
            </div>
        </div>

        <div class="col-md-6">
            <div class="row">
                <label class="col-xs-4">Parent</label>
                <div class="col-xs-8">
                    <input id="parent_id" value="{{isset($data->parent_id)?$data->parent_id:''}}" style="width: 100%">
                </div>
            </div>
            <div class="row">
                <label class="col-xs-4">Icon</label>
                <div class="col-xs-8">
                    <div class="input-group iconpicker-container">
                        <input id="icon" class="form-control icp icp-auto iconpicker-element iconpicker-input" value="{{isset($data->icon)?$data->icon:''}}" style="width: 100%">
                        @if(isset($data->icon))
                            <span class="input-group-addon"><i class="fa {{$data->icon}}"></i></span>
                        @else
                            <span class="input-group-addon"><i class=""></i></span>
                        @endif
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div style="text-align: center">
        <button id='btn_save' type="button" class="btn btn-success btn-sm" >Save</button>
        <button id='btn_cancel' type="button" class="btn btn-default btn-sm" data-dismiss="modal" aria-hidden="true">Cancel</button>
    </div>
</form>
<script>
    $('.icp').iconpicker({
        hideOnSelect: true
    });

    $('#parent_id').combotree({
        url: "{{route('admin.category.option')}}"+'?except_id='+"{{isset($data->id)?$data->id:''}}",
        method:'GET',
        // data: JSON.parse('[{"id":1,"text":"City","children":[{"id":11,"text":"Wyoming","children":[{"id":111,"text":"Albin"}]}]}]'),
        // required: true
    });
    function backToIndex(){
        document.location.href="{{route('admin.category.index')}}";
    }
    $('#btn_cancel').click(function(){
        backToIndex();
    });
    $('#btn_save').click(function(){
        var data = {
            id  : $('#txt_id').val(),
            category_name : $('#txt_categoryName_detail').val(),
            note : $('#txt_note_detail').val(),
            status : $('#cbo_status_detail').val(),
            parent_id : $('#parent_id').val(),
            icon : $('#icon').val()
        };
        $.ajax({
            type:'post',
            url:"{{route('admin.category.save')}}",
            data:JSON.stringify(data),
            dataType:'json',
            contentType:'application/json',
            success:function(res){
                if(res['status']){
                    backToIndex();
                    toastr.success(res['message']);
                }
                else{
                    toastr.error(res['message']);
                }
            }
        });

    });
</script>
@endsection
