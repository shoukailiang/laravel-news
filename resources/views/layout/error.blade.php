@if(count($errors))
    <div>
        @foreach($errors->all() as $error)
            <p style="color: crimson">{{$error}}</p>
        @endforeach
    </div>
@endif