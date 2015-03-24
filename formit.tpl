[[!FormIt@contacts?
    &emailTpl=`ContactsEmailChunk`
    &redirectTo=`29`
]]
 
[[!+fi.error_message:notempty=`<p>[[!+fi.error_message]]</p>`]]
 
<form action="[[~[[*id]]]]" method="post" class="form">
  <input type="hidden" name="nospam:blank" value="" />

  <label for="name">
    Ваше имя
    <span class="form-error">[[!+fi.error.name]]</span>
  </label>
  <input type="text" required="required" placeholder="Имя Фамилия" name="name" id="name" value="[[!+fi.name]]" />
 
  <label for="email">
    Ваш E-Mail
    <span class="form-error">[[!+fi.error.email]]</span>
  </label>
  <input type="text" required="required" placeholder="name@example.com" name="email" id="email" value="[[!+fi.email]]" />

  <label for="tel">
    Ваш телефон
    <span class="form-error">[[!+fi.error.phone]]</span>
  </label>
  <input type="tel" required="required" placeholder="+7 999 123456" name="tel" id="tel" value="[[!+fi.tel]]" />
  
  <label for="text">
    Текст
    <span class="form-error">[[!+fi.error.text]]</span>
  </label>
  <textarea name="text" required="required" placeholder="Ваш текст" id="text" cols="55" rows="10" value="[[!+fi.text]]">[[!+fi.text]]</textarea>

  <input type="submit" value="Отправить →">
</form>
