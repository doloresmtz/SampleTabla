//
//  ViewController.m
//  TableSample
//
//  Created by SantiagoDls on 18/01/15.
//  Copyright (c) 2015 ___FULLUSERNAME___. All rights reserved.
//

#import "ViewController.h"
#import "cellTableSample.h"


NSMutableArray *maNames;
NSMutableArray *maImgs;
NSMutableArray *maRole;
NSMutableArray *maAge;

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self initController];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (void)initController
{
    maNames         =  [NSMutableArray arrayWithObjects: @"Walter González", @"Alejandra Bautista", @"Augusto Bustamante", @"José Chávez", @"Alberto Cordero", nil];
    
    maAge           =  [NSMutableArray arrayWithObjects: @"35", @"25", @"42", @"36", @"24", nil];
    
    maImgs          =  [NSMutableArray arrayWithObjects: @"walter.jpg", @"popis.png", @"kiko.png", @"chavo.png", @"nono.png", nil];
    
    maRole          =  [NSMutableArray arrayWithObjects: @"Profesor Curso", @"Alumna Guapa", @"Amigo Estudioso", @"Alumno Travieso", @"Alumno Inteligente", nil];
}
/**********************************************************************************************
 Table Functions
 **********************************************************************************************/
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}
//-------------------------------------------------------------------------------
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return maNames.count;
}
//-------------------------------------------------------------------------------
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 64;
}
//-------------------------------------------------------------------------------
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"cellTableSample");
    static NSString *CellIdentifier = @"cellTableSample";
    
    cellTableSample *cell = (cellTableSample *)[tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil)
    {
        cell = [[cellTableSample alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
    }
    
    cell.lblName.text       = maNames[indexPath.row];
    cell.lblRole.text       = maRole[indexPath.row];
    cell.lblAge.text        = maAge[indexPath.row];
    cell.imgUser.image      = [UIImage imageNamed:maImgs[indexPath.row]];
    cell.imgUser.clipsToBounds = YES;
    return cell;
}

//-------------------------------------------------------------------------------
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

@end
