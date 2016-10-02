class Account < ApplicationRecord
    validates :accttype, presence: true
    validates :name, presence: true
    validates :balance, presence: true
    
    belongs_to :user
end
