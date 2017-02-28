//
//  AddGroceryItemViewController.m
//  Groceries App
//
//  Created by Sreekala Santhakumari on 2/16/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import "AddGroceryItemViewController.h"

@interface AddGroceryItemViewController ()

@end

@implementation AddGroceryItemViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)AddGroceryItemButtonPressed{
    
    GroceryList *addGl = [[GroceryList alloc]init];
    addGl.title1 = self.addgroceryItemTextField.text;
    [self.delegate addGroceyItemSave:addGl];
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(IBAction)addGroceryItemcloseButtonPressed{
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
