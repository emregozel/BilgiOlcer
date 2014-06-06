//
//  CategoryViewController.h
//  BilgiOlcer
//
//  Created by Emre Gözel on 6.06.2014.
//  Copyright (c) 2014 EmreAnilGozel. All rights reserved.
//

#import <UIKit/UIKit.h>

int Category1Number;
int Category2Number;
int Category3Number;
int Category4Number;
int Category1SelectedNumber;
int Category2SelectedNumber;
int Category3SelectedNumber;
int Category4SelectedNumber;

@interface CategoryViewController : UIViewController
{
    IBOutlet UIButton *Category1;
    IBOutlet UIButton *Category2;
    IBOutlet UIButton *Category3;
    IBOutlet UIButton *Category4;
}

-(IBAction)Button1:(id)sender;
-(IBAction)Button2:(id)sender;
-(IBAction)Button3:(id)sender;
-(IBAction)Button4:(id)sender;

@end
