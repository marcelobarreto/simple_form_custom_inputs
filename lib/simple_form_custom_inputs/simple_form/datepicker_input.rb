class DatepickerInput < SimpleForm::Inputs::StringInput
  def input(wrapper_options)
    input_html_options[:data] ||= {}
    input_html_options[:class] << 'datepicker'
    input_html_options[:data].merge!({ locale: I18n.locale })
    super
  end
end
