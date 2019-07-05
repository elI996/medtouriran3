<form action="{{route('category.request')}}" class="form-horizontal cform-2" method="post">

    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
        <i class="fa fa-user-o"></i>
        <input class="mdl-textfield__input" type="text" name="first_name" id="hm-booking-form--name" required>
        <label class="mdl-textfield__label" for="comment-name">Full Name <em> *</em></label>
        <span class="mdl-textfield__error">Please Enter Valid Name!</span>
    </div>
    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
        <i class="fa fa-envelope-o"></i>
        <input class="mdl-textfield__input" type="text" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="hm-booking-form--email">
        <label class="mdl-textfield__label" for="comment-email">Email</label>
        <span class="mdl-textfield__error">Please Enter Valid Email!</span>
    </div>
    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
        <i class="fa fa-phone"></i>
        <input class="mdl-textfield__input" type="text" name="phone" pattern="[0-9+-]*" id="hm-booking-form--number" required>
        <label class="mdl-textfield__label" for="booking-form--number">Mobile Number <em> * </em><small>( WhatsApp is Prefferd )</small></label>
        <span class="mdl-textfield__error">Please Enter Valid Number! For Example: +989120000000</span>
    </div>
    <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
        <i class="fa fa-hospital-o"></i>
        <select name="category_id" class="mdl-selectfield__select" id="sideapnt-department">
            <option value=""></option>
            @foreach ($categories as $category)
            <option value="{{$category->id}}">{{$category->getTranslatedAttribute('title')}}</option>  
            @endforeach
        </select>
        <label class="mdl-selectfield__label" for="sideapnt-department">Choose Department</label>
    </div>
    <div class="mdl-selectfield mdl-js-selectfield mdl-selectfield--floating-label form-input-icon">
        <i class="fa fa-user-md"></i>
        <select name="doctor_id" class="mdl-selectfield__select" id="sideapnt-doctor">
            <option value=""></option>
            @foreach($all_doctors as $doctor)
            <option value="{{$doctor->id}}">{{$doctor->getTranslatedAttribute('name')}}</option>
            @endforeach
        </select>
        <label class="mdl-selectfield__label" for="sideapnt-doctor">Choose Doctor</label>
    </div>
    <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input-icon">
        <i class="fa fa-calendar-o"></i>
        <input name="date" class="mdl-textfield__input" type="text" id="sideapnt-date" onfocus="(this.type='date')" onblur="(this.type='text')">
        <label class="mdl-textfield__label" for="sideapnt-date">Date</label>
        <span class="mdl-textfield__error">Please Enter Valid Date!</span>
    </div>
    <div class="side-error"></div>
    <button class="btn button-primary button-lg side-appointment" data-loading-text="<i class='fa fa-spinner fa-spin'></i> Processing">Submit</button>
    @csrf
</form>