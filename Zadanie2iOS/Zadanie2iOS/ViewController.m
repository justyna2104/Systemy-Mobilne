//
//  ViewController.m
//  Zadanie2iOS
//
//  Created by Justyna on 10/17/21.
//  Copyright © 2021 Justyna. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction) enter{
    NSString *yourName = self.inputField.text;
    NSString *myName = @"Justyna";
    NSString *message;
    
    if([yourName length] == 0){
        yourName =@"World";
    }
    
    if([yourName isEqualToString:myName]) {
        message = [NSString stringWithFormat:@"Hello %@! We have the same name:)", yourName];
    }else{
        message = [NSString stringWithFormat:@"Hello %@!", yourName];
    }
    
    self.messageLable.text = message;
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if([segue.identifier isEqualToString:@"sendSurnameSegue"]){
        SecondViewController *controller = (SecondViewController *) segue.destinationViewController;
        controller.surname = self.inputField2.text;
        controller.delegate = self;
    }
    
}

- (void) addItemViewController:(SecondViewController *)controller didFinishEnteringItem:(NSString *)item {
    NSLog(@"This was returned from SecondViewController %@", item);
    self.inputField2.text = item;
}

@end
