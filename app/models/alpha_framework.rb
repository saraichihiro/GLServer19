class AlphaFramework < ApplicationRecord
  belongs_to :project
  belongs_to :alpha_framework_def

  has_many :alpha_alphas, :dependent => :destroy
end
