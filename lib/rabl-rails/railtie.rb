module RablRails
  class Railtie < Rails::Railtie
    initializer "rabl.initialize" do |app|
      ActiveSupport.on_load(:action_view) do
        ActionView::Template.register_template_handler :rabl, RablRails::Handlers::Rabl
        RablRails.set_conversion_engines!
      end
    end
  end
end