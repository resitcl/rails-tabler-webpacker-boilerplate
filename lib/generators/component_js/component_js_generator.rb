class ComponentJsGenerator < Rails::Generators::Base
  argument :component_name, required: true, desc: "Component name, e.g: button"

  def create_view_file
    create_file "#{component_path}/_#{component_name}.html.erb"
  end

  def create_css_file
    create_file "#{component_path}/#{component_name}.css"
  end

  def create_js_file
    create_file "#{component_path}/#{component_name}.js" do
      # require component's CSS inside JS automatically
      "import './#{component_name}.css';\n"
    end
    append_to_file 'app/javascript/components/index.js' do
      "import './#{component_name}/#{component_name}';\n"
    end
  end

  protected

  def component_path
    "app/javascript/components/#{component_name}"
  end
end
