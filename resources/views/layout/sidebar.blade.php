<div class="sidenav" id="sidenav">
    <div class="closebtn" onclick="closeNav()">&times;</div>
        @foreach ($product as $item)
        <div onclick="openSub({{$item->id}})" class="insidenav" id="insidenav">{{$item->name}}
        <span class="iconsidebar" id="iconplus"><i id="icon{{$item->id}}" class="fas fa-plus"></i></span>
        </div>
            <div class="subsidebar" id='subsidebar{{$item->id}}'>
                @foreach($item->type as $typeItem)
                <a href="/type/{{$typeItem->id}}" class="link"> {{$item->name}} {{ $typeItem->type }}</a>
                @endforeach
            </div>
        @endforeach
</div>