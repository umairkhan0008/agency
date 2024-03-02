class Post < ApplicationRecord
    has_one_attached :image


  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "id_value", "title", "updated_at"]
  end
  def self.ransackable_associations(auth_object = nil)
    ["image_attachment", "image_blob"]
  end


  enum type: { designing: 0, development: 1, mobile: 2 }

  attribute :type
  self.inheritance_column = :post_type


  def type_display
    case self.type
    when 'designing'
      'Designing Type'
    when 'development'
      'Development Type'
    when 'mobile'
      'Mobile type'
    else
      'Unknown Type'
    end
  end
end
