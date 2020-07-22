//
//  HomeC.m
//  chat
//
//  Created by s on 2020/7/22.
//  Copyright © 2020 s. All rights reserved.
//

#import "HomeC.h"

@interface HomeC ()<UITableViewDataSource,UITableViewDelegate>
@property(nonatomic,strong)UITableView *tabView;
@end

@implementation HomeC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.tabView= [[UITableView alloc]init];
    self.tabView.dataSource = self;
    self.tabView.delegate = self;
    self.tabView.frame = CGRectMake(10, 100, self.view.bounds.size.width, 120);
    [self.view addSubview:self.tabView];
    // Do any additional setup after loading the view.
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 2;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 60;
}

// Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
// Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc]init];
    if(indexPath.row == 0) {
      UIImage *icon = [UIImage imageNamed:@"user1"];
        CGSize itemSize = CGSizeMake(50, 50);
        UIGraphicsBeginImageContextWithOptions(itemSize, NO ,0.0);
        CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
        [icon drawInRect:imageRect];
        
        cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
        UIGraphicsEndImageContext();
        cell.textLabel.text = @"大西瓜";
    }else {
        UIImage *icon = [UIImage imageNamed:@"user2"];
        CGSize itemSize = CGSizeMake(50, 50);
           UIGraphicsBeginImageContextWithOptions(itemSize, NO ,0.0);
           CGRect imageRect = CGRectMake(0.0, 0.0, itemSize.width, itemSize.height);
           [icon drawInRect:imageRect];
            
           cell.imageView.image = UIGraphicsGetImageFromCurrentImageContext();
           UIGraphicsEndImageContext();
        cell.textLabel.text=@"大香蕉";
    }
    return cell;
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
