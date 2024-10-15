class Client < ApplicationRecord
    has_many :virements
    has_many :credits
    has_many :compte_clients
end
