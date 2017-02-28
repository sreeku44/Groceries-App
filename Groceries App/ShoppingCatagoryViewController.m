//
//  ShoppingCatagoryViewController.m
//  Groceries App
//
//  Created by Sreekala Santhakumari on 2/14/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import "ShoppingCatagoryViewController.h"

@interface ShoppingCatagoryViewController ()

@end

@implementation ShoppingCatagoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //adding object to groceryCatagory Catagory
    GroceryCatagory *groceryCatagory1 = [[GroceryCatagory alloc]init];
    groceryCatagory1.title = @"Walmart";
    
    GroceryCatagory *groceryCatagory2 = [[GroceryCatagory alloc]init];
    groceryCatagory2.title = @"Kroger";
    
    GroceryCatagory *groceryCatagory3 = [[GroceryCatagory alloc]init];
    groceryCatagory3.title = @"HEB";
    
    self.groceriesCatagory = [NSMutableArray array];
    
    //Adding to array
    [self.groceriesCatagory addObject:groceryCatagory1];
    [self.groceriesCatagory addObject:groceryCatagory2];
    [self.groceriesCatagory addObject:groceryCatagory3];
    
    //Adding list of items to each catagory list  eg. for walmart, HEB , we have to add the items seperate to eachcatagory
    GroceryList *groceryList1 = [[GroceryList alloc]init];
    groceryList1 .title1 = @"Cookie";
    
    GroceryList *groceryList2 = [[GroceryList alloc]init];
    groceryList2.title1 = @"toys";
    
    GroceryList *groceryList3 = [[GroceryList alloc]init];
    groceryList3.title1 = @"Apple";
    
    groceryCatagory1.groceriesList = [NSMutableArray array];
    groceryCatagory2.groceriesList = [NSMutableArray array];
    groceryCatagory3.groceriesList =[NSMutableArray array];
    
    //Adding list of items to the grocery list inherited from grocry catagory , (array in array) , eg. grocry list array is in the
    [groceryCatagory1.groceriesList addObject:groceryList2];
    [groceryCatagory2.groceriesList addObject:groceryList1];
    [groceryCatagory3.groceriesList addObject:groceryList3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.groceriesCatagory.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"GroceryCatagoryCell" forIndexPath:indexPath];
    GroceryCatagory *groceriesCatagoryList = self.groceriesCatagory[indexPath.row];
    cell.textLabel.text = groceriesCatagoryList.title;
    return cell;
}

-(void) addGroceryCatagoryTitle: (NSString *) title{
    
    GroceryCatagory *gc = [[GroceryCatagory alloc] init];
    gc.title = title;
    [self.groceriesCatagory addObject:gc];
}

-(void) addGroceryCatagorySave :(GroceryCatagory*) groceryCatagorysave{
    
    [self.groceriesCatagory addObject:groceryCatagorysave ];
    [self.tableView reloadData];
}

-(void) addGroceryCatagoryClose:(GroceryCatagory *)groceryCatagoryClose{

}
-(void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    //segue for AddGrocey Cataogory , destinationVC 
    if([segue.identifier isEqualToString:@"AddGroceryCategorySegue"]) {
    AddGroceyCatagoryViewController *addGroceryCategoryVC = segue.destinationViewController;
    addGroceryCategoryVC.delegate = self;
    } else
        
    {
        //segue for shopping item table View Controller
        NSIndexPath *indexpath = self.tableView.indexPathForSelectedRow;
        GroceryCatagory *gc = self.groceriesCatagory[indexpath.row];
        ShoppingItemViewControllerTableViewController *groceryItemTVC = segue.destinationViewController;
            groceryItemTVC.groceryCatagorySeleced= gc;
    }
}
    @end

