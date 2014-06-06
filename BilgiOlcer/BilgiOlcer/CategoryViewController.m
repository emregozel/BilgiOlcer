//
//  CategoryViewController.m
//  BilgiOlcer
//
//  Created by Emre Gözel on 6.06.2014.
//  Copyright (c) 2014 EmreAnilGozel. All rights reserved.
//

#import "CategoryViewController.h"

@interface CategoryViewController ()

@end

@implementation CategoryViewController

-(IBAction)Button1:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:Category1SelectedNumber forKey:@"CategorySaved"];
}
-(IBAction)Button2:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:Category2SelectedNumber forKey:@"CategorySaved"];
}
-(IBAction)Button3:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:Category3SelectedNumber forKey:@"CategorySaved"];
}
-(IBAction)Button4:(id)sender{
    [[NSUserDefaults standardUserDefaults] setInteger:Category4SelectedNumber forKey:@"CategorySaved"];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    
    Category1Number = arc4random() %2;
    Category2Number = arc4random() %2;
    Category3Number = arc4random() %2;
    Category4Number = arc4random() %2;
    
    switch (Category1Number) {
        case 0:
            [Category1 setTitle:@"GENEL KÜLTÜR" forState:UIControlStateNormal];
            Category1SelectedNumber = 1;
            break;
        case 1:
            [Category1 setTitle:@"COĞRAFYA" forState:UIControlStateNormal];
            Category1SelectedNumber = 2;
            break;
            
        default:
            break;
    }
    
    switch (Category2Number) {
        case 0:
            [Category2 setTitle:@"TARİH" forState:UIControlStateNormal];
            Category2SelectedNumber = 3;
;            break;
        case 1:
            [Category2 setTitle:@"SPOR" forState:UIControlStateNormal];
            Category2SelectedNumber = 4;
            break;
        default:
            break;
    }

    switch (Category3Number) {
        case 0:
            [Category3 setTitle:@"TEKNOLOJİ" forState:UIControlStateNormal];
            Category3SelectedNumber = 5;
            break;
        case 1:
            [Category3 setTitle:@"EDEBİYAT" forState:UIControlStateNormal];
            Category3SelectedNumber = 6;
            break;
            
        default:
            break;
    }

    switch (Category4Number) {
        case 0:
            [Category4 setTitle:@"SANAT" forState:UIControlStateNormal];
            Category4SelectedNumber = 7;
            break;
        case 1:
            [Category4 setTitle:@"ÜLKELER" forState:UIControlStateNormal];
            Category4SelectedNumber = 8;
            break;
            
        default:
            break;
    }

    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
