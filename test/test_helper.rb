require 'rubygems'
require 'active_support'
require 'active_record'
require File.dirname(__FILE__) + '/../rails/init'

ActiveRecord::Base.configurations = {'sqlite3' => {:adapter => 'sqlite3', :database => ':memory:'}}
ActiveRecord::Base.establish_connection('sqlite3')

ActiveRecord::Schema.define(:version => 0) do
  create_table :users do |t|
    t.boolean :admin,    :default => false
    t.string  :login,    :default => ''
    t.string  :password, :default => ''
  end
  
  create_table :accounts do |t|
    t.string :subdomain, :default => ''
    t.string :title,     :default => ''
  end
  
  create_table :emails do |t|
    t.references :user_id
    t.string :email_address
  end
end

class User < ActiveRecord::Base
  has_many :emails
  validates_presence_of :login, :password
  attr_accessible :login, :password
  attr_accessor   :password_confirmation
end

class Email < ActiveRecord::Base
  belongs_to :user
  validates_presence_of :user, :email_address
  attr_accessible :email_address
end

class Account < ActiveRecord::Base; end