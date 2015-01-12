class DeviceStatusView < UIView
  def rmq_build
    q = rmq(self)
    q.apply_style :root_view
    q.append(UILabel, :device_label)
    q.append(UILabel, :gps_label)
    q.append(UILabel, :latitude_label)
    q.append(UILabel, :latitude_value).tag(:latitude_value)
    q.append(UILabel, :longitude_label)
    q.append(UILabel, :longitude_value).tag(:longitude_value)
    q.append(UILabel, :battery_label)
    q.append(UILabel, :battery_label_value).tag(:battery_value)
  end
end