class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
  accepts_nested_attributes_for :user, reject_if: proc { |attributes| attributes.all? { |key, value| value.blank? } }

  def reject_comment(attributes)
    attributes[:content].blank?
  end

end
