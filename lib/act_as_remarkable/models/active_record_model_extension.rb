module ActAsRemarkable
  module ActiveRecordModelExtension
    extend ActiveSupport::Concern

    class_methods do
      def has_remarks
        has_many :remarks, as: :remarkable, dependent: :destroy

        accepts_nested_attributes_for :remarks, allow_destroy: true

        after_initialize do |record|
          record.remarks.build if record.remarks.count <= 0
        end
      end
    end
  end
end