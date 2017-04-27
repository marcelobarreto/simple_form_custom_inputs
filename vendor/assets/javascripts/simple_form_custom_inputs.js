var initSwitchery = function() {
  var elem = $('.js-switch')
  if (elem[0]){
    var init = new Switchery(elem[0], {
      color: elem.data('color'),
      secondaryColor: elem.data('secondaryColor'),
      jackColor: elem.data('jackColor'),
      jackSecondaryColor: elem.data('jackSecondaryColor'),
      size: elem.data('size')
    });
  }
}

var initMasks = function() {
  var input = $('.masked input');
  var pattern = input.data('pattern');
  input.mask(pattern);
}

var ready = function() {
  initSwitchery();
  initMasks();
};

if (typeof Turbolinks == "undefined") {
  $(document).ready(ready);
} else {
  $(document).on("turbolinks:load", ready);
}
