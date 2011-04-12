//
//  myFastCell.h
//  Blognone12-NewTheme
//
//  Created by Nattapon on 3/29/11.
//  Copyright 2011 iphone developer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ABTableViewCell.h"


@interface myFastCell : ABTableViewCell {
    NSString *textTitle;
    NSString *detailText;
    NSString *imageName;

}

@property (nonatomic, copy) NSString *textTitle;
@property (nonatomic, copy) NSString *detailText;
@property (nonatomic, copy) NSString *imageName;


@end
