//
//  ViewController.m
//  Example 6 TableViewCell
//
//  Created by Mallikarjun on 03/12/18.
//  Copyright © 2018 Ladybird Web Solution. All rights reserved.
//

#import "ViewController.h"
#import "SampleTableViewCell.h"


@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 5;
}

- (nonnull UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {

    static NSString * identifier = @"id1";
    
    SampleTableViewCell * cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if(cell == nil)
    {
        NSArray * cell1 = [[NSBundle mainBundle] loadNibNamed:@"SampleTableViewCell" owner:self options:nil];
        cell = [cell1 objectAtIndex:0];
    }
    
    
    return cell;
}

//- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
//
//    return 60;
//}





@end
