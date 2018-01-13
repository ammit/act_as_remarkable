module ActAsRemarkable
  class Railtie < Rails::Railtie
    initializer 'act_as_remarkable' do |app|
      ActiveSupport::on_load(:action_view) do
        include ActAsRemarkable::ActionViewExtension
      end

      ActiveSupport::on_load(:active_record) do
        include ActAsRemarkable::ActiveRecordModelExtension
      end
    end
  end
end