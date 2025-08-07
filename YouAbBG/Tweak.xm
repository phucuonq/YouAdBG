// Chặn quảng cáo
%hook YTAdsController
- (BOOL)shouldShowAds {
    return NO;
}
%end

// Cho phép chạy nền
%hook AVAudioSession
- (BOOL)setCategory:(NSString *)category withOptions:(AVAudioSessionCategoryOptions)options error:(NSError **)outError {
    return %orig(@"AVAudioSessionCategoryPlayback", AVAudioSessionCategoryOptionMixWithOthers, outError);
}
%end