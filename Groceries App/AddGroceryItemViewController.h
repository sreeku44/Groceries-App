//
//  AddGroceryItemViewController.h
//  Groceries App
//
//  Created by Sreekala Santhakumari on 2/16/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryList.h"
#import "GroceryCatagory.h"
#import "AddGroceyCatagoryViewController.h"

@protocol AddgroceryItemDelegate <NSObject>

-(void) addGroceyItemSave: (GroceryList*) groceryItemSave;
-(void) addGroceryItemTitle: (NSString* ) title;

@end

@interface AddGroceryItemViewController : UIViewController

@property (nonatomic, weak) id <AddgroceryItemDelegate> delegate;

@property(nonatomic, weak) IBOutlet UITextField *addgroceryItemTextField;

@end
