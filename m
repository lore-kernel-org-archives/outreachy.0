X-GM-THRID: 6339872556971982848
X-Received: by 10.200.50.141 with SMTP id z13mr6462284qta.52.1476116608061;
        Mon, 10 Oct 2016 09:23:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.41.80 with SMTP id p77ls3316801itp.4.gmail; Mon, 10 Oct
 2016 09:23:24 -0700 (PDT)
X-Received: by 10.66.87.130 with SMTP id ay2mr5130018pab.112.1476116603943;
        Mon, 10 Oct 2016 09:23:23 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id um12si8758642pab.2.2016.10.10.09.23.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 09:23:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id r9so7487224paz.1
        for <outreachy-kernel@googlegroups.com>; Mon, 10 Oct 2016 09:23:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=VLmkkzHUwUxKh2W5yndFh9q2X6Axi+f6DtNaawDBbxU=;
        b=Z/UQy4cwGlVgZ45F844eSCHth2yC8bLlWG0HOj0oKVjbNvtdja1brDsvxhE0GKt7ha
         nimanujAd7kLNIoEFssZQ+EZVYkwRI/5NJKSuYdJUxeC4Z/34iCE3zwytu2QkCbFN0Uc
         Drj0cfBRPlCd8+TwYkJO+hEJra5CG7VoI3oUhn5yXWGHGR32VuaS0FynMC3fZv5iOk8p
         3+aGcGhBzIBb2DNjQ3bmd/5m62DVjWO0Un3ijGNvR8A2sl6y48piYtYCQcJJZ1Fgy0rl
         9aXS9eSBc3SMQjjCVFSHpD5jIx7/MbcyQj9STa3qDb3vPlBC/x4t0B3wjnwv5bLDQw2R
         wXUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=VLmkkzHUwUxKh2W5yndFh9q2X6Axi+f6DtNaawDBbxU=;
        b=IAYItpeZkuDjbyphYWJ617ZNPMWinv3ywkrVN2CRNVGV0EZ/RITT/BUHmJpjxuWSdN
         VKwGgHxVH5W0xdnOISviHvPUbMoE4rBJJX1RYdPYb+6XjfU/wJetziPXMiiXUi4fPckw
         GfLjldOKl+Rm/nLp+/QW8Px1EmqOgyiOvwkFb+lFA+T1qerXLeoz9nPB0a4/uoOS0NbM
         TTX4Z8xxzPCvExUefpWb4Jf94qXV7bdqlgaCXl5jWwekITzdmaxv8wslM91qTq7iuFZk
         GjPgUuH1WpX74E78U89LxxifLWgeunvc849AQuYS4isqLPCDLBvJCnY29sfmlYcyYHi5
         2zNA==
X-Gm-Message-State: AA6/9RkcDqHaD883Mrq8zAFSkIRCOamqQQHE9J0hyg13FbGakra35m6SSpQSizLfZbKbpA==
X-Received: by 10.66.176.141 with SMTP id ci13mr55827196pac.85.1476116603606;
        Mon, 10 Oct 2016 09:23:23 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.208.178])
        by smtp.gmail.com with ESMTPSA id aa6sm4529288pad.46.2016.10.10.09.23.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 09:23:23 -0700 (PDT)
Date: Mon, 10 Oct 2016 21:53:10 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: wlan-ng: cfg80211: Remove unnecessary parentheses
 around variables
Message-ID: <20161010162310.GA21575@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The patch fixes the checkpatch.pl check:
CHECK: Unnecessary parentheses around variable

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 182b2d5..2df5d67 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -375,13 +375,13 @@ static int prism2_scan(struct wiphy *wiphy,
 		ie_buf[0] = WLAN_EID_SSID;
 		ie_buf[1] = msg2.ssid.data.len;
 		ie_len = ie_buf[1] + 2;
-		memcpy(&ie_buf[2], &(msg2.ssid.data.data), msg2.ssid.data.len);
+		memcpy(&ie_buf[2], &msg2.ssid.data.data, msg2.ssid.data.len);
 		freq = ieee80211_channel_to_frequency(msg2.dschannel.data,
 						      NL80211_BAND_2GHZ);
 		bss = cfg80211_inform_bss(wiphy,
 			ieee80211_get_channel(wiphy, freq),
 			CFG80211_BSS_FTYPE_UNKNOWN,
-			(const u8 *)&(msg2.bssid.data.data),
+			(const u8 *)&msg2.bssid.data.data,
 			msg2.timestamp.data, msg2.capinfo.data,
 			msg2.beaconperiod.data,
 			ie_buf,
-- 
2.7.4


