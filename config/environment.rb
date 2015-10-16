require 'rubygems'
require 'bundler/setup'
require 'lotus/setup'
require_relative '../lib/test'
require_relative '../apps/web/application'

Lotus::Container.configure do
  mount Web::Application, at: '/'
end
