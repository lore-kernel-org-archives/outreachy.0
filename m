X-GM-THRID: 6250414458663862272
X-Received: by 10.66.145.105 with SMTP id st9mr4885387pab.10.1455338048274;
        Fri, 12 Feb 2016 20:34:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.157.134 with SMTP id g128ls1037298ioe.45.gmail; Fri, 12
 Feb 2016 20:34:08 -0800 (PST)
X-Received: by 10.107.130.28 with SMTP id e28mr6207321iod.34.1455338048013;
        Fri, 12 Feb 2016 20:34:08 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ui7si2167515pab.0.2016.02.12.20.34.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 20:34:07 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id fl4so4589509pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 20:34:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=s+AFNyG0aGIgq1wt1hKZX1dzMg76UeSV2cSELfTGoMo=;
        b=KFEWEjzprMie1W7rox/lRj6qn7WAIDqfVE4h14AmEysuakv98WqRkCmdpFCuxam7YF
         Cv0jcx9k9SOp8NpKUNCPhwz3RGhew1Ey94PAbcrnJJZFER/q076IP7t1oiPTBhRHzB27
         MxvfNRGoVQ5TriCBdd9sXcVlrourXsqM0snjkZTczexYRgEzl0n6v6NajnlH6AEyOvkg
         VNWodicZfjGnlEbT0w1hx64ocPaPjDvvIqLr47GINGSJ2aNYoioXN1G0Ka3zNgfJoO5U
         3wdvJByeP09goRay4eg1jOlGZJwqAmrRaHFDi4fxS/XUZaVsArH61+FJILaP94AXdx/9
         jz/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=s+AFNyG0aGIgq1wt1hKZX1dzMg76UeSV2cSELfTGoMo=;
        b=CpaLxXFq9zMY6JGiaCKOgYIAR2kdkrlBX0kqQ7/AvqrnX0wrXCk1cXIZMOqN9Y4x3I
         Xwi22gCQ9TJJPdyYyw2ph0sIvra5mFgQzvi94qmXhs4voxbLSfOIoa8mmrA3Cv7GaKup
         NIGAn4RRmCnamKGUdzqPRYoXw8BQAHeScOfexMeSEibLdoboytQf5ZegzUUZuA4KPfSe
         9RrO+ySJbU1KXf9V8USOx2BrwpjEGqIPfr76WzKZNt9Jt42t6eRrH80zCVTuN1n53DaT
         4iQrHin+Tf9d5nV5AJPLpn4LLYwNSdN9BIqPtZDJ/sC+4QEkxztQb/n42y8W47FYGcpz
         mWsA==
X-Gm-Message-State: AG10YOSpLLhlLr+LI6sTEV1Np6rs7z+jI+UfAytolCpYrPUHXYDx3gZeXTq5dStCG2/dJg==
X-Received: by 10.66.141.11 with SMTP id rk11mr7373725pab.75.1455338047850;
        Fri, 12 Feb 2016 20:34:07 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.149.32])
        by smtp.gmail.com with ESMTPSA id s23sm22804270pfi.12.2016.02.12.20.34.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 20:34:07 -0800 (PST)
Date: Sat, 13 Feb 2016 10:04:04 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/6] staging: rtl8192u: ieee80211: ieee80211_softmac:
 Replace MSECS with msecs_to_jiffies
Message-ID: <20160213043404.GA6294@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Replace driver specific macro MSECS with msecs_to_jiffies().

This was found using the following Coccinelle semantic patch:

//<smpl>
@@
expression e;
@@

- MSECS(e)
+ msecs_to_jiffies(e)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -None

 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 21ee410..6d85648 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -380,7 +380,8 @@ static void ieee80211_send_beacon(struct ieee80211_device *ieee)
 	if (ieee->beacon_txing && ieee->ieee_up) {
 //		if(!timer_pending(&ieee->beacon_timer))
 //			add_timer(&ieee->beacon_timer);
-		mod_timer(&ieee->beacon_timer,jiffies+(MSECS(ieee->current_network.beacon_interval-5)));
+		mod_timer(&ieee->beacon_timer,
+			  jiffies + msecs_to_jiffies(ieee->current_network.beacon_interval-5));
 	}
 	//spin_unlock_irqrestore(&ieee->beacon_lock,flags);
 }
@@ -1735,10 +1736,12 @@ static short ieee80211_sta_ps_sleep(struct ieee80211_device *ieee, u32 *time_h,
 	if(dtim & ((IEEE80211_DTIM_UCAST | IEEE80211_DTIM_MBCAST)& ieee->ps))
 		return 2;
 
-	if(!time_after(jiffies, ieee->dev->trans_start + MSECS(timeout)))
+	if(!time_after(jiffies,
+		       ieee->dev->trans_start + msecs_to_jiffies(timeout)))
 		return 0;
 
-	if(!time_after(jiffies, ieee->last_rx_ps_time + MSECS(timeout)))
+	if(!time_after(jiffies,
+		       ieee->last_rx_ps_time + msecs_to_jiffies(timeout)))
 		return 0;
 
 	if((ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE ) &&
-- 
1.9.1


