//
//  IncidentListItemCell.m
//  EdKeyNote
//
//  Created by Max on 10/14/14.
//  Copyright (c) 2014 canviz. All rights reserved.
//

#import "IncidentListItemCell.h"

@implementation IncidentListItemCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setCellValue:(UIImage *)image room:(NSString *)room incident:(NSString *)incident inspectionDate:(NSString *)inspectionDate repairDate:(NSString *)repairDate repairHidden:(BOOL)repairHidden approved:(NSString *)approved approvedHidden:(BOOL)approvedHidden
{
    if(image != nil)
    {
        self.incidentImageView.image = image;
    }
    else
    {
        self.incidentImageView.image = [UIImage imageNamed:@"default"];
    }
    self.roomLbl.text = room;
    self.incidentLbl.text = incident;
    self.inspectionLbl.text = inspectionDate;
    self.repairDateTitleLbl.hidden = repairHidden;
    if(!repairHidden)
    {
        self.repairDateValueLbl.text = repairDate;
    }
    self.approvalTitleLbl.hidden = approvedHidden;
    if(!approvedHidden)
    {
        self.approvalValueLbl.text = approved;
    }
}


@end
