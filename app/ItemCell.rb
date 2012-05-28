class ItemCell < UITableViewCell
  attr_accessor :label, :textField, :delegate
  
  def textChanged(sender)
    puts 'Text has changed'
    delegate.setDescription(textField.text, forItem:label.text)
  end
  
end