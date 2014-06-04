//
//  GameViewController.h
//  BilgiOlcer
//
//  Created by Emre Anil Gozel on 6/3/14.
//  Copyright (c) 2014 EmreAnilGozel. All rights reserved.
//

#import <UIKit/UIKit.h>

int QuestionSelected;
BOOL AnswerACorrect;
BOOL AnswerBCorrect;
BOOL AnswerCCorrect;
BOOL AnswerDCorrect;

@interface GameViewController : UIViewController{
    
    IBOutlet UILabel *QuestionText;
    IBOutlet UIButton *AnswerA;
    IBOutlet UIButton *AnswerB;
    IBOutlet UIButton *AnswerC;
    IBOutlet UIButton *AnswerD;
}

-(IBAction)AnswerA:(id)sender;
-(IBAction)AnswerB:(id)sender;
-(IBAction)AnswerC:(id)sender;
-(IBAction)AnswerD:(id)sender;

@end
