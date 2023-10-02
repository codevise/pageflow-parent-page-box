require 'pageflow/parent_page_box/engine'
require 'pageflow/parent_page_box/version'

module Pageflow
  module ParentPageBox
    def self.plugin
      ParentPageBox::Plugin.new
    end

    def self.widget_type
      Pageflow::React.create_widget_type('parent_page_box', 'parent_page_box')
    end
  end
end
