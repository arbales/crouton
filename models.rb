require 'dm-core'

class Person
  property :id, Serial
  property :name, Text
  porperty :password_hash, Text
  property :password_salt, Text
end