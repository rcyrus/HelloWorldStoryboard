class DetailViewController < UITableViewController
  
  #public attributes
  attr_accessor :titleText, :descriptionText
  
  #outlets
  attr_accessor :titleLabel, :descriptionTextField, :delegate
  
  def viewWillAppear(animated)
    
    super
    
    self.titleLabel.text = self.titleText;
    self.descriptionTextField.text = self.descriptionText
    
  end
  
  def viewWillDisappear(animated)
    
    super
    
    self.titleText = self.titleLabel.text
    self.descriptionText = self.descriptionTextField.text
    
    self.delegate.detailViewControllerDone(self)
    
  end
  
  # Actions
  def doTouched(sender)
    puts "<sing>Do</sing>"
  end
  
  def reTouched(sender)
    puts "<sing>Re</sing>"
  end
  
  def miTouched(sender)
    puts "<sing>Mi</sing>"
  end

end