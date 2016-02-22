//
//  tripHelp.m
//  Internshiptour
//
//  Created by dexiang lu on 16/1/13.
//  Copyright © 2016年 dexiang lu. All rights reserved.
//

#import "tripHelp.h"
#import "toolCell.h"
#import "myTripCell.h"
@interface tripHelp ()<UITableViewDataSource,UITableViewDelegate>
{
    NSString *_whickClick;

}
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *topConstraints;

@property (weak, nonatomic) IBOutlet NSLayoutConstraint *rightConstraints;
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *leftConstraints;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mySegmentC;
@property (weak, nonatomic) IBOutlet UITableView *myTripHelpTableView;

@end

@implementation tripHelp

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NAVBARHIDDEN;
    _whickClick = @"0";
    [_mySegmentC setTintColor:[UIColor whiteColor]];
    [_mySegmentC addTarget:self action:@selector(controllerPressed:) forControlEvents:UIControlEventValueChanged];
    [_myTripHelpTableView registerNib:[UINib nibWithNibName:@"toolCell" bundle:nil] forCellReuseIdentifier:@"toolCell"];
     [_myTripHelpTableView registerNib:[UINib nibWithNibName:@"myTripCell" bundle:nil] forCellReuseIdentifier:@"myTripCell"];
    self.view.backgroundColor = BACKCOLOR;
    _myTripHelpTableView.backgroundColor = CLEARCOLOR;
    _myTripHelpTableView.showsVerticalScrollIndicator = NO;
    
}
- (void)controllerPressed:(id)sender {
    int selectedSegment = (int)_mySegmentC.selectedSegmentIndex;
    NSLog(@"Segment %d selected\n", selectedSegment);
    
    if(selectedSegment == 0){
    
    
    _whickClick = @"0";
        [_myTripHelpTableView reloadData];
    }else if(selectedSegment == 1){
    
        _whickClick = @"1";
        [_myTripHelpTableView reloadData];
    }else{
    
        _whickClick = @"2";
        [_myTripHelpTableView reloadData];
    }
    
    
}

#pragma mark -------<UITableViewDataSource,UITableViewDelegate>
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if([_whickClick isEqualToString:@"0"]){
        
        return 3;
    }
    return 1;
}

-(UITableViewCell*)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
  
    if([_whickClick isEqualToString:@"0"]){
        _rightConstraints.constant = 0;
        _leftConstraints.constant = 0;
        _topConstraints.constant = 0;
    toolCell *cell = [tableView dequeueReusableCellWithIdentifier:@"toolCell"];
    UIView *line = [[UIView alloc] initWithFrame:CGRectMake(82, cell.frame.size.height, self.view.frame.size.width - 82 , 1)];
    line.backgroundColor = BACKCOLOR;
    [cell addSubview:line];
    return cell;
    }else {
    
        myTripCell *cell = [tableView dequeueReusableCellWithIdentifier:@"myTripCell"];
        _rightConstraints.constant = 12;
        _leftConstraints.constant = 12;
        _topConstraints.constant = 12;
        cell.stateLable.layer. borderColor =[mainBlue CGColor ];
        return cell;
    
    }
    return nil;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    
    if([_whickClick isEqualToString:@"0"]){
    
        return 1;
    }
    return 2;

}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if([_whickClick isEqualToString:@"0"]){
    return 104.0f;
    }else{
    
        return 230.0f;
    
    }
    
}
-(UIView *) tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *footerView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 12)];
    footerView.backgroundColor = CLEARCOLOR;
    return footerView;
}
-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 12.0f;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
