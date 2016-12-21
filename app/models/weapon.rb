class Weapon < ApplicationRecord
  belongs_to :group

  validates :name, presence: true

  def as_json(options = {})
    super(options.merge(:include => {
                          :group => {
                            :except => [:created_at, :updated_at]
                          }
                        })
    )
  end
end
