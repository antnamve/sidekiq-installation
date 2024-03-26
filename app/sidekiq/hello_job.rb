class HelloJob
  include Sidekiq::Job

  def perform(*args)
    puts 'Hello world'
  end
end
