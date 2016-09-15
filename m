X-GM-THRID: 6330466740152041472
X-Received: by 10.66.88.234 with SMTP id bj10mr5301439pab.36.1473926645664;
        Thu, 15 Sep 2016 01:04:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.193 with SMTP id b1ls2683155otd.19.gmail; Thu, 15 Sep
 2016 01:04:05 -0700 (PDT)
X-Received: by 10.157.11.233 with SMTP id 96mr5398603oth.42.1473926645228;
        Thu, 15 Sep 2016 01:04:05 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id h124si2268730pfe.0.2016.09.15.01.04.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:04:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id n24so1912717pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 01:04:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Z6D8c/4eupSGLGQw2f0SSR+2YpDk0GZ29MZfNrnJ6Tc=;
        b=JbLoylbJPS0FCqcI9OE9ktWM0i4g09APEEeg1m7oTJqfuayUwjYTtkHanqY18lAJMQ
         WParbV89FqQ38vy7KIfrpXuUpj6+aPUgZPP9/taquxCvNJbpK5cRz5lGysQAtRbzEkiY
         KpublHSs1U7fr9HMudY3FFl2fF6wuIvHg3zcBAtGwQ2nCV00Wp2zO7BMbG7hHImMQOp3
         WabbVKEXd2So8nUI1EuQaQimfeK05DTYVZFNgD6Kf5D6GhE7nt5K/23MmGAX/QhraTGL
         vSaarybD8dD7uNCcKCWmREl6Y8GnJ084J4leydAfcGucJDGO91vNveyVUQtbMftRZLvv
         IxeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Z6D8c/4eupSGLGQw2f0SSR+2YpDk0GZ29MZfNrnJ6Tc=;
        b=V4tsUiV20F56Yep5mmla6hRAq1Hc94zmYMItI81C+AuTfMoxWlzIYit+68f8DK95sO
         0CjtI3WCpJhlAB+DKN4iFoVqfD7+0Hg+VE6/egqNOQDZlOE5OTY+/sWDM4JmXnisIiZV
         f/kYBMe3+8Z4ai9MyU06vryisGDLwAECfoe/gmd3L/LgxadKSr0x7jNZX3VZNHdgLfFO
         QHNgfZn1pefj7SZXQ2LlcsySkTyIaavnCjw+zxkMtukD/uhPGjdkvRcTpUa9h4tnKoMw
         tMFgAf6ihKYpAPJuXJnkECP7HLX0slgM0f5Wx+5WH1GMi93nJi+YrOACcnyr2GpS/U96
         gQxQ==
X-Gm-Message-State: AE9vXwN/sNAWIoDWxUz+wkR8DupzxB/EfH74GWlewD4XUoG8jQagL75M8ByoiBBemGtYMw==
X-Received: by 10.98.25.66 with SMTP id 63mr12412723pfz.94.1473926645009;
        Thu, 15 Sep 2016 01:04:05 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.70.7.237])
        by smtp.gmail.com with ESMTPSA id ae7sm2941927pac.19.2016.09.15.01.04.01
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 01:04:04 -0700 (PDT)
Date: Thu, 15 Sep 2016 13:34:38 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, claudiu.beznea@gmail.com,
	johannes.berg@intel.com, gavinoleary3@gmail.com,
	brcnakalin@gmail.com, avraham.stern@intel.com,
	brutallesale@gmail.com
Subject: [PATCH] Staging: wlan-ng: Use !x instead of x == NULL.
Message-ID: <20160915080438.GA6782@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL.
This patch is detected by checkpatch.pl script.


Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/wlan-ng/cfg80211.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
index a36e40d..884d0d5 100644
--- a/drivers/staging/wlan-ng/cfg80211.c
+++ b/drivers/staging/wlan-ng/cfg80211.c
@@ -265,7 +265,7 @@ static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
 
 	memset(sinfo, 0, sizeof(*sinfo));
 
-	if ((wlandev == NULL) || (wlandev->msdstate != WLAN_MSD_RUNNING))
+	if (!wlandev || (wlandev->msdstate != WLAN_MSD_RUNNING))
 		return -EOPNOTSUPP;
 
 	/* build request message */
@@ -274,7 +274,7 @@ static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
 	quality.dbm.status = P80211ENUM_msgitem_status_data_ok;
 
 	/* send message to nsd */
-	if (wlandev->mlmerequest == NULL)
+	if (!wlandev->mlmerequest)
 		return -EOPNOTSUPP;
 
 	result = wlandev->mlmerequest(wlandev, (struct p80211msg *)&quality);
-- 
1.8.2.3


