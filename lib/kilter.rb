require 'compass'
extension_path = File.expand_path(File.join(File.dirname(__FILE__), '..'))
Compass::Frameworks.register('kilter', path: extension_path)

require_relative 'kilter/sass_extensions'

module Kilter
end
