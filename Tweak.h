#import <UIKit/UIKit.h>
#include <Cozy/Cozy.h>
#import "SparkColourPickerUtils.h"



@interface MTMaterialView : UIView {

}
@property (nonatomic, copy, readwrite) UIColor *backgroundColor;
@end


@interface NCNotificationListView : UIScrollView {

}
@property (getter=isNotificationListViewCurrentlyVisible,nonatomic,readonly) BOOL notificationListViewCurrentlyVisible;
@end
