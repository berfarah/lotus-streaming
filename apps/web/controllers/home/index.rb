module Web::Controllers::Home
  class Index
    include Web::Action

    def call(params)
      self.format = :text
      self.body = Enumerator.new do |y|
        yield "one"
        sleep 1
        yield "two"
        sleep 1
        yield "three"
      end
    end
  end
end
