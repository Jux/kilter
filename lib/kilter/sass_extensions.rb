module Sass::Script::Functions
  FILTER_RX = /^\s*([\w-]+)\(([^\)]+)\)/

  def filter_name(method_call)
    assert_type method_call, :String
    name = method_call.value[FILTER_RX, 1]
    Sass::Script::String.new(name)
  end
  declare :filter_name, args: [:method_call]

  def filter_args(method_call)
    assert_type method_call, :String
    args = method_call.value[FILTER_RX, 2]
    Sass::Script::Parser.parse(args, 0, 0)
  end
  declare :filter_args, args: [:method_call]
end
