//= require ./ezdz

var initSwitchery = function() {
  var elems = Array.prototype.slice.call(document.querySelectorAll('.js-switch'));

  elems.forEach(function(html) {
    var elem = $("#" + html.id)
    var switchery = new Switchery(elem[0], {
      color: elem.data("color"),
      secondaryColor: elem.data("secondaryColor"),
      jackColor: elem.data("jackColor"),
      jackSecondaryColor: elem.data("jackSecondaryColor"),
      size: elem.data("size")
    });
  });
};

var initMasks = function() {
  var input = $(".masked input");
  var pattern = input.data("pattern");
  if (input && pattern)
    input.mask(pattern);
};

var initDatepicker = function() {
  try {
    $(".datepicker input").datepicker({
      autoclose: true,
      todayHighlight: true,
      language: $(".datepicker input").data("locale")
    });
  }

  catch (e) {

  }
};

var handleAttachementLabel = function() {
  var inputs = document.querySelectorAll( '.inputfile' );
  Array.prototype.forEach.call(inputs, function(input) {
    var label = input.nextElementSibling,
    labelVal = label.innerHTML;

    input.addEventListener('change', function(e) {
      var fileName = '';
      if( this.files && this.files.length > 1 )
        fileName = (this.getAttribute('data-multiple-caption' ) || '').replace('{count}', this.files.length);
      else
        fileName = e.target.value.split('\\').pop();

      if(fileName)
        label.querySelector('span').innerHTML = fileName;
      else
        label.innerHTML = labelVal;
    });
  });
};

var initDropFile = function() {
  var input = $(".drop-file");
  input.ezdz({
    className: input.attr('class'),
    text: input.data('text'),
    previewImage: input.data('preview')
  });
};

var ready = function() {
  initSwitchery();
  initMasks();
  initDatepicker();
  handleAttachementLabel();
  initDropFile();
};

$(document).on("ready turbolinks:load", ready);
