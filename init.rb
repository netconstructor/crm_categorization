require "fat_free_crm"

FatFreeCRM::Plugin.register(:crm_categorization, initializer) do
          name "Fat Free Categorization System"
        author "Jose Luis Gordo Romero"
       version "0.1"
   description "Categorization System based on tags"
  dependencies :haml, :simple_column_search, :uses_user_permissions
           tab :admin do |tabs|
             tabs.insert(1, { :text => "Categories", :url => { :controller => "categories" } })
           end  
end

# Require the actual code after all plugin dependencies have been resoled.
require "crm_categorization"
require "show_account_hook"
#require "top_section_account_hook.rb"
