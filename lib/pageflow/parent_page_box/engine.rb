module Pageflow
  module ParentPageBox
    class Engine < Rails::Engine
      isolate_namespace Pageflow::ParentPageBox

      if Rails.respond_to?(:autoloaders)
        lib = root.join('lib')

        config.autoload_paths << lib
        config.eager_load_paths << lib

        initializer 'pageflow_parent_page_box.autoloading' do
          Rails.autoloaders.main.ignore(
            lib.join('pageflow-parent-page-box.rb'),
            lib.join('pageflow/parent_page_box/version.rb')
          )
        end
      else
        config.autoload_paths << File.join(config.root, 'lib')
      end

      config.i18n.load_path += Dir[config.root.join('config', 'locales', '**', '*.yml').to_s]
    end
  end
end
