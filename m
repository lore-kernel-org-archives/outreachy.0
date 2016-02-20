X-GM-THRID: 6253421946292142080
X-Received: by 10.182.199.70 with SMTP id ji6mr18134619obc.32.1455988256866;
        Sat, 20 Feb 2016 09:10:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.161 with SMTP id q33ls422315ioi.13.gmail; Sat, 20 Feb
 2016 09:10:56 -0800 (PST)
X-Received: by 10.50.138.73 with SMTP id qo9mr2988520igb.6.1455988256372;
        Sat, 20 Feb 2016 09:10:56 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id u66si2469071pfa.2.2016.02.20.09.10.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 09:10:56 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id fy10so67291753pac.1
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 09:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=zzcwSZ+cd3AaiX10xJo5fZms1JggGNWbE2C+eOKoWpY=;
        b=MYXDr83Hw2JtIB37ZStvkhIi8BxOm8W7Z9299D7yV1k64zuburkBz2vdAyCXzZgm7s
         XIbp1jOSJjNDvfiFGpQMnJhm34zMAPryPUd0FKcMwBPyzmXuGYWlM+j6V85+qYcizH9y
         XCrCcJ9fB+5JBSnhRXlyAhl7JCo0NaTRquqOxrz8lzNJfzXL02aNRNHOrVZYDRk7fY6P
         QUpu6ms0IHSi8VTR/T3K1284FnAF3cgodzymqvT/LsFLOCdQwhdf/xCkZ6zrphAGGwdr
         daUcGdAaCTfg1t/ZYqiVyi5AmKSW8YU46bO2bFT5TtK13LlZw6lqbVr3zt4n1z5X1RJL
         OuZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=zzcwSZ+cd3AaiX10xJo5fZms1JggGNWbE2C+eOKoWpY=;
        b=NTpZqaLkIHAZDs8Y+h+6PH5pK8bfOwTI6izYCcIbc/QKGlg4ehGmb+ygvupm9wgJTt
         aX+/Y3ykW/rBSsG2KfJc/f9ACSgtiWzlelxwkmahjjml7f6THSk1LNn6hONqXYk5ES6m
         fF8wxhivgaiqbqYctc8cwoI9BpG2Zq1/QV08LhGYXo/FFchr8xjixG08B8rPsItMVLbV
         X+Ieo9P7An5SwijurNnA7KtsYFISf9XdKCSyE9IG9LCPT+EoBZ1Al25eM4/5bG6iDIKC
         l8HQYY1yItg0SdVpIqU9DW7YQ3Pbjt7osthPI4cSAVs4UfFmkQeIG7hhAOPYMUGsv4pW
         BqRA==
X-Gm-Message-State: AG10YOSWldJbkRRvzpdgvcWnOfiPjsVKV3ySYwQB6N3jl7EvkpT02R6Y5/SmOUaXrwaHnA==
X-Received: by 10.66.101.36 with SMTP id fd4mr26855407pab.76.1455988256213;
        Sat, 20 Feb 2016 09:10:56 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.155])
        by smtp.gmail.com with ESMTPSA id x13sm25707777pfa.72.2016.02.20.09.10.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 09:10:55 -0800 (PST)
Date: Sat, 20 Feb 2016 14:40:36 +0530
From: Sandhya <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH]: staging: wlan-ng: Convert explicit comparison to NULL to !x.
Message-ID: <20160220091036.GA3362@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Convert explicit comparison to NULL to !x.

Signed-off-by: Sandhya <bankarsandhya512@gmail.com>
---
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


