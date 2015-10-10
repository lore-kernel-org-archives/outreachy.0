X-GM-THRID: 6203980538126008320
X-Received: by 10.31.7.70 with SMTP id 67mr15159092vkh.2.1444476783173;
        Sat, 10 Oct 2015 04:33:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.133 with SMTP id j5ls722533igx.3.canary; Sat, 10 Oct
 2015 04:33:02 -0700 (PDT)
X-Received: by 10.66.132.69 with SMTP id os5mr15150925pab.12.1444476782938;
        Sat, 10 Oct 2015 04:33:02 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id zg1si644396pbb.2.2015.10.10.04.33.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 04:33:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id lk4so110792151pab.3
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 04:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=40x3prANAE5Uuheibea9Je8YHUt0bzBeDIH0Av9DQSQ=;
        b=uQkNINX29GkDuvFpJOHuKF38H2eNatxcZ8v8EZ+DbrpUJ/5Q6XuleiNs0OgBN2FrKC
         T03UTqZRBnKdQrGHnxHn7TzRCDfWKp0xsY+uooWLT2vTLgy18WiluXljidRlLljU3HGl
         x/WShl40RfttJVJGFCdCKZwj39XZrVMPEO2o7zjSEyMS5zrQJNouzHbSsUVXjwMBUnTz
         8vn6ij4CilajdgdsgWxWursbRPWqBKlwcU/b2wB7qrU72ego5TdsDRnpNP7+5W07f/Zz
         0MCC5gE9TKdqk9ithAcr1hLbmOQi5xRDOVkdvlhreBtQl+Uq+43K1dnhVv++rIsL6gtL
         O9AQ==
X-Received: by 10.66.163.228 with SMTP id yl4mr21662047pab.112.1444476782845;
        Sat, 10 Oct 2015 04:33:02 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id gi4sm7787792pbc.4.2015.10.10.04.33.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 04:33:02 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/3] Staging: rtl8192u: ieee80211: ieee80211_softmac: Remove commented printk messages.
Date: Sat, 10 Oct 2015 17:02:48 +0530
Message-Id: <1444476770-14129-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444476770-14129-1-git-send-email-shraddha.6596@gmail.com>
References: <1444476770-14129-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.5618F76D.01E5,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove commented printk since it is not needed

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
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


