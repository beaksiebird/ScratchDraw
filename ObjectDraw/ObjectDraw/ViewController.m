//
//  ViewController.m
//  ObjectDraw
//
//  Created by Whitney Lauren on 6/1/15.
//  Copyright (c) 2015 Whitney Lauren. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


- (IBAction)showHide:(id)sender;


- (IBAction)clearScreen:(id)sender;

@property (weak, nonatomic) IBOutlet UICollectionView *scratchDraw;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}




- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event touchesForView:self.view] anyObject];
    
    CGPoint location = [touch locationInView:touch.view];
    
    
}



- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [touches anyObject];
    
    CGPoint currentPosition = [touch locationInView:self.view];
    
    NSLog(@"move (%f, %f)", currentPosition.x, currentPosition.y);
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showHide:(id)sender {
}

- (IBAction)clearScreen:(id)sender {
}
@end







