//
//  ShoppingCatagoryViewController.h
//  Groceries App
//
//  Created by Sreekala Santhakumari on 2/14/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryCatagory.h"
#import "GroceryList.h"
#import "AddGroceyCatagoryViewController.h"
#import "AddGroceryItemViewController.h"
#import "ShoppingItemViewControllerTableViewController.h"

@interface ShoppingCatagoryViewController : UITableViewController <AddGroceryCatagoryDelegate>

@property(nonatomic, strong) NSMutableArray *groceriesCatagory;


@end
