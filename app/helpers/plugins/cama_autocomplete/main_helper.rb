module Plugins::CamaAutocomplete::MainHelper
  def self.included(klass)
    # klass.helper_method [:my_helper_method] rescue "" # here your methods accessible from views
  end

  # here all actions on going to active
  # you can run sql commands like this:
  # results = ActiveRecord::Base.connection.execute(query);
  # plugin: plugin model
  def cama_autocomplete_on_active(plugin)
  end

  # here all actions on going to inactive
  # plugin: plugin model
  def cama_autocomplete_on_inactive(plugin)
  end

  # here all actions to upgrade for a new version
  # plugin: plugin model
  def cama_autocomplete_on_upgrade(plugin)
  end

  # hook listener to add settings link below the title of current plugin (if it is installed)
  # args: {plugin (Hash), links (Array)}
  # permit to add unlimmited of links...
  def cama_autocomplete_on_plugin_options(args)
    args[:links] << link_to(I18n.t('cama_autocomplete.settings'), admin_plugins_cama_autocomplete_settings_path)
  end
end
