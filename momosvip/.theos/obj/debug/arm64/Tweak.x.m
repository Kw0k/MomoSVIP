#line 1 "Tweak.x"

#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class SettingViewController; @class InfTb; 
static void (*_logos_orig$_ungrouped$SettingViewController$loadTheme)(_LOGOS_SELF_TYPE_NORMAL SettingViewController* _LOGOS_SELF_CONST, SEL); static void _logos_method$_ungrouped$SettingViewController$loadTheme(_LOGOS_SELF_TYPE_NORMAL SettingViewController* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$InfTb$wordsLimit)(_LOGOS_SELF_TYPE_NORMAL InfTb* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$InfTb$wordsLimit(_LOGOS_SELF_TYPE_NORMAL InfTb* _LOGOS_SELF_CONST, SEL); static long long (*_logos_orig$_ungrouped$InfTb$usableWordLimit)(_LOGOS_SELF_TYPE_NORMAL InfTb* _LOGOS_SELF_CONST, SEL); static long long _logos_method$_ungrouped$InfTb$usableWordLimit(_LOGOS_SELF_TYPE_NORMAL InfTb* _LOGOS_SELF_CONST, SEL); 

#line 1 "Tweak.x"
static BOOL svipEnable = NO;

static void _logos_method$_ungrouped$SettingViewController$loadTheme(_LOGOS_SELF_TYPE_NORMAL SettingViewController* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
 NSMutableDictionary *settings = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/fun.kwok.momosvip.plist"];
 svipEnable = [settings objectForKey:@"svip"] ? [[settings objectForKey:@"svip"] boolValue] : NO;
 if(svipEnable) {
UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Tips" message:@"Hook successed! \n By Kwok" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
[alert show];
 }
}



static long long _logos_method$_ungrouped$InfTb$wordsLimit(_LOGOS_SELF_TYPE_NORMAL InfTb* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
NSMutableDictionary *settings = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/fun.kwok.momosvip.plist"];
svipEnable = [settings objectForKey:@"svip"] ? [[settings objectForKey:@"svip"] boolValue] : NO;
if(svipEnable) {
return 99999;
}
return _logos_orig$_ungrouped$InfTb$wordsLimit(self, _cmd);
}
static long long _logos_method$_ungrouped$InfTb$usableWordLimit(_LOGOS_SELF_TYPE_NORMAL InfTb* _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
NSMutableDictionary *settings = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/fun.kwok.momosvip.plist"];
svipEnable = [settings objectForKey:@"svip"] ? [[settings objectForKey:@"svip"] boolValue] : NO;
    if(svipEnable) {
    return 99999;
    }
    return _logos_orig$_ungrouped$InfTb$usableWordLimit(self, _cmd);
}

static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$SettingViewController = objc_getClass("SettingViewController"); MSHookMessageEx(_logos_class$_ungrouped$SettingViewController, @selector(loadTheme), (IMP)&_logos_method$_ungrouped$SettingViewController$loadTheme, (IMP*)&_logos_orig$_ungrouped$SettingViewController$loadTheme);Class _logos_class$_ungrouped$InfTb = objc_getClass("InfTb"); MSHookMessageEx(_logos_class$_ungrouped$InfTb, @selector(wordsLimit), (IMP)&_logos_method$_ungrouped$InfTb$wordsLimit, (IMP*)&_logos_orig$_ungrouped$InfTb$wordsLimit);MSHookMessageEx(_logos_class$_ungrouped$InfTb, @selector(usableWordLimit), (IMP)&_logos_method$_ungrouped$InfTb$usableWordLimit, (IMP*)&_logos_orig$_ungrouped$InfTb$usableWordLimit);} }
#line 31 "Tweak.x"
