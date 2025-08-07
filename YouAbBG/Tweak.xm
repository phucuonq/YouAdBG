#import <YouTubeHeader/YTPlayerViewController.h>
#import <YouTubeHeader/YTPlaybackBackgroundManager.h>
#import <YouTubeHeader/YTIPlayerResponse.h>
#import <YouTubeHeader/YTAdsInnerTubeContext.h>

// Chặn quảng cáo video đầu và giữa
%hook YTAdsInnerTubeContext
- (BOOL)shouldShowAds {
    return NO;
}
%end

// Chặn quảng cáo trong player response
%hook YTIPlayerResponse
- (BOOL)hasAdPlacements {
    return NO;
}
%end

// Chặn quảng cáo UI (overlay, banner, v.v.)
%hook YTPlayerViewController
- (void)loadAdComponents {
    // Không làm gì cả (ngăn không load các thành phần quảng cáo)
}
%end

// Bật chạy nền
%hook YTPlaybackBackgroundManager
- (BOOL)isBackgroundPlaybackAllowed {
    return YES;
}
%end