class Post < ApplicationRecord
  belongs_to :author
  belongs_to :creator, class_name: 'Creator'

end
