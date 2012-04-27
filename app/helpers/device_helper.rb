# This file is part of URM Usability Reporting Manager
# Copyright (C) 2012 internettechnik 
# Licensed under the GNU GPLv3 (http://www.gnu.org/licenses/gpl.txt) license.


module DeviceHelper

  
  # summary information about ALL the devices
  def alldevices_summary(report)
    return if report.nil?
    dvs= report.devices ? report.devices.sort : nil
    #pluralize(dvs.size,I18n.t(:'devices.device.device'))+
    "(#{dvs.size}): "+dvs.collect {|dv| 
      dv.devicetype.blank? ? "" : "#{dv.devicetype}: " + dv.title.to_s.truncate(15)
      }.join(", ")
  end
  
  
end