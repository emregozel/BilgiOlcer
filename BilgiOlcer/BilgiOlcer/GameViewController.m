//
//  GameViewController.m
//  BilgiOlcer
//
//  Created by Emre Anil Gozel on 6/3/14.
//  Copyright (c) 2014 EmreAnilGozel. All rights reserved.
//

#import "GameViewController.h"

@interface GameViewController ()

@end

@implementation GameViewController

-(void)RightAnswer{
    
    ScoreNumber = ScoreNumber + 1;
    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
    NextCategory.hidden = NO;
    AnswerA.hidden = YES;
    AnswerB.hidden = YES;
    AnswerC.hidden = YES;
    AnswerD.hidden = YES;
    QuestionText.hidden = YES;
    CategorySelected.hidden = YES;
    Result.hidden = NO;
    Result.image = [UIImage imageNamed:@"win.png"];
    
    
}

-(void)WrongAnswer {
    
    LivesNumber = LivesNumber - 1;
    Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
    NextCategory.hidden = NO;
    NextCategory.hidden = NO;
    AnswerA.hidden = YES;
    AnswerB.hidden = YES;
    AnswerC.hidden = YES;
    AnswerD.hidden = YES;
    QuestionText.hidden = YES;
    CategorySelected.hidden = YES;
    Result.hidden = NO;
    Result.image = [UIImage imageNamed:@"game-over.jpg"];
    
    if (LivesNumber == 0) {
        
        Result.image = [UIImage imageNamed:@"game-over.jpg"];
        NextCategory.hidden = YES;
        Exit.hidden = NO;
        GameInProgress = NO;
        
    }
    
}

-(IBAction)AnswerA:(id)sender{
    
    if (AnswerACorrect == YES) {
        [self RightAnswer];
    }
    else {
        [self WrongAnswer];
    }
    
}
-(IBAction)AnswerB:(id)sender{
    
    if (AnswerBCorrect == YES) {
        [self RightAnswer];
    }
    else {
        [self WrongAnswer];
    }
    
}
-(IBAction)AnswerC:(id)sender{
    
    if (AnswerCCorrect == YES) {
        [self RightAnswer];
    }
    else {
        [self WrongAnswer];
    }
    
}
-(IBAction)AnswerD:(id)sender{
    
    if (AnswerDCorrect == YES) {
        [self RightAnswer];
    }
    else {
        [self WrongAnswer];
    }
    
}

-(void)Category1{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Sinekli Bakkal Romanının Yazarı Aşağıdakilerden Hangisidir?"];
            [AnswerA setTitle:@"Reşat Nuri Güntekin" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Halide Edip Adıvar" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Ziya Gökalp" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Ömer Seyfettin" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Aşağıda Verilen İlk Çağ Uygarlıklarından Hangisi Yazıyı İcat Etmiştir?"];
            [AnswerA setTitle:@"Hititler" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Elamlar" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Sümerler" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Urartular" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Tsunami Felaketinde En Fazla Zarar Gören Güney Asya Ülkesi Aşağıdakilerden Hangisidir?"];
            [AnswerA setTitle:@"Endonezya" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Srilanka" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Tayland" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Hindistan" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"2003 Yılında Euro Vizyon Şarkı Yarışmasında Ülkemizi Temsil Eden Ve Yarışmada Birinci Gelen Sanatçımız Kimdir?"];
            [AnswerA setTitle:@"Grup Athena" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Sertap Erener" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Şebnem Paker" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Ajda Pekkan" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"Aşağıdakilerden Hangisi Dünya Sağlık Örgütünün Kısaltılmış İsmidir?"];
            [AnswerA setTitle:@"Uhw" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Unicef" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Who" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Nato" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"Romen Rakamında Hangi Sayı Yoktur?"];
            [AnswerA setTitle:@"0" forState:UIControlStateNormal];
            [AnswerB setTitle:@"50" forState:UIControlStateNormal];
            [AnswerC setTitle:@"100" forState:UIControlStateNormal];
            [AnswerD setTitle:@"1000" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"Bir Gün Kaç Saniyedir?"];
            [AnswerA setTitle:@"86000" forState:UIControlStateNormal];
            [AnswerB setTitle:@"88600" forState:UIControlStateNormal];
            [AnswerC setTitle:@"86400" forState:UIControlStateNormal];
            [AnswerD setTitle:@"84800" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"Üç Büyük Dince Kutsal Sayılan Şehir Hangisidir?"];
            [AnswerA setTitle:@"Mekke" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Kudüs" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Roma" forState:UIControlStateNormal];
            [AnswerD setTitle:@"İstanbul" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"Hangi Ülkenin İki Tane Başkenti Vardır?"];
            [AnswerA setTitle:@"Güney Afrika" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Senegal" forState:UIControlStateNormal];
            [AnswerC setTitle:@"El Salvador" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Venezuela" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"Cevdet Bey Ve Oğulları Eseri Kime Aittir?"];
            [AnswerA setTitle:@"Yahya Kemal Bayatlı" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Atilla İlhan" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Orhan Pamuk" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Ahmet Haşim" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
            
        default:
            break;
    }
    
}
-(void)Category2{
    
}
-(void)Category3{
    
}
-(void)Category4{
    
}
-(void)Category5{
    
}
-(void)Category6{
    
}
-(void)Category7{
    
}
-(void)Category8{
    
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
    
    if (GameInProgress == NO) {
        LivesNumber = 3;
        ScoreNumber = 0;
        GameInProgress = YES;
        
    }
    
    Result.hidden = YES;
    Exit.hidden = YES;
    NextCategory.hidden = YES;
    
    Lives.text = [NSString stringWithFormat:@"%i", LivesNumber];
    Score.text = [NSString stringWithFormat:@"%i", ScoreNumber];
    
    AnswerACorrect = NO;
    AnswerBCorrect = NO;
    AnswerCCorrect = NO;
    AnswerDCorrect = NO;
    
    CategoryLoaded = [[NSUserDefaults standardUserDefaults] integerForKey:@"CategorySaved"];
    QuestionSelected = arc4random() %4;
    
    switch (CategoryLoaded) {
        case 1:
            //CategorySelected.text = [NSString stringWithFormat:@"GENEL KÜLTÜR"];
            [self Category1];
            break;
        case 2:
            //CategorySelected.text = [NSString stringWithFormat:@"GENEL KÜLTÜR"];
            [self Category2];
            break;
        case 3:
            //CategorySelected.text = [NSString stringWithFormat:@"GENEL KÜLTÜR"];
            [self Category3];
            break;
        case 4:
            //CategorySelected.text = [NSString stringWithFormat:@"GENEL KÜLTÜR"];
            [self Category4];
            break;
        case 5:
            //CategorySelected.text = [NSString stringWithFormat:@"GENEL KÜLTÜR"];
            [self Category5];
            break;
        case 6:
            //CategorySelected.text = [NSString stringWithFormat:@"GENEL KÜLTÜR"];
            [self Category6];
            break;
        case 7:
            //CategorySelected.text = [NSString stringWithFormat:@"GENEL KÜLTÜR"];
            [self Category7];
            break;
        case 8:
            //CategorySelected.text = [NSString stringWithFormat:@"GENEL KÜLTÜR"];
            [self Category8];
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
