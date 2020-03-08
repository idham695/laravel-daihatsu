<div class="sidenav" id="sidenav">
    <div class="closebtn" onclick="closeNav()">&times;</div>
        @foreach ($type as $t)
        <div onclick="openSub({{$t->id}})" class="insidenav" id="insidenav">{{$t->name}}
            <span class="iconsidebar" id="iconplus"><i id="icon{{$t->id}}" class="fas fa-plus"></i></span>
        </div>
        <div class="subsidebar" id='subsidebar{{$t->id}}'>
            <a href="#" class="link">{{$t->name}} {{ $t->type }}</a>
        </div>
            @endforeach
</div>