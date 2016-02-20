X-GM-THRID: 6253354583322525696
X-Received: by 10.182.246.130 with SMTP id xw2mr17855380obc.29.1455972572465;
        Sat, 20 Feb 2016 04:49:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.118.165 with SMTP id kn5ls356875obb.18.gmail; Sat, 20 Feb
 2016 04:49:32 -0800 (PST)
X-Received: by 10.182.118.169 with SMTP id kn9mr17589750obb.11.1455972572125;
        Sat, 20 Feb 2016 04:49:32 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id ff2si2337086pad.2.2016.02.20.04.49.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 04:49:32 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id ho8so67010169pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 04:49:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=jlsSuoGdUCaf1tT25nHoNOCzkIRlacb3bQ1HJhx4Gtk=;
        b=MCUD/DRkD5Ntxx6U15HpBs5o3hzBfV+TPX1u1pRdsHWsXFIBU62LWGqBu/IkRpKvYb
         C+vWvws4n6PykEAIv5s2TxvNTCdF4eFTOg4MZL9nMI6Mg5HSqcxukhPrHUsjATtlxGJ+
         aiU+X9DKeiPMPe9pdfTEfloPCgxXTEqIIyxEaokR1DHLN80mf4uw4c1uFClL6D7dArQR
         xIgQt9XsWu6rKlIqjgC30bD+DAgcJulqM3zdFNsqaGZ4YFHxEdENMm+oHTuajnfiGaBq
         avtkpTAckZWpRHrM/CCnvBEn4ssXyPlrf8xE+OSHmIFXeUmrVsD5Szz5EYGOUtkxAWWc
         njQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=jlsSuoGdUCaf1tT25nHoNOCzkIRlacb3bQ1HJhx4Gtk=;
        b=bhctIrslUqZjsA6NzBbD/Kh7xWvx5veC/s7KScMyWm+vkJT00yyTbXRwkFJS83gaWs
         Ow4O/I6GgePYLML1jXzOLqJXur3lkoRP6bTjmAAhFdBlvUHwAdd8jQBMsxB1/0xC2dQ9
         C2UvkCzyv4+W+l0gjVLgwWtFboOYyuBxDbMJvXcD8iyqz19ZuQLxNgMDotGLWix1aZJP
         o4WBeM36V0Bbcs4C6ulM26qCP/OsnLiqf539jzCsQH50hCYcCOkacyEzrQM/biAn6q0K
         Iq8YOuv3tJ4WsB4GEUfnZcY5A0PoxNp47fOStA2y24JWaSmoW4XG6duJT/83SrqT2nO1
         xowQ==
X-Gm-Message-State: AG10YOT72v2GmUb1n+9zZBa96m6yhiM+LC4LVn8UHk+b0C5eVBuxfTdIClhaSAaz+XMFMg==
X-Received: by 10.66.160.7 with SMTP id xg7mr24859817pab.10.1455972571965;
        Sat, 20 Feb 2016 04:49:31 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.39])
        by smtp.gmail.com with ESMTPSA id p8sm24519946pfi.34.2016.02.20.04.49.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 04:49:31 -0800 (PST)
Date: Sat, 20 Feb 2016 10:19:33 +0530
From: Sandhya <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH]: staging: wlan-ng: Remove unnecessary NULL check before
 returning error.
Message-ID: <20160220044933.GA10427@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Remove unnecessary NULL check before returning error.

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


