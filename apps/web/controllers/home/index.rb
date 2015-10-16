module Lotus
  class RenderingPolicy
    def render(env, response)
      body = _render(env, response)
      response[BODY] = Array(body) unless body.nil? || body.respond_to?(:each)
      response
    end
  end
end

class Enumerator; def empty?; end end

module Web::Controllers::Home
  class Index
    include Web::Action

    def call(params)
      self.format = :text
      self.body = Enumerator.new do |y|
        y << "one"
        sleep 1
        y << "two"
        sleep 1
        y << "three"
      end
    end
  end
end
