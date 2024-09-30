class Virement < ApplicationRecord
  belongs_to :emeteur, class_name: 'CompteClient'
  belongs_to :receveur, class_name: 'CompteClient'
end
