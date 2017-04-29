require 'active_support/core_ext/string/output_safety'

class DropFileInput < SimpleForm::Inputs::FileInput
  attr_accessor :output_buffer

  def input(wrapper_options = nil)
    input_html_options[:class] << 'drop-file'
    input_html_options[:multiple] = true if options[:multiple]
    merged_input_options = merge_wrapper_options(input_html_options, wrapper_options)

    @builder.file_field(attribute_name, merged_input_options)
  end
end
