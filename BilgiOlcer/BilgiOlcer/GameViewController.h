//
//  GameViewController.h
//  BilgiOlcer
//
//  Created by Emre Anil Gozel on 6/3/14.
//  Copyright (c) 2014 EmreAnilGozel. All rights reserved.
//

#import <UIKit/UIKit.h>

int CategoryLoaded;
int QuestionSelected;
BOOL AnswerACorrect;
BOOL AnswerBCorrect;
BOOL AnswerCCorrect;
BOOL AnswerDCorrect;
int ScoreNumber;
int LivesNumber;
BOOL GameInProgress;


@interface GameViewController : UIViewController{
    
    IBOutlet UILabel *QuestionText;
    IBOutlet UILabel *CategorySelected;
    IBOutlet UIButton *AnswerA;
    IBOutlet UIButton *AnswerB;
    IBOutlet UIButton *AnswerC;
    IBOutlet UIButton *AnswerD;
    IBOutlet UIButton *NextCategory;
    IBOutlet UIButton *Exit;
    IBOutlet UILabel *Score;
    IBOutlet UILabel *Lives;
    IBOutlet UIImageView *Result;
    IBOutlet UILabel *ScoreText;
    IBOutlet UILabel *LivesText;
    
}

-(IBAction)AnswerA:(id)sender;
-(IBAction)AnswerB:(id)sender;
-(IBAction)AnswerC:(id)sender;
-(IBAction)AnswerD:(id)sender;

-(void)Category1;
-(void)Category2;
-(void)Category3;
-(void)Category4;
-(void)Category5;
-(void)Category6;
-(void)Category7;
-(void)Category8;
-(void)RightAnswer;
-(void)WrongAnswer;

@end
