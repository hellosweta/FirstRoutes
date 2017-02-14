class ContactShare < ActiveRecord::Base
  validates :contact_id, presence: true, uniqueness: {:scope => :user_id}
  # validates :name, presence: true, uniqueness: {:scope => :email}
  belongs_to :contact,
  primary_key: :id,
  foreign_key: :contact_id,
  class_name: :Contact

  belongs_to :receiver,
  primary_key: :id,
  foreign_key: :user_id,
  class_name: :User,
  dependent: :destroy


end
