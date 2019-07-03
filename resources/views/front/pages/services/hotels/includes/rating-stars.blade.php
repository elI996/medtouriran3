<div class="rating-stars">
    <span>
        @for($i=1;$i<=$hotel->star;$i++)
        <span class="fa fa-star checked"></span>
        @endfor
        @for($i=$hotel->star;$i<5;$i++)
        <span class="fa fa-star"></span>
        @endfor
    </span>
</div>