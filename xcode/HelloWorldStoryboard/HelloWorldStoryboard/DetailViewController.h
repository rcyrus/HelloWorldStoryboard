//
//  DetailViewControllerViewController.h
//  HelloWorldStoryboard
//
//  Created by Rich Warren on 5/15/12.
//  Copyright (c) 2012 Freelance Mad Science Labs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UITableViewController <UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UITextView *descriptionTextField;
- (IBAction)doTouched:(id)sender;
- (IBAction)reTouched:(id)sender;
- (IBAction)miTouched:(id)sender;

@end
