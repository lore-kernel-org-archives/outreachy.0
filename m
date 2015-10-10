X-GM-THRID: 6203986156822986752
X-Received: by 10.66.162.7 with SMTP id xw7mr14910911pab.25.1444478092156;
        Sat, 10 Oct 2015 04:54:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.43.234 with SMTP id z10ls1042774obl.91.gmail; Sat, 10 Oct
 2015 04:54:51 -0700 (PDT)
X-Received: by 10.182.94.204 with SMTP id de12mr8257552obb.21.1444478091894;
        Sat, 10 Oct 2015 04:54:51 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id w5si669007pbt.1.2015.10.10.04.54.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 04:54:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabve7 with SMTP id ve7so52624945pab.2
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Oct 2015 04:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=NzBgg691W9wB8j8NhSQm5LHRaJ/qUzBz21lwVffkpOU=;
        b=thDW7GW5pNuaqCqars4OFlfErwUjxAIo8+Z5J9cuUmHSTVHFqI/Jq/PI93fNA21uTF
         55xEaUbkkKkOA1qdReLMbbVqWieIhjIRzKWqf0PuF9Zy6le1xv9b/OS+02LFxxxxK9zY
         e0YgTcN99zIEAOp85j1moS0o3c+GbaBGPryCgqvBNr7woX4KRPAcKS4seOMtK+PHI+qi
         sZu6odMx7IlQBHpnqdDJu/s0nKdpaIE22wWUCn4oIkKdbQoRas3LdhIURgOo4U0fM2xt
         cr1jxdMejKwq3WEksYSVX9Bv/gb07Aebeqc6JmShHGlgVVPv9ETlYbPatYkXlc3vb5gO
         IhFw==
X-Received: by 10.68.219.4 with SMTP id pk4mr22185921pbc.138.1444478091757;
        Sat, 10 Oct 2015 04:54:51 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id ih4sm7870733pbc.28.2015.10.10.04.54.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 10 Oct 2015 04:54:51 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH v2 1/3] Staging: rtl8192u: ieee80211: ieee80211_softmac:  Remove commented printk messages
Date: Sat, 10 Oct 2015 17:24:38 +0530
Message-Id: <1444478080-3348-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1444478080-3348-1-git-send-email-shraddha.6596@gmail.com>
References: <1444478080-3348-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150205.5618FC8A.0151,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove commented printk since it is not needed

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
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


