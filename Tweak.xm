#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import <UIKit/UIControl.h>
#import <Cephei/HBPreferences.h>
#import <spawn.h>











%config(generator=internal)
%group Pics
%hook SCUser
-(bool) isSubscriptionGranted {
return TRUE;
}
-(void) setIsSubscriptionGranted:(bool)arg1 {
arg1 = TRUE;
return %orig;
}
%end

%hook SCSubscriptionService
-(bool) isSubscribed {
return TRUE;
}

-(bool) isSubscriptionActive {
return TRUE;
}
%end
%end
%ctor
{
  HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.picsart.studio"];
 bool Enable = [([Key objectForKey:@"pic"] ?: @(NO)) boolValue];

if (Enable) {
 %init(Pics);

}
}







%config(generator=internal)
%group UIDoc
%hook IAPPricePlan
-(BOOL) isSubscriptionUser
{
 return true;

}
%end
%end
%ctor
{



  HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.kinemaster.app"];
 bool Enable = [([Key objectForKey:@"kin"] ?: @(NO)) boolValue];

if (Enable) {
 %init(UIDoc);

}
}














%config(generator=internal)
%group CMA
%hook AppDelegate
-(bool) proPurchased
{
 return true;
}
%end
%end
%ctor
{



  HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.mobivio.cutecut"];
 bool Enable = [([Key objectForKey:@"asd"] ?: @(NO)) boolValue];

if (Enable) {
 %init(CMA);

}
}














%config(generator=internal)
%group Per
%hook TConfig
-(BOOL)isPro
{
    return true;
}
%end
%end
%ctor
{



  HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.tang.ivideofree"];
 bool Enable = [([Key objectForKey:@"per"] ?: @(NO)) boolValue];

if (Enable) {
 %init(Per);

}
}











%config(generator=internal)
%group salatk
%hook ThemesManager
-(bool) IsThemePurchased:(id)arg1 {

return true;

}
%end
%hook Widget
-(bool) isBought {

return true;

}
%end
%end
%ctor
{



  HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.iphoneislam.elasalaty"];
 bool Enable = [([Key objectForKey:@"slat"] ?: @(NO)) boolValue];

if (Enable) {
 %init(salatk);

}
}







%config(generator=internal)
%group pixaloop


%hook PNXUserSubscriptionStateProvider
-(bool) isSubscriber {
return true;
}
%end
%end
%ctor
{
  HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.lightricks.Enlight-Phoenix"];
 bool Enable = [([Key objectForKey:@"pix"] ?: @(NO)) boolValue];

if (Enable) {
 %init(pixaloop);

}
}











%config(generator=internal)
%group photoshack
%hook PUDeletePhotosActionController
-(bool) shouldSkipDeleteConfirmation {
  return TRUE;
}
%end
%end
%ctor
{
  HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.apple.mobileslideshow"];
 bool Enable = [([Key objectForKey:@"pho"] ?: @(NO)) boolValue];

if (Enable) {
 %init(photoshack);

}
}











%config(generator=internal)
%group mega
%hook MEGASdk
-(bool) mnz_isProAccount {

return true;

}
%end
%end
%ctor
{
  HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"mega.ios"];
 bool Enable = [([Key objectForKey:@"mg"] ?: @(NO)) boolValue];

if (Enable) {
 %init(mega);

}
}














%config(generator=internal)
%group Foc
%hook MKStoreKit
-(bool) isProductPurchased:(id)arg1 {
    return true;
}
%end

%hook FLStoreKit
-(bool) subscribedPro {
    return true;
}

-(bool) subscriptionPurchased:(int)arg {
    return true;
}

%end
%end
%ctor
{
  HBPreferences *Key = [[HBPreferences alloc] initWithIdentifier:@"com.focos"];
 bool Enable = [([Key objectForKey:@"Fo"] ?: @(NO)) boolValue];

if (Enable) {
 %init(Foc);

}
}
