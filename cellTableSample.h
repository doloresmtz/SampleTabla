//
//  cellTableSample.h
//  TableSample
//
//  Created by SantiagoDls on 18/01/15.
//  Copyright (c) 2015 SantiagoDls. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface cellTableSample : UITableViewCell
@property (strong, nonatomic) IBOutlet UIImageView *imgUser;
@property (strong, nonatomic) IBOutlet UILabel *lblName;
@property (strong, nonatomic) IBOutlet UILabel *lblRole;
@property (strong, nonatomic) IBOutlet UILabel *lblAge;
@end
