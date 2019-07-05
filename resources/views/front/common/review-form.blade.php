<input type="hidden" value="{{App::getLocale()}}" name="locale">
<div class="theme-material-card">
    <div class="sub-ttl layer-ttl-white">Write a Review</div>
    <div class="row comment-form">
        <div class="col-sm-6">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                <input class="mdl-textfield__input" type="text" name="name" id="hm-booking-form--name" required>
                <label class="mdl-textfield__label" for="comment-name">Full Name <em> *</em></label>
                <span class="mdl-textfield__error">Please Enter Valid Name!</span>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label form-input">
                <input class="mdl-textfield__input" type="text" name="email" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,3}$" id="hm-booking-form--email">
                <label class="mdl-textfield__label" for="comment-email">Email</label>
                <span class="mdl-textfield__error">Please Enter Valid Email!</span>
            </div>
        </div>
        <div class="col-sm-12">
            <div class="mdl-textfield mdl-js-textfield form-input">
                <textarea class="mdl-textfield__input" name="comment" rows="4" id="package-page--comment-message" ></textarea>
                <label class="mdl-textfield__label" for="comment-message">Your Comment ...</label>
            </div>
        </div>
        <div class="col-sm-12">
            <div class="form-submit">
                <button type="submit" class="mdl-button mdl-js-button mdl-js-ripple-effect button button-primary">Submit Comment</button>
            </div>
        </div>  
    </div>
</div>