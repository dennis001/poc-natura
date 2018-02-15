Before do
	$driver.start_driver
end

Before do |scenario|

	system("adb shell pm grant net.natura.semprepresente android.permission.ACCESS_FINE_LOCATION")
  
	system("adb shell pm grant net.natura.semprepresente android.permission.CAMERA")
  
	system("adb shell pm grant net.natura.semprepresente android.permission.READ_EXTERNAL_STORAGE")
  
	system("adb shell pm grant net.natura.semprepresente android.permission.WRITE_EXTERNAL_STORAGE")
  
  end
  
   
  
  After do |scenario|
  
	system("adb shell pm clear net.natura.semprepresente")
  
  end
  
After do
	$driver.driver_quit
end
