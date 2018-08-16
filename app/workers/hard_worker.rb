class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    Phone.each do |p|
      if Time.now - p.start_time >= 500
        p.update(status: -1)
      end
    end
  end
end
