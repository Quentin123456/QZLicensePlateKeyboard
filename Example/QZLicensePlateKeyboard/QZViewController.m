//
//  QZViewController.m
//  QZLicensePlateKeyboard
//
//  Created by Quentin zang on 09/17/2019.
//  Copyright (c) 2019 Quentin zang. All rights reserved.
//

#import "QZViewController.h"
#import "QZHeader.h"
#import "QZLicensePlateView.h"

@interface QZViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *plateNumTextfield;

@end

@implementation QZViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"车牌号键盘";
    self.plateNumTextfield.delegate = self;
    
}

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    
    QZLicensePlateView *carView = [QZLicensePlateView initFrame:CGRectMake(0, 0, screenWidth, screenHight) block:^(NSString *str) {
        if (str.length > 0) {
            
            self.plateNumTextfield.text = str;
            
        }
        
        NSLog(@"str = %@",str);
        
    }];
    
    [self.view addSubview:carView];
    
    return NO;
    
}


-(BOOL)checkCarID:(NSString *)carID {
    
    if (carID.length!=7) {
        return NO;
    }
    NSString *carRegex = @"^[\u4e00-\u9fa5]{1}[a-hj-zA-HJ-Z]{1}[a-hj-zA-HJ-Z_0-9]{4}[a-hj-zA-HJ-Z_0-9_\u4e00-\u9fa5]$";
    NSPredicate *carTest = [NSPredicate predicateWithFormat:@"SELF MATCHES %@",carRegex];
    return [carTest evaluateWithObject:carID];
    
    return YES;
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
