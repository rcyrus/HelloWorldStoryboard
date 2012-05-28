class AppDelegate
    
  def application(application, didFinishLaunchingWithOptions:launchOptions)        
    true
  end
  
  # Cannot define these using attr_accessor :window. 
  def window
    @window
  end
  
  def setWindow(window)
    @window = window
  end
  
end
