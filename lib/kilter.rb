require 'compass'
Compass.configure_sass_plugin!

require_relative 'kilter/sass_extensions'

extension_path = File.expand_path(File.join(File.dirname(__FILE__), '..'))
Compass::Frameworks.register('kilter', path: extension_path)


module Kilter
end
