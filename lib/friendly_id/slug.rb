module FriendlyId
  # A FriendlyId slug stored in an external table.
  #
  # @see FriendlyId::History
  class Slug < ActiveRecord::Base
    set_table_name "slugs"

    belongs_to :sluggable, :polymorphic => true

    def to_param
      slug
    end

  end
end
