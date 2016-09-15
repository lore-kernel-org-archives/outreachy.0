X-GM-THRID: 6330466740152041472
X-Received: by 10.157.40.120 with SMTP id h53mr5730939otd.44.1473927738985;
        Thu, 15 Sep 2016 01:22:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.121.132 with SMTP id z126ls273140itc.5.canary; Thu, 15 Sep
 2016 01:22:18 -0700 (PDT)
X-Received: by 10.66.65.174 with SMTP id y14mr5344317pas.34.1473927738481;
        Thu, 15 Sep 2016 01:22:18 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id si10si815815pab.1.2016.09.15.01.22.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:22:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so1932622pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 01:22:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=DEWIwheLB++/SdL7pBBfDE+Zp3qFZ4kgypu/4cPLLb4=;
        b=FxUFPangJIqNu3bZG/7C6p5ZsS3nkJ1xK6aw9ppdP7MGAzrdwy5aHJ3pG+zBTBJ4Vz
         ZcyNzFuDZoweP/Oj0CHYlvtezt2+2WflrNXsh6MDUZrTkEDCVi2FOYcdd7DmxQkwOMl3
         W1njXi2MwRhzPj+ROmwBvlkCcQ4Oo+aXGDpKx9re3NvcJIP+dPRbdA9TXfIXJr55xyJv
         FnY9akIbcFMXCV4AVYHBrdwwWzymsm2WbkPPNioRoJIwZon5XCHQ/KPREBSl6B5LbHPW
         DfA+HAF0bg2BZdw+6Z9XNjXqQrN2okKg5MTBWrNMqIIY/hpNqE+Nka3luUsM0Su6hGMU
         SXTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=DEWIwheLB++/SdL7pBBfDE+Zp3qFZ4kgypu/4cPLLb4=;
        b=cW/VqgKU4QTb8kz6SPtRnl+k4uiummavdiNNrRi+Dc4T3B/1RG+ySPoU2tnOMyeaZU
         +tSNvxe3Gwg/iXMwy5C15ldXKlJkw58Sn5N0b0ZL4rlnxdX427Ve7Z2CepdAnURBGtCo
         oAz2WgllgBwgKnNtEFnj8NNcfPakWzzOfH+R5XZkebg7nDzdlnAAhK330SsKj2jN1/33
         jxrAOe7jHnX1v5/z9oWHv4sPCGU9ZWALJoNJgjsoijhU6dFlq22Y5DRij4Uj4cw4Vu8K
         RX5Z/4BOYwjdZj4qu303fZyGvqG9MFqqxq9delmKQ9kN5gNLBYm8G/DZgCMw5B0guUij
         lV7A==
X-Gm-Message-State: AE9vXwMQnX12qfXbAkik3M8reXkq7LITE4U5ejfWuqPM9duNvxN4+N0wwGpNugrwKX20LQ==
X-Received: by 10.98.28.146 with SMTP id c140mr7375167pfc.158.1473927738302;
        Thu, 15 Sep 2016 01:22:18 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([182.70.7.237])
        by smtp.gmail.com with ESMTPSA id cp11sm3085357pac.28.2016.09.15.01.22.14
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 01:22:17 -0700 (PDT)
Date: Thu, 15 Sep 2016 13:52:51 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, claudiu.beznea@gmail.com,
	johannes.berg@intel.com, gavinoleary3@gmail.com,
	brcnakalin@gmail.com, avraham.stern@intel.com,
	brutallesale@gmail.com
Subject: [PATCH v2] Staging: wlan-ng: Use !x instead of x == NULL.
Message-ID: <20160915082251.GA6833@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Use !x instead of x == NULL.
This issue was found by checkpatch.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
Changes in v2:
* Correcting the commit message.
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


