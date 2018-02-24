class Plugins::CamaAutocomplete::AdminController < CamaleonCms::Apps::PluginsAdminController
  include Plugins::CamaAutocomplete::MainHelper
  def index
  end

  # show settings form
  def settings
  end

  # save values from settings form
  def save_settings
    @plugin.set_options(params[:options]) if params[:options].present? # save option values
    @plugin.set_metas(params[:metas]) if params[:metas].present? # save meta values
    @plugin.set_field_values(params[:field_options]) if params[:field_options].present? # save custom field values
    redirect_to url_for(action: :settings), notice: I18n.t('cama_autocomplete.settings_saved')
  end
  # add custom methods below ....
end
