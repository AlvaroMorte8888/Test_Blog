class Article < ApplicationRecord
  has_many :comments #Добавить другую сторону связи
  validates :title, presence: true, length: {minimum: 5}

  VALID_STATUSES = ['public', 'private', 'archived']

  validates :status, in: VALID_STATUSES

  def archived?
    status == 'archived'
  end
end
