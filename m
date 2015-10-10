X-GM-THRID: 6203986156822986752
X-Received: by 10.140.150.206 with SMTP id 197mr16273144qhw.0.1444495741274;
        Sat, 10 Oct 2015 09:49:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.152 with SMTP id u24ls1175109iou.29.gmail; Sat, 10 Oct
 2015 09:49:01 -0700 (PDT)
X-Received: by 10.66.229.69 with SMTP id so5mr16459162pac.26.1444495741019;
        Sat, 10 Oct 2015 09:49:01 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id pe1si784197pac.2.2015.10.10.09.49.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 09:49:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ve7so56547783pab.2
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 09:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=H+MOqphtyIAIjpr6u+EiyzxBz563S78PtdejdFvBaOA=;
        b=FBrX7KKz3XrWEZfGeUYJCiwHANw6OicDLzHk6gQgaEz+nQmP1ZyRwmOYGtmIY7pcfN
         kBXbos+vNQ5hQMW+aBH3YnS3/4T9YJG57uOPZseYdTimWhXU0mf2UyKKY1l5p4V2MzhP
         1plYC6WPIfF4PTk10H1l/apBY3znwQuDwtHfRbnGIkAImdHGG4fj8PH8pkwCW9j0iyiU
         1oSjQ0hgA4B8bPyhtzD7aavZrhdKsOpjWRa6dDi6y5thLKXARp5wCQDR8AdS4F1stFXj
         T34KZH86YCrDaP1gG9R4UYA9nzi4zLmJtipWceAPVHc7/01+rRSI8OHcBsHSv+wXRvAR
         ke6g==
X-Received: by 10.66.219.74 with SMTP id pm10mr23330275pac.93.1444495740922;
        Sat, 10 Oct 2015 09:49:00 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id kv9sm9127996pab.39.2015.10.10.09.48.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 09:49:00 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v3 1/3] Staging: rtl8192u: ieee80211: ieee80211_softmac: Remove commented printk messages
Date: Sat, 10 Oct 2015 22:18:46 +0530
Message-Id: <1444495728-9945-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444495728-9945-1-git-send-email-shraddha.6596@gmail.com>
References: <1444495728-9945-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150207.5619417B.005B,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove commented printk since it is not needed

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v3-
 No change.

Changes in v2-
 No change. 

 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index f2d09fe..c443e2e 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -1272,7 +1272,6 @@ static void ieee80211_associate_step1(struct ieee80211_device *ieee)
 	else{
 		ieee->state = IEEE80211_ASSOCIATING_AUTHENTICATING ;
 		IEEE80211_DEBUG_MGMT("Sending authentication request\n");
-		//printk(KERN_WARNING "Sending authentication request\n");
 		softmac_mgmt_xmit(skb, ieee);
 		//BUGON when you try to add_timer twice, using mod_timer may be better, john0709
 		if (!timer_pending(&ieee->associate_timer)) {
@@ -1735,11 +1734,9 @@ static short ieee80211_sta_ps_sleep(struct ieee80211_device *ieee, u32 *time_h,
 		return 0;
 	*/
 	dtim = ieee->current_network.dtim_data;
-	//printk("DTIM\n");
 	if(!(dtim & IEEE80211_DTIM_VALID))
 		return 0;
 	timeout = ieee->current_network.beacon_interval; //should we use ps_timeout value or beacon_interval
-	//printk("VALID\n");
 	ieee->current_network.dtim_data = IEEE80211_DTIM_INVALID;
 
 	if(dtim & ((IEEE80211_DTIM_UCAST | IEEE80211_DTIM_MBCAST)& ieee->ps))
-- 
2.1.4


