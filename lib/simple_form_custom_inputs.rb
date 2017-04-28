require "simple_form_custom_inputs/version"

autoload :SwitchInput, "simple_form_custom_inputs/simple_form/switch_input"
autoload :MaskedInput, "simple_form_custom_inputs/simple_form/masked_input"
autoload :DatepickerInput, "simple_form_custom_inputs/simple_form/datepicker_input"

module SimpleFormCustomInputs
  class Engine < ::Rails::Engine; end
end
