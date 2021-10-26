//
//  SecondViewController.h
//  Zadanie2iOS
//
//  Created by Justyna on 10/18/21.
//  Copyright © 2021 Justyna. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SecondViewController;
@protocol SecondViewControllerDelegate <NSObject>

-(void) addItemViewController:(SecondViewController *) controller didFinishEnteringItem:(NSString *) item;
//@property (nonatomic, weak) id <SecondViewControllerDelegate> delegate;
@end

@interface SecondViewController : UIViewController
@property (nonatomic, weak) IBOutlet UITextField *modifiedSurnameTextField;
@property NSString *surname;
@property (nonatomic, weak) id <SecondViewControllerDelegate> delegate;
-(IBAction)done;
@end
