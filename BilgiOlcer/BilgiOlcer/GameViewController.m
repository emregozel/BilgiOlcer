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
    Score.textColor = [UIColor whiteColor];
    ScoreText.textColor = [UIColor whiteColor];
    Lives.textColor = [UIColor whiteColor];
    LivesText.textColor = [UIColor whiteColor];
    
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
    Result.image = [UIImage imageNamed:@"yanlis.png"];
    Score.textColor = [UIColor whiteColor];
    ScoreText.textColor = [UIColor whiteColor];
    Lives.textColor = [UIColor whiteColor];
    LivesText.textColor = [UIColor whiteColor];
    
    if (LivesNumber == 0) {
        
        Result.image = [UIImage imageNamed:@"gameover.png"];
        NextCategory.hidden = YES;
        Exit.hidden = NO;
        GameInProgress = NO;
        Score.hidden = YES;
        Lives.hidden = YES;
        ScoreText.hidden = YES;
        LivesText.hidden = YES;
        
        
        
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
-(void)Category3{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Mustafa Kemal’in aşağıda verilen basın yayın organlarından hangisinin çıkarılmasında bir etkisi ya da katkısının olduğu söylenemez?"];
            [AnswerA setTitle:@"Minber" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Anadolu Ajansı" forState:UIControlStateNormal];
            [AnswerC setTitle:@"İrade-i Milliye" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Peyam-ı Sabah" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Misak-ı Milli’de alınan kararlar içerik ve nitelik olarak irdelendiğinde aşağıdakilerden hangisiyle ilgili olduğu söylenemez?"];
            [AnswerA setTitle:@"Ulusal bağımsızlıkla" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Ulusal savunmayla" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Ulusal hakimiyetle" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Ulusal ekonomiyle" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Cumhuriyet kaç yılında ilan edilmiştir?"];
            [AnswerA setTitle:@"1943" forState:UIControlStateNormal];
            [AnswerB setTitle:@"1903" forState:UIControlStateNormal];
            [AnswerC setTitle:@"1912" forState:UIControlStateNormal];
            [AnswerD setTitle:@"1923" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Aşağıdakilerden hangisi Türklerin İslamiyet'e geçişi ile elde edilen kazanımlardan biri değildir?"];
            [AnswerA setTitle:@"Divan teşkilatı" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Vakıf sistemi" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Şeri hukuk esasları" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Hanedan idaresi" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"Osmanlı Devleti'nde Savcı Bey isyanının yaşandığı dönem aşağıdakilerden hangisidir?"];
            [AnswerA setTitle:@"Orhan Gazi" forState:UIControlStateNormal];
            [AnswerB setTitle:@"I. Murat" forState:UIControlStateNormal];
            [AnswerC setTitle:@"I. Mehmet" forState:UIControlStateNormal];
            [AnswerD setTitle:@"II. Selim" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"Sefared Yahudilerinin İspanya'daki Hristiyanların baskısından kurtarıldığı dönem hangisidir?"];
            [AnswerA setTitle:@"I. Selim" forState:UIControlStateNormal];
            [AnswerB setTitle:@"II. Bayezit" forState:UIControlStateNormal];
            [AnswerC setTitle:@"II. Murat" forState:UIControlStateNormal];
            [AnswerD setTitle:@"I. Süleyman" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"Aşağıdakilerden hangisi bir araştırma raporu özelliği taşımaz?"];
            [AnswerA setTitle:@"Hrisantos Raporu" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Bristol Raporu" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Samsun Raporu" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Harbord Raporu" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"Osmanlı kaç yılında kurulmuştur?"];
            [AnswerA setTitle:@"1302" forState:UIControlStateNormal];
            [AnswerB setTitle:@"1299" forState:UIControlStateNormal];
            [AnswerC setTitle:@"1751" forState:UIControlStateNormal];
            [AnswerD setTitle:@"1453" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"Türkiye'de tek partili dönem kaç yılında son bulmuştur?"];
            [AnswerA setTitle:@"1946" forState:UIControlStateNormal];
            [AnswerB setTitle:@"1939" forState:UIControlStateNormal];
            [AnswerC setTitle:@"1923" forState:UIControlStateNormal];
            [AnswerD setTitle:@"1994" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"Kurtuluş savaşı kaç yılında başlamıştır?"];
            [AnswerA setTitle:@"1918" forState:UIControlStateNormal];
            [AnswerB setTitle:@"1922" forState:UIControlStateNormal];
            [AnswerC setTitle:@"1919" forState:UIControlStateNormal];
            [AnswerD setTitle:@"1920" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
            
        default:
            break;
    }

    
}
-(void)Category2{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Türkiye'nin kaç ili vardır?"];
            [AnswerA setTitle:@"82" forState:UIControlStateNormal];
            [AnswerB setTitle:@"80" forState:UIControlStateNormal];
            [AnswerC setTitle:@"81" forState:UIControlStateNormal];
            [AnswerD setTitle:@"83" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Aşağıdakilerden hangisi yenilebilir enerji kaynakları sınıfına girmez?"];
            [AnswerA setTitle:@"Hidroelektrik" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Jeotermal" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Taş Kömürü" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Rüzgar" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Aşağıdaki toprak türlerinden hangisi yerli toprak değildir?"];
            [AnswerA setTitle:@"Podzol" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Moren" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Terra-Rossa" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Rendzina" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Aşağıdaki yerlerden hangisinde en fazla yağış yazın düşmektedir?"];
            [AnswerA setTitle:@"Güneydoğu Anadolu Bölgesi" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Konya Bölümü" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Güney Marmara Bölümü" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Kars-Ardahan Platosu" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"Sis aşağıdaki hangi doğal çevrede oluşmaz?"];
            [AnswerA setTitle:@"Ormanlık alanlarda" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Deniz kıyılarında" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Rüzgârlı havalarda" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Yüksek dağlarda" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"Heyelan ve kütle hareketleri ülkemizde e fazla hangi bölümde görülür?"];
            [AnswerA setTitle:@"Doğu Karadeniz Bölümü" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Kıyı Ege Bölümü" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Güney Marmara Bölümü" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Orta Fırat Bölümü" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"Bir yerleşim yerinin geçici olması neye bağlıdır?"];
            [AnswerA setTitle:@"Gelir düzeyine" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Nüfus yoğunluğuna" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Ulaşım olanaklarına" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Ekonomik etkinliklere" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"Aşağıdaki havzalardan hangisi ülkemi; havzalarından biri değildir?"];
            [AnswerA setTitle:@"Karadeniz Havzası" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Akdeniz Havzası" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Ege Denizi Havzası" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Atlas Okyanusu Havzası" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"Ülkemizde buharlaşmanın en etkili olduğu bölgemiz hangisidir?"];
            [AnswerA setTitle:@"Akdeniz Bölgesi" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Ege Bölgesi" forState:UIControlStateNormal];
            [AnswerC setTitle:@"İç Anadolu Bölgesi" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Güneydoğu Anadolu Bölgesi" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"Aşağıdakilerden hangisi ihraç ettiğimi: mallardan değildir?"];
            [AnswerA setTitle:@"Kuru ve yaş sebzeler" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Hayvansal ve bitkisel yağlar" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Kahve ve baharat" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Otomobil ve otobüs" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
            
        default:
            break;
    }
    
}
-(void)Category6{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Aşağıdakilerden hangisi doğal destanlardan biri değildir?"];
            [AnswerA setTitle:@"Üç Şehitler Destanı" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Ergenekon Destanı " forState:UIControlStateNormal];
            [AnswerC setTitle:@"Kalevela" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Şehname" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Aşağıdakilerden hangisi Beş Hececiler'den biri değildir?"];
            [AnswerA setTitle:@"Faruk Nafiz Çamlıbel" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Yusuf Ziya Ortaç" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Enis Behiç Koryürek" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Ziya Osman Saba" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Aşağıdakilerden hangisi Edebiyat türü değildir?"];
            [AnswerA setTitle:@"Şiir" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Sinema" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Drama" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Deneme" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Maupassant ve Çehov’un ün yaptığı düz yazı türü aşağıdakilerden hangisidir?"];
            [AnswerA setTitle:@"Anı" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Roman" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Hikaye" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Deneme" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"Divan şairlerinin şiirlerini topladıkları defterlere ne denir?"];
            [AnswerA setTitle:@"Cönk" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Divan" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Güldeste" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Antoloji" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"Türeyiş ve Göç adlı destanlar kime aittir?"];
            [AnswerA setTitle:@"Sakalara" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Uygurlara" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Göktürklere" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Hunlara" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"Aşağıdıkilerden hangisi bir şiir türü değildir?"];
            [AnswerA setTitle:@"Pastoral Şiir" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Mesnevi Şiir" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Lirik Şiir" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Betimleyici Şiir" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"Hangisi bir yazar değildir?"];
            [AnswerA setTitle:@"Nazım Hikmet" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Serdar Ortaç" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Ahmet Hakan" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Ömer Seyfeddin" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"İlk yerli tiyatro eseri hangisidir?"];
            [AnswerA setTitle:@"Şair evlenmesi" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Aşk-ı Memnu" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Araba Sevdası" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Nesteren" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"İlk hatıra kitabı hangisidir?"];
            [AnswerA setTitle:@"Keşfü’z Zünun" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Harabat" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Babürname" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Zehra" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
            
        default:
            break;
    }

    
}
-(void)Category4{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Türkiye Milli Takımı'nın ilk resmi golünü 1923 yılında atan futbolcu kimdir?"];
            [AnswerA setTitle:@"Zeki Rıza Sporel" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Şenol Güneş" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Fatih Terim" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Mustafa Denizli" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Amerikan erkek basketbol liginin adı nedir?"];
            [AnswerA setTitle:@"NCAA" forState:UIControlStateNormal];
            [AnswerB setTitle:@"WNBA" forState:UIControlStateNormal];
            [AnswerC setTitle:@"NBA" forState:UIControlStateNormal];
            [AnswerD setTitle:@"TBL" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"NBA Allstar forması giyen ilk Türk basketbol oyuncusu kimidir?"];
            [AnswerA setTitle:@"Hidayet Türkoğlu" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Mehmet Okur" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Ender Arslan" forState:UIControlStateNormal];
            [AnswerD setTitle:@"İbrahim Kutluay" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"İlk Türk futbolcusu kimdir?"];
            [AnswerA setTitle:@"Sergen Yalçın" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Ergün Pembe" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Fuat Hüsnü Kayacan" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Rıdvan Dilmen" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"Türkiye 2002 Dünya Kupası'nda kaçıncı olmuştur?"];
            [AnswerA setTitle:@"1" forState:UIControlStateNormal];
            [AnswerB setTitle:@"3" forState:UIControlStateNormal];
            [AnswerC setTitle:@"4" forState:UIControlStateNormal];
            [AnswerD setTitle:@"3" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"Türkiye Süper Ligi'nde kaç takım bulunmaktadır?"];
            [AnswerA setTitle:@"17" forState:UIControlStateNormal];
            [AnswerB setTitle:@"19" forState:UIControlStateNormal];
            [AnswerC setTitle:@"21" forState:UIControlStateNormal];
            [AnswerD setTitle:@"18" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"Türkiye basketbol ligi kaç yılında kurulmuştur?"];
            [AnswerA setTitle:@"1967" forState:UIControlStateNormal];
            [AnswerB setTitle:@"1965" forState:UIControlStateNormal];
            [AnswerC setTitle:@"1963" forState:UIControlStateNormal];
            [AnswerD setTitle:@"1966" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"Türkiye basketbol liginin en başarılı takımı aşağıdakilerden hangisidir?"];
            [AnswerA setTitle:@"Fenerbahçe" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Anadolu Efes" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Galatasaray" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Banvit" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"Cep Herkülü lakabı ile tanınan milli haltercimiz kimdir?"];
            [AnswerA setTitle:@"Naim Süleymanoğlu" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Halil Mutlu" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Sabri Sarıoğlu" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Selçuk Yılmaz" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"Türkiye Erkekler Hentbol Süper Ligi'nin ilk sezonu hangisidir?"];
            [AnswerA setTitle:@"1978 - 1979" forState:UIControlStateNormal];
            [AnswerB setTitle:@"1981 - 1982" forState:UIControlStateNormal];
            [AnswerC setTitle:@"1965 - 1966" forState:UIControlStateNormal];
            [AnswerD setTitle:@"1967 - 1968" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
            
        default:
            break;
    }
    
}
-(void)Category5{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Microsoft'un sahibi aşağıdakilerden hangisidir?"];
            [AnswerA setTitle:@"Bill Gates" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Steve Jobs" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Steve Wozniak" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Steve Balmer" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Microsoft işletim sistemlerine verilen isim nedir?"];
            [AnswerA setTitle:@"Mac OSX" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Fedora" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Windows" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Ubuntu" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Bilgisayardaki bilgileri depolayan birimin adı aşağıdakilerden hangisidir?"];
            [AnswerA setTitle:@"Ram" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Hard Disk" forState:UIControlStateNormal];
            [AnswerC setTitle:@"CDROM" forState:UIControlStateNormal];
            [AnswerD setTitle:@"USB Bellek" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"İlk kişisel bilgisayar aşağıdakilerden hangisidir?"];
            [AnswerA setTitle:@"Lenovo" forState:UIControlStateNormal];
            [AnswerB setTitle:@"iMac" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Apple II" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Toshiba" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"Aşağıdakilerden hangisi bir sosyal paylaşım sitesi değildir?"];
            [AnswerA setTitle:@"Twitter" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Hotmail" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Facebook" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Google Plus" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"Dünya'da en yaygın olarak kullanılan arama motoru hangisidir?"];
            [AnswerA setTitle:@"Bing" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Yandex" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Ask Search" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Google" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"Geleceğin teknolojisi olarak görülen bilimin adı nedir?"];
            [AnswerA setTitle:@"İnternet" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Nükleer Santral" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Mobil" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Nano Teknoloji" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"İnternet ilk olarak hangi amaçlar kullanılmıştır?"];
            [AnswerA setTitle:@"Sohbet" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Askeri İletişim" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Dosya Yükleme" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Facebook'a girmek" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"Elektrik akımı ölçü birimi nedir?"];
            [AnswerA setTitle:@"Amper" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Watt" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Kilobyte" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Megabyte" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"CD kısaltmasının açılımı aşağıdakilerden hangisidir?"];
            [AnswerA setTitle:@"Compack Disk" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Compak Disk" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Complete Disk" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Camba Disk" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
            
        default:
            break;
    }
    
}
-(void)Category7{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"Hababam sınıfı kim tarafından yazılmıştır?"];
            [AnswerA setTitle:@"Ömer Seyfeddin" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Rıfat Ilgaz" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Nazım Hikmet" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Ahmet Hakan" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Uzun İnce Bir Yoldayım gibi şiirleriyle tanınan halk ozanı kimdir?"];
            [AnswerA setTitle:@"Serdar Ortaç" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Kıvırcık Ali" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Aşık Veysel" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Aşık Mahsuni Şerif" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"İstiklal marşının bestecisi kimdir?"];
            [AnswerA setTitle:@"Mehmet Akif Ersoy" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Osman Zeki Üngör" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Fazıl Say" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Minur Nurettin Selçuk" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Kamplubağa Terbiyecisi adlı ünlü tablonun ressamı kimdir?"];
            [AnswerA setTitle:@"Bedri Baykam" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Leonardo Da Vinci" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Osman Hamdi Bey" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Burhan Doğançay" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"Batsın Bu Dünya gibi klasiklere imza atan söz ve beste yazarı kimdir?"];
            [AnswerA setTitle:@"Müslüm Gürses" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Orhan Gencebay" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Ebru Gündeş" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Hakkı Bulut" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"Sanat güneşi olarak adlandırılan ünlü sanatçımız kimdir?"];
            [AnswerA setTitle:@"Yıldırım Gürses" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Muazzez Abacı" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Şevval Sam" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Zeki Müren" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"Kış Uykusu filmi ile Altın Palmiye ödülünü alan yönetmen kimdir?"];
            [AnswerA setTitle:@"Yılmaz Güney" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Şahan Gökbakar" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Raci Şaşmaz" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Nuri Bilge Ceylan" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"2006 Yılında oscar aday adayı olarak gösterilen Türk filminin adı nedir?"];
            [AnswerA setTitle:@"Babam ve Oğlum" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Dondurmam Gaymak" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Ademin Trenleri" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Nuh Büyük Tufan" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"Mimar Sinan'ın ustalık eseri yapıtı hangisidir?"];
            [AnswerA setTitle:@"Selimiye Camii" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Ayasoyfa Camii" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Şehzadebaşı Camii" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Süleymaniye Camii" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"Müzik ruhun gıdasıdır sözü kime aittir?"];
            [AnswerA setTitle:@"Sokrates" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Einstein" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Atatürk" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Alexander Graham Bell" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
            
        default:
            break;
    }
    
    
}
-(void)Category8{
    
    switch (QuestionSelected) {
        case 0:
            QuestionText.text = [NSString stringWithFormat:@"İspanya'nın başkenti neresidir?"];
            [AnswerA setTitle:@"Los Angles" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Madrid" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Berlin" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Ankara" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 1:
            QuestionText.text = [NSString stringWithFormat:@"Aşağıdakilerden hangisi Avusturalya'da değildir?"];
            [AnswerA setTitle:@"Sidney" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Canberra" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Dublin" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Melbourne" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 2:
            QuestionText.text = [NSString stringWithFormat:@"Türkiye'nin aşağıdaki denizlerden hangisinde kıyısı bulunmamaktadır?"];
            [AnswerA setTitle:@"Akdeniz" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Hint Okyanusu" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Ege Denizi" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Karadeniz" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 3:
            QuestionText.text = [NSString stringWithFormat:@"Eyfel Kulesi aşağıdaki şehirlerden hangisinde bulunmaktadır?"];
            [AnswerA setTitle:@"Tokyo" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Munih" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Paris" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Roma" forState:UIControlStateNormal];
            AnswerCCorrect = YES;
            break;
        case 4:
            QuestionText.text = [NSString stringWithFormat:@"Mısır'ın başkenti aşağıdakilerden hangisidir?"];
            [AnswerA setTitle:@"Tel Aviv" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Kahire" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Ankara" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Şam" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 5:
            QuestionText.text = [NSString stringWithFormat:@"Avrupa birliğini ilk kez halk oylaması ile reddeden ülke hangisidir?"];
            [AnswerA setTitle:@"İsveç" forState:UIControlStateNormal];
            [AnswerB setTitle:@"İsviçre" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Mısır" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Norveç" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 6:
            QuestionText.text = [NSString stringWithFormat:@"Kadınlara seçme ve seçilme hakkını tanıyan ilk ülke hangisidir?"];
            [AnswerA setTitle:@"Amerika" forState:UIControlStateNormal];
            [AnswerB setTitle:@"İran" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Fransa" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Türkiye" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
        case 7:
            QuestionText.text = [NSString stringWithFormat:@"Avrupa Birliğini başkenti neresidir?"];
            [AnswerA setTitle:@"Dublin" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Brüksel" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Berlin" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Paris" forState:UIControlStateNormal];
            AnswerBCorrect = YES;
            break;
        case 8:
            QuestionText.text = [NSString stringWithFormat:@"Himalayalarda bulunan ve dünyanın en yüksek noktası hangisidir? "];
            [AnswerA setTitle:@"Everest" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Erciyes" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Toroslar" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Tanrı Dağları" forState:UIControlStateNormal];
            AnswerACorrect = YES;
            break;
        case 9:
            QuestionText.text = [NSString stringWithFormat:@"Avusturalya kıtasının en tanınmış hayvanı hangisidir?"];
            [AnswerA setTitle:@"Ayı" forState:UIControlStateNormal];
            [AnswerB setTitle:@"Kurt" forState:UIControlStateNormal];
            [AnswerC setTitle:@"Tilki" forState:UIControlStateNormal];
            [AnswerD setTitle:@"Kanguru" forState:UIControlStateNormal];
            AnswerDCorrect = YES;
            break;
            
        default:
            break;
    }
    
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
    QuestionSelected = arc4random() %8;
    
    switch (CategoryLoaded) {
        case 1:
            CategorySelected.text = [NSString stringWithFormat:@"GENEL KÜLTÜR"];
            [self Category1];
            break;
        case 2:
            CategorySelected.text = [NSString stringWithFormat:@"COĞRAFYA"];
            [self Category2];
            break;
        case 3:
            CategorySelected.text = [NSString stringWithFormat:@"TARİH"];
            [self Category3];
            break;
        case 4:
            CategorySelected.text = [NSString stringWithFormat:@"SPOR"];
            [self Category4];
            break;
        case 5:
            CategorySelected.text = [NSString stringWithFormat:@"TEKNOLOJİ"];
            [self Category5];
            break;
        case 6:
            CategorySelected.text = [NSString stringWithFormat:@"EDEBİYAT"];
            [self Category6];
            break;
        case 7:
            CategorySelected.text = [NSString stringWithFormat:@"SANAT"];
            [self Category7];
            break;
        case 8:
            CategorySelected.text = [NSString stringWithFormat:@"ÜLKELER"];
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
