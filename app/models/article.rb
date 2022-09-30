class Article < ApplicationRecord
  include Visible

  has_many :comments, dependent: :destroy #elimina los comentarios sí el articulo es eliminado

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  belongs_to :user 
end
