//
//  AddGroceyCatagoryViewController.m
//  Groceries App
//
//  Created by Sreekala Santhakumari on 2/14/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import "AddGroceyCatagoryViewController.h"

@interface AddGroceyCatagoryViewController ()

@end

@implementation AddGroceyCatagoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(IBAction)addGroceryCatagoryButtonPressed{
    
    GroceryCatagory *addGC = [[GroceryCatagory alloc]init];
    
    addGC.title = self.addgroceryCatagoryTextField.text;
    addGC.groceriesList = [NSMutableArray array];
    
    [self.delegate addGroceryCatagorySave:addGC];

    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)CloseButtonPressed{

    [self dismissViewControllerAnimated:YES completion:nil];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end


