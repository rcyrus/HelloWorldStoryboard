class MasterViewController < UITableViewController
  
  def viewDidLoad
            
    # Initialize our moc data
    # Remember: the view could be loaded and unloaded multiple times
    # but we only want to load our data the first time  
    @data ||= ['Apple', 'Peach', 'Banana', 'Raspberry', 'Lemon', 'Orange', 'Grape', 'Kiwi']
    
    if @description == nil then
      
      @description = {}

      @data.each do | item |
        @description[item] = 'Default Description'
      end
      
    end
  end
  
  # fill in the table view
  def numberOfSectionsInTableView(tableView)
    1
  end
  
  def tableView(tableView, numberOfRowsInSection:secton)
    @data.count
  end
  
  def tableView(tableView, cellForRowAtIndexPath:path)
    
    cell = tableView.dequeueReusableCellWithIdentifier("ItemCell")
    
    item = @data[path.row]
    cell.label.text = item
    cell.textField.text = @description[item]
    cell.delegate = self
    
    cell
    
  end
  
  # segue methods
  def prepareForSegue(segue, sender:sender)
    
    if (segue.identifier == 'showDetailView') then
            
      detailViewController = segue.destinationViewController
      path = self.tableView.indexPathForSelectedRow
      cell = self.tableView.cellForRowAtIndexPath(path)
      
      item = @data[path.row]
      detailViewController.titleText = item
      detailViewController.descriptionText = cell.textField.text
      detailViewController.delegate = self
      
    end
  end
  
  # Detail view delegate method
  def detailViewControllerDone(detailViewController)
    
    item = detailViewController.titleText
    description = detailViewController.descriptionText
    
    @description[item] = description

    path = self.tableView.indexPathForSelectedRow
    cell = self.tableView.cellForRowAtIndexPath(path)
    
    cell.textField.text = description if cell
    
  end
  
  # ItemCell delegate method
  # this didn't need to be an Objective-C style method. It could have been a regular Ruby method.
  def setDescription(description, forItem:item) 
    @description[item] = description
  end
end