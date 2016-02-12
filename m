X-GM-THRID: 6250414458663862272
X-Received: by 10.107.7.200 with SMTP id g69mr2751792ioi.3.1455288021839;
        Fri, 12 Feb 2016 06:40:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.241.101 with SMTP id wh5ls788323obc.3.gmail; Fri, 12 Feb
 2016 06:40:21 -0800 (PST)
X-Received: by 10.182.97.167 with SMTP id eb7mr1705980obb.16.1455288021561;
        Fri, 12 Feb 2016 06:40:21 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ff2si1465997pad.2.2016.02.12.06.40.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 06:40:21 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id w128so3479570pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 06:40:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=aPAXVRS3XqyhR9IVExLYnoQWFUyZlXKv8MJAznOKXwU=;
        b=biPbMQ7LiBC5YPUWBdQwXFrV8EibqxDusP6CfYwULytmNL/NfwLOA2YKQdsgWckiyN
         JM05sZDQ73bApDGz4sR05ci7mVyjp1PPFn/fvB2YU0g5kQtrLdnag7+7FGCspFsnVdsb
         cb7UBHud/zRHTB6zxZ3sg3FPWK9z13Dl+9Y1OqZeRcIhNJI/iQS47HkBl+giy5yVM8bc
         T8Nb8/gvz6spnpnu1qKXLndjs5sielfVxDgbgUry/TWQHU0yrJ2oZrUNgHIjW+TRrtVp
         pt4jTX4yi9GtouNq8nqXlQtN3zpc+MIWMNpG4XbdHaGkC97JzE0uAM9b7x+Wg+eTt7ke
         uFIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=aPAXVRS3XqyhR9IVExLYnoQWFUyZlXKv8MJAznOKXwU=;
        b=NdZsAlTUj1KdpyAzYuT8O72YjNVNhrqssydnwvDpH466ek+dkcFKkL69IFzBxOC81t
         kw/iKx6w78IwIAClprkyV+TzUHptPjIuofQYsPvuKmgw64CbyJ70j72JHsDv35qanPv1
         9ZLMV0hA2mUZ1EvTk4Dl9hfLnwh0JizV6Tz95EILOSlP0KApoOXwr0Srnx1yxsILYZ+6
         UQIg+K6/QtY3vziYDKQX7dgEh3ePiwVg3lDiBTUIdzVR33Iz27fQCz0CIh5V+a/7pqln
         Zm8wk/GzNvMJ64aTD34CtYxZ/2Q5N7EmWX5huvm4uFy7LfkahcT3OJnsb62uVzLNiCWc
         4GKQ==
X-Gm-Message-State: AG10YOSkt6XZimRbDfCcOMSwI2GBX/X43zOHm6e09EY9jJChffzuuhFbKWBnjHRwke2xIw==
X-Received: by 10.98.1.85 with SMTP id 82mr2732705pfb.10.1455288021361;
        Fri, 12 Feb 2016 06:40:21 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id tp3sm20059829pac.16.2016.02.12.06.40.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 06:40:20 -0800 (PST)
Date: Fri, 12 Feb 2016 20:10:17 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: rtl8192u: ieee80211: ieee80211_softmac: Replace
 MSECS with msecs_to_jiffies
Message-ID: <20160212144017.GA1301@amitoj-Inspiron-3542>
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


