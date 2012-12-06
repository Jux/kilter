require 'bundler'
Bundler.require(:default, :development, :test)

require_relative '../helpers'

require 'test/unit'
require 'compass/test_case'


# modified from http://compass-style.org/help/tutorials/testing/
class StylesheetsTest < Compass::TestCase
  def test_stylesheets
    my_sass_files.each do |sass_file|
      assert_compiles(sass_file) do |result|
        assert(!result.nil?, "#{sass_file} should not be nil.")
        assert(!result.empty?, "#{sass_file} should not be an empty string.")
      end
    end
  end

  protected
  def my_sass_files
    Dir.glob(File.expand_path(File.join(File.dirname(__FILE__), '..', './**/[^_]*.{sass,scss}')))
  end
end
