static BOOL svipEnable = NO;
%hook SettingViewController
- (void)loadTheme {
 NSMutableDictionary *settings = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/fun.kwok.momosvip.plist"];
 svipEnable = [settings objectForKey:@"svip"] ? [[settings objectForKey:@"svip"] boolValue] : NO;
 if(svipEnable) {
UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Tips" message:@"Hook successed! \n By Kwok" delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil, nil];
[alert show];
 }
}
%end

%hook InfTb
- (long long)wordsLimit {
NSMutableDictionary *settings = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/fun.kwok.momosvip.plist"];
svipEnable = [settings objectForKey:@"svip"] ? [[settings objectForKey:@"svip"] boolValue] : NO;
if(svipEnable) {
return 99999;
}
return %orig;
}
- (long long)usableWordLimit {
NSMutableDictionary *settings = [[NSMutableDictionary alloc] initWithContentsOfFile:@"/var/mobile/Library/Preferences/fun.kwok.momosvip.plist"];
svipEnable = [settings objectForKey:@"svip"] ? [[settings objectForKey:@"svip"] boolValue] : NO;
    if(svipEnable) {
    return 99999;
    }
    return %orig;
}
%end
