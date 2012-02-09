//
//  ViewController.h
//  InDictionary
//
//  Created by 荒井 達哉 on 12/02/09.
//  Copyright (c) 2012年 genesix, Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UITextField *_textField;
    UIButton    *_button;
}

@property (nonatomic, retain) IBOutlet UIButton *button;
@property (nonatomic, retain) IBOutlet UITextField *textField;

- (IBAction)search:(id)sender;

@end
