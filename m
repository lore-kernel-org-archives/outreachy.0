X-GM-THRID: 6253454979365863424
X-Received: by 10.129.125.215 with SMTP id y206mr18547528ywc.54.1455996217894;
        Sat, 20 Feb 2016 11:23:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.74 with SMTP id z68ls746908qge.36.gmail; Sat, 20 Feb
 2016 11:23:37 -0800 (PST)
X-Received: by 10.129.41.70 with SMTP id p67mr18912236ywp.33.1455996217293;
        Sat, 20 Feb 2016 11:23:37 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id ui7si2327466pab.0.2016.02.20.11.23.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 11:23:37 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id fy10so68292942pac.1
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 11:23:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=2rirxBiYiCCfg2J5Rnhl1uNFa+ioXO3D3mmiIfJDpZw=;
        b=OlhH1Pm4//nc8gPoMGnFXLvPZ/RwzQUl3ukLpK1IF4QtaRfZq6ETo9D8fsig1h0Oxg
         nJ0UdBgYNlWMI/rGgSod65mCxvMsmqLYivCQ5zwXJUrveqgxVqwMR2owZbSENaVnrLzr
         Nh/U8VWHrxTQOSytdOhQzWNrr9985RHNXADvsClXmTeUcBpqfVuANvVFlG5kmBzyLqhm
         QCsFnB0g7Y5YUH65FNL+PRUB7nN8zjkDnrdfgYOewPm1oxk0LH6h1fSpd29vT1l9vQez
         AV5Sp97RM9wMmMM5O3T4remv/r7bknninVmdLQqTLVXxe6uYBov1MlejN8V0fmvnM6rX
         91+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=2rirxBiYiCCfg2J5Rnhl1uNFa+ioXO3D3mmiIfJDpZw=;
        b=ExhLf2vuy7Gu8bsAo8iBDAMr7LLk2/3jn/2UaiHuNBMpBWTUQ7V4xKF4N8LE52DrpH
         sJK57ShOXTgJWoYQ6JIlLg+lmGPejXBT0oS5xKXeFErSJ0xzCQTG8CcdPu3I49nYcOA/
         9aFp28vJ0DG6nOnj/zOcbZkczRGs5IdqPjFLi5qWo2Ye59UZf3tmVSsDm4UXHUhkkF0O
         FREuvEi2+3JblH0irg4wSaWz6cq/XVkxfMKdPpMNT0r4vrq1xl7tXozxa8iKvF5luSud
         UflqWRSR1l4R6Uk6/uaEQElb50K7pDSLtrTU2r+QsuNPUIxkgBp2YmS2X6WlSLotyylQ
         lNPA==
X-Gm-Message-State: AG10YOSR9Ve3U7KpLS0ehukwob2y5v8dQegZGbMGQJ4zYbRcYJtXZn5KhgG2GHLfnOiZGA==
X-Received: by 10.66.222.129 with SMTP id qm1mr26878324pac.22.1455996217137;
        Sat, 20 Feb 2016 11:23:37 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.82])
        by smtp.gmail.com with ESMTPSA id o90sm26246789pfi.17.2016.02.20.11.23.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 11:23:36 -0800 (PST)
Date: Sat, 20 Feb 2016 16:53:36 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: wlan-ng: Convert explicit comparison to NULL to
 !x.
Message-ID: <20160220112336.GA3161@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Convert explicit comparison to NULL to !x.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
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


