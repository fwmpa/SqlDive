class Book < ApplicationRecord
  belongs_to :author
  belongs_to :genre

  accepts_nested_attributes_for :author, #accepts if att:name is not blank
                                    reject_if: lambda { |attrs| attrs['name'].blank? }
  accepts_nested_attributes_for :genre, #accepts if att:name is not blank
                                    reject_if: lambda { |attrs| attrs['name'].blank? }
end
