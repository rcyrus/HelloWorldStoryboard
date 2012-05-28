//
//  ItemCell.h
//  HelloWorldStoryboard
//
//  Created by Rich Warren on 5/15/12.
//  Copyright (c) 2012 Freelance Mad Science Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ItemCell : UITableViewCell

@property (strong, nonatomic) IBOutlet UILabel* label;
@property (strong, nonatomic) IBOutlet UITextField* textField;

- (IBAction)textChanged:(id)sender;

@end
