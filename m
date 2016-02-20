X-GM-THRID: 6253454979365863424
X-Received: by 10.182.247.68 with SMTP id yc4mr19338774obc.34.1455999046395;
        Sat, 20 Feb 2016 12:10:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.153.111 with SMTP id vf15ls221699igb.7.gmail; Sat, 20 Feb
 2016 12:10:46 -0800 (PST)
X-Received: by 10.67.5.233 with SMTP id cp9mr18256754pad.43.1455999046071;
        Sat, 20 Feb 2016 12:10:46 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id 12si2309597pfb.1.2016.02.20.12.10.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 12:10:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id q63so69900196pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 12:10:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=kO/QpTTGuz212dBFK+22ryfFdvOnI4f3f6odsnQC2HI=;
        b=mSaC0CejaXvlncFr3NhVS5K1jWRLho7n8r9yKQcJxr5d+gI7MHwYyXKPKXHhNFF905
         XJGyRQ6DgZDbbn0E2P+FfehUMbkXTpsDjEDLZdK9VuCZp7dGQaHGFyeCEqaVCZZp7dsE
         iq3XYfcKKwRdUmkV+sXUE4vugtMltK0bX0JHulwCeangpe6du2P7tXyl38Ogqf7Nd+LK
         mL5K5j1eyn+0WBP9purrklm4VhG36wGJRIjHKxSMa+ZQ78QCAHTg7D6Vtcrh6683x767
         mZboLiKBhZ4e/hNgCqIpNftnEu79KbQ7MCzM0Lpgb6wsuZs75yf1fz5eXb5M+Q3adHZB
         ddgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=kO/QpTTGuz212dBFK+22ryfFdvOnI4f3f6odsnQC2HI=;
        b=Jf5ZeOCljaGcC5j58NCgx89rfeem6u7F8x5pA4eZlSaLIptWwPJX4qvfrbZQ6G47Yh
         mTSzBwq095PmY2UBvhb4QvmYryRzb87A3/t3rN4YZ/BFhOvBebKMlUVavkV4h/hKyzto
         VOfHE2V1y1lkviCw9U4cfD4Yu/4KdV28olrF64QRn79V4agzWQISuVsHHi4ibBSiMvgy
         ag9u7kQUChHQEcTJpquhEjzZMYYkOGPrszwxuagmvGcq8yR3wjfe0T+SFj6EykF2D9IV
         KYnBCR2VAsz+kWWnKKtM6tbCw/nMpCqNO5Yv3RkehMeCYlYb8SAvvgJjvYrEEO+kU9BW
         PbnQ==
X-Gm-Message-State: AG10YOTOUuDdUt5zb2huABYxg5Cb+zkf8xInL2eqzVj1azEK4jT4Q2zjO1j4/D8RqYqVWA==
X-Received: by 10.98.87.90 with SMTP id l87mr27456268pfb.70.1455999045959;
        Sat, 20 Feb 2016 12:10:45 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.82])
        by smtp.gmail.com with ESMTPSA id xg9sm26566427pac.9.2016.02.20.12.10.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 12:10:45 -0800 (PST)
Date: Sat, 20 Feb 2016 17:40:47 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] Staging: wlan-ng: Convert explicit comparison to NULL to
 !x.
Message-ID: <20160220121047.GA3429@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Convert explicit comparison to NULL to !x.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v3:
*In v2,missed to add comment below --- so adding comment  
*Adding Full name in signed-off-by line.

 drivers/staging/wlan-ng/cfg80211.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index 8c1e3f0..c59dd33 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -303,7 +303,7 @@ static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
 
 	memset(sinfo, 0, sizeof(*sinfo));
 
-	if ((wlandev == NULL) || (wlandev->msdstate != WLAN_MSD_RUNNING))
+	if (!wlandev || (wlandev->msdstate != WLAN_MSD_RUNNING))
 		return -EOPNOTSUPP;
 
 	/* build request message */
@@ -312,7 +312,7 @@ static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
 	quality.dbm.status = P80211ENUM_msgitem_status_data_ok;
 
 	/* send message to nsd */
-	if (wlandev->mlmerequest == NULL)
+	if (!wlandev->mlmerequest)
 		return -EOPNOTSUPP;
 
 	result = wlandev->mlmerequest(wlandev, (struct p80211msg *) &quality);
-- 
1.8.3.4


