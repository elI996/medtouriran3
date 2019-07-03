
 @foreach ($package->items as $item)
 <p><i class="{{$item->icon}}"></i>{{$item->title}}</p>
 @endforeach