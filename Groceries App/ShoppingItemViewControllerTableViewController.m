//
//  ShoppingItemViewControllerTableViewController.m
//  Groceries App
//
//  Created by Sreekala Santhakumari on 2/14/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import "ShoppingItemViewControllerTableViewController.h"

@interface ShoppingItemViewControllerTableViewController ()

@end

@implementation ShoppingItemViewControllerTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = self.groceryCatagorySeleced.title;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    }

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.groceryCatagorySeleced.groceriesList.count ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GroceryListTableViewCell" forIndexPath:indexPath];
    GroceryList *gl = self.groceryCatagorySeleced.groceriesList[indexPath.row];
    cell.textLabel.text= gl.title1;
    return cell;
}

-(void) addGroceryItemTitle: (NSString* ) title{
    GroceryCatagory *gc = [[GroceryCatagory alloc]init];
    GroceryList *gl =[[GroceryList alloc]init];
    gl.title1 = title;
    [gc .groceriesList addObject:gl];
}

-(void) addGroceyItemSave: (GroceryList*) groceryItemSave{
    
    [self.groceryCatagorySeleced.groceriesList addObject:groceryItemSave];
    [self.tableView reloadData];
}

-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"AddGroceryItemSegue"]) {
        AddGroceryItemViewController *addGroceryItemVC = segue.destinationViewController;
        addGroceryItemVC.delegate = self;}}
        
@end
