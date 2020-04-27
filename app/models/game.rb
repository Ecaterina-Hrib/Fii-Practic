class Game < ApplicationRecord
    self.inheritance_column = :foo
    attr_accessor :type
   
end