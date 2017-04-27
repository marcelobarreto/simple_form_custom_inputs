class SwitchInput < SimpleForm::Inputs::BooleanInput
  def input(wrapper_options)
    input_html_options[:class] ||= {}
    input_html_options[:class] << 'js-switch'

    input_html_options[:data] ||= {}
    input_html_options[:data].merge!({ color: "#12CA9E" }) unless input_html_options[:data][:color]
    input_html_options[:data].merge!({ size: "medium" }) unless input_html_options[:data][:size]
    super
  end
end
