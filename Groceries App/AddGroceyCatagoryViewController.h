//
//  AddGroceyCatagoryViewController.h
//  Groceries App
//
//  Created by Sreekala Santhakumari on 2/14/17.
//  Copyright © 2017 Klas. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GroceryCatagory.h"

@protocol AddGroceryCatagoryDelegate <NSObject>

-(void) addGroceryCatagorySave :(GroceryCatagory*) groceryCatagorysave;
-(void) addGroceryCatagoryClose:(GroceryCatagory *)groceryCatagoryClose;
-(void) addGroceryCatagoryTitle: (NSString*) title;

@end


@interface AddGroceyCatagoryViewController : UIViewController

@property (nonatomic, weak) id <AddGroceryCatagoryDelegate> delegate;

@property(nonatomic, weak) IBOutlet UITextField *addgroceryCatagoryTextField;

@end

