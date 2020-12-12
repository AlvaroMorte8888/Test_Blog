class Article < ApplicationRecord
  has_many :comments #Добавить другую сторону связи
  validates :title, presence: true, length: {minimum: 5}
  
  def archived?
    status == 'archived'
  end
end
