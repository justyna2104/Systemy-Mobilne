//
//  ViewController.h
//  Zadanie2iOS
//
//  Created by Justyna on 10/17/21.
//  Copyright © 2021 Justyna. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"
@interface ViewController : UIViewController <SecondViewControllerDelegate>
@property (nonatomic, weak) IBOutlet UILabel *messageLable;
@property (nonatomic,weak) IBOutlet UITextField *inputField;
@property (nonatomic,weak) IBOutlet UITextField *inputField2;
-(IBAction)enter;
@end

