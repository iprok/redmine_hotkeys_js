module HotkeysPlugin
  module Hooks
    class LayoutHook < Redmine::Hook::ViewListener
	
      def view_layouts_base_html_head(context={})
        <<-TAGS
          #{stylesheet_link_tag 'hotkeys', :plugin => 'redmine_hotkeys_js'}
          #{javascript_include_tag 'hotkeys', :plugin => 'redmine_hotkeys_js'}
          <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet" />
          <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>
        TAGS
      end

    end
  end
end
