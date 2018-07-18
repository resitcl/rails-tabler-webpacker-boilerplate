require 'rails/generators/erb'
require 'rails/generators/resource_helpers'

class TablerScaffoldGenerator < Erb::Generators::Base
  source_root File.expand_path('../templates', __FILE__)

  include Rails::Generators::ResourceHelpers

  argument :attributes, type: :array, default: [], banner: "field:type field:type"

  def create_root_folder
    empty_directory File.join("app/views", controller_file_path)
  end

  def copy_view_files
    available_views.each do |view|
      filename = filename_with_extensions(view)
      template filename, File.join("app/views", controller_file_path, filename)
    end
  end

  private

  def available_views
    %w(index edit show new _form)
  end
end
