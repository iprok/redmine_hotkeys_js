module HotkeysPlugin
  module Hooks
    class LayoutHook < Redmine::Hook::ViewListener
	
      def view_layouts_base_html_head(context={})
        <<-TAGS
          #{stylesheet_link_tag 'hotkeys', :plugin => 'redmine_hotkeys_js'}
          #{javascript_include_tag 'hotkeys', :plugin => 'redmine_hotkeys_js'}
          <link href="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.2/css/select2.min.css" rel="stylesheet" />
			<script src="//cdnjs.cloudflare.com/ajax/libs/select2/4.0.2/js/select2.min.js"></script>
        TAGS
      end

    end
  end
end
