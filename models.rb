require 'dm-core'

class Person
  include DataMapper::Resource
  
  property :id, Serial
  property :name, Text
  property :password_hash, Text
  property :password_salt, Text
end