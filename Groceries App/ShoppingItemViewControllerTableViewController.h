//
//  ShoppingItemViewControllerTableViewController.h
//  Groceries App
//
//  Created by Sreekala Santhakumari on 2/14/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryList.h"
#import "GroceryCatagory.h"
#import "AddGroceryItemViewController.h"

@interface ShoppingItemViewControllerTableViewController : UITableViewController<AddgroceryItemDelegate>

@property(nonatomic,weak) GroceryCatagory *groceryCatagorySeleced;

@end
