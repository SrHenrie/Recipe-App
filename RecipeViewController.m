//
//  RecipeViewController.m
//  Recipe App
//
//  Created by Sarah Henrie on 6/25/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "RecipeViewController.h"
#import "RecipesTableViewDataSource.h"

@interface RecipeViewController ()
@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) RecipesTableViewDataSource *dataSourceExternal;
@end

@implementation RecipeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.tableView = [[UITableView alloc]initWithFrame:self.view.frame];
    self.dataSourceExternal = [RecipesTableViewDataSource new];
    self.tableView.dataSource = self.dataSourceExternal;
    
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];

    [self.view addSubview:self.tableView];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
