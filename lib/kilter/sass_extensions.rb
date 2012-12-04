module Sass::Script::Functions
  def filter_name(method_call)
    assert_type method_call, :String
    name = method_call.value[/^\s*([\w-]+)\(/, 1]
    Sass::Script::String.new(name)
  end
  declare :filter_name, args: [:method_call]
end
