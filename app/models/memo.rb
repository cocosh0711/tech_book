class Memo < ApplicationRecord
  validates :content, presence: true
  validates :pages, presence: true
end
