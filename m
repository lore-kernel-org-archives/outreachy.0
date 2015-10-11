X-GM-THRID: 6203986156822986752
X-Received: by 10.66.124.131 with SMTP id mi3mr19030943pab.32.1444540304026;
        Sat, 10 Oct 2015 22:11:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.129.11 with SMTP id ns11ls1021047obb.5.gmail; Sat, 10 Oct
 2015 22:11:43 -0700 (PDT)
X-Received: by 10.182.196.71 with SMTP id ik7mr18802930obc.36.1444540303743;
        Sat, 10 Oct 2015 22:11:43 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id pe1si997455pac.2.2015.10.10.22.11.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 22:11:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id ve7so65660311pab.2
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 22:11:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=TX/CMIXFqX8PpTkuZmdaahbgoU/1U0/jzQ56yL/I6uI=;
        b=MjGalzjlADrzNXg1ktf4bujZMTYxpvm8dePAQ7RXboyY1YE6YMIJwffoSALu2Q4RzL
         mKfuYQGchRtOaYj8K0OjbYpgbvbi3P0UYH6mw9gKq7LRw1wJVyXYE7DK84qXyGt1SVxK
         0eUVf63vfCmOhKLn+D/wLCQHEkS9HoTdZ+v6qdTLuXENCKW8PmmPLbrN3Dkq76bnBvkc
         CdRX+SmU8PpM+eEhapPRAfbKXLh0NNqsiwOm4AsVrlnfPBc9T09E5ZawdECIxZxOEY1F
         4xAbzDRayzFBA0Om3vfL7rLKV8UzVy7rxySNE1vNmAzbEZXj6LjHdrqSw/NMb5uTQyJY
         NL8g==
X-Received: by 10.66.124.198 with SMTP id mk6mr26185612pab.114.1444540303609;
        Sat, 10 Oct 2015 22:11:43 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id k10sm10940309pbq.78.2015.10.10.22.11.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 22:11:42 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4 1/3] Staging: rtl8192u: ieee80211: ieee80211_softmac: Remove commented printk messages
Date: Sun, 11 Oct 2015 10:41:21 +0530
Message-Id: <1444540283-9605-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444540283-9605-1-git-send-email-shraddha.6596@gmail.com>
References: <1444540283-9605-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.5619EF8D.00C0,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove commented printk since it is not needed

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
Changes in v4-
 No change.
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


