Rails.application.routes.draw do
    scope PluginRoutes.system_info["relative_url_root"] do
      scope '(:locale)', locale: /#{PluginRoutes.all_locales}/, :defaults => {  } do
        # frontend
        namespace :plugins do
          namespace :cama_autocomplete do
            get 'index' => 'front#index'
            get 'posts/search'
          end
        end
      end

      #Admin Panel
      scope :admin, as: :admin, path: PluginRoutes.system_info['admin_path_name'] do
        namespace :plugins do
          namespace :cama_autocomplete do
            controller :admin do
              get :index
              get :settings
              post :save_settings
            end
          end
        end
      end

      # main routes
      #scope 'cama_autocomplete', module: 'plugins/cama_autocomplete/', as: 'cama_autocomplete' do
      #  Here my routes for main routes
      #end
    end
  end
