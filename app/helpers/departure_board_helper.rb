module DepartureBoardHelper
  def scheduled_time(data)
    Time.at(data.to_i).to_s(:short_time)
  end

  def track(data)
    data.present? ? data : "TBD"
  end

end
