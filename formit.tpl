[[!FormIt?
    &emailTpl=`ContactsEmailChunk`
    &clearFieldsOnSuccess=`1`
    &emailConvertNewlines=`1`
    &emailHtml=`1`
    &emailMultiWrapper=`[[+value]]`
    &errTpl=`<span class="error">[[+error]]</span>`
    &placeholderPrefix=`fi.`
    &spamCheckIp=`1`
    &spamEmailFields=`email`
    &store=`1`          
    &storeTime=`300`
    &successMessage=`Сообщение отправлено`
    &successMessagePlaceholder=`fi.successMessage`
    &trimValuesBeforeValidation=`1`
    &validate=`email:required,tel:required,text:required,name:required`
    &validationErrorBulkTpl=`<li>[[+error]]</li>`
    &validationErrorMessage=`<p class="error">В форме содержатся ошибки</p>`
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
