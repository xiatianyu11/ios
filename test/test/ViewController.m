//
//  ViewController.m
//  test
//
//  Created by yu xia on 16/6/17.
//  Copyright © 2017 yu xia. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIImageView *imageView2;
@property (weak, nonatomic) IBOutlet UIButton *testButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [_testButton addTarget:self action:@selector(userSelected:) forControlEvents:UIControlEventTouchUpInside];
    // Do any additional setup after loading the view, typically from a nib.
  
    
}

-(void)userSelected:(UIButton *) sender{
    NSMutableAttributedString *hogan = [[NSMutableAttributedString alloc] initWithString:@"Presenting the great... Hulk Hogan!"];
    
    [hogan addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(14, 11)];
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:@"Info"
                                  message:@""
                                  preferredStyle:UIAlertControllerStyleAlert];
 
   
   
    UILabel *lbl = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 100)];
    
 
    
    lbl.attributedText = hogan;
    lbl.textAlignment = NSTextAlignmentCenter;
    [alert setValue:hogan forKey:@"_attributedMessage"];

 

    
    
   // [alert setMessage:hogan];

    
    UIAlertAction* ok = [UIAlertAction
                         actionWithTitle:@"OK"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                             [alert dismissViewControllerAnimated:YES completion:nil];
                             
                         }];
    
     [ok setValue:[UIColor greenColor] forKey:@"titleTextColor"];
    UIAlertAction* cancel = [UIAlertAction
                             actionWithTitle:@"Cancel"
                             style:UIAlertActionStyleDefault
                             handler:^(UIAlertAction * action)
                             {
                                 [alert dismissViewControllerAnimated:YES completion:nil];
                                 
                             }];
    
    [alert addAction:ok];
    [alert addAction:cancel];
    
    [self presentViewController:alert animated:YES completion:nil];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)test2:(id)sender {
    
    NSLog(@"test2 pressed");
    NSMutableAttributedString *hogan = [[NSMutableAttributedString alloc] initWithString:@"Presenting the great... Hulk Hogan!"];
    [hogan addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:NSMakeRange(14, 11)];
    
    PopupAlertView *sv = [[PopupAlertView alloc] initWithFrame:self.view.frame title:@"My Warn" message:hogan];
    sv.popupAlertDelegate = self;
    [self.view addSubview:sv];
}

#pragma mark - DbsAlertDelegate Method
- (void) pressedCallBack:(NSInteger)pressedIndex
{
    NSLog(@"press index: %d", (int)pressedIndex);
}

@end
