require 'active_support/core_ext/string/output_safety'

class ButtonFileInput < SimpleForm::Inputs::FileInput
  attr_accessor :output_buffer

  def input(wrapper_options = nil)
    options[:class] = 'btn btn-default' unless options[:class]
    input_html_options[:class] << 'hidden inputfile'
    merged_input_options = merge_wrapper_options(input_html_options, wrapper_options)

    (@builder.file_field(attribute_name, merged_input_options) + button).html_safe
  end

  private

  def button
    content_tag(:div) do
      content_tag(:label, for: input_class) do
        content_tag(:span, class: options[:class]) do
          label_text.present? ? label_text : I18n.t("simple_form.labels.defaults.#{attribute_name}")
        end
      end
    end
  end
end
