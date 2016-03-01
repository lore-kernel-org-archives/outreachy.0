X-GM-THRID: 6257172681450323968
X-Received: by 10.140.227.134 with SMTP id x128mr5966439qhb.20.1456861542788;
        Tue, 01 Mar 2016 11:45:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.20.22 with SMTP id 22ls3499541qgi.41.gmail; Tue, 01 Mar
 2016 11:45:42 -0800 (PST)
X-Received: by 10.13.194.67 with SMTP id e64mr17851564ywd.17.1456861542245;
        Tue, 01 Mar 2016 11:45:42 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id r75si2989696pfr.0.2016.03.01.11.45.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 11:45:42 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id 4so40038948pfd.1
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 11:45:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=J/gLNoC673C3tOrIBdTqmAHDiKNirgydMGHwOUw9brY=;
        b=otYVfQWJ8mT6d4KVeM2chch2GYoGglO9DxAN+n/jgQTvVz/Bz99NlXiZo1BsYTOt+Z
         WFVfeMvkTek8B5kRuyRp0S5nX0/NHclL1lw6Oq5lPeO/FTSsDIuZ/gkFdlA6i89/ttHB
         KuogfWHuRTyNUrScEb+lW0WGmz3zsUTiNGPCl1mpZd9IGBt+SxHNfdDzBo9F62m2XMh0
         jJfeq+jlwLIkQdyAXO1G+O1u2+OUz5XO3QHmyN85B1SrcAM3SUnNDj2ql0njLh+FoNL6
         BRMs/EY0LZAfyP8eO5xmRzsquA4/VutKtuW9YrCeHCCAJrkWdZFPmZrFFlBsbUfnC7in
         BJvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=J/gLNoC673C3tOrIBdTqmAHDiKNirgydMGHwOUw9brY=;
        b=ek6qrLUHKUuLrE5prjlYz+ySc2lnHpPMwqV73jnTlVDnBKUHMaEYV61f2gULk843yC
         yHrXkWGVmvb8MEXsZ7PVL9Mr7xIm/N60p2jISClPCA54WAjAt3sQKebi8vnQV3IDaloG
         H1ePOx2AkF1a3epwCTflZy1n7RhZYSMfFjdoDML4czupcdzR8mjnFXOyhxHOF9fkjcND
         veR+rRghCIndv/Q4EBlp1VE6Sl1Wra4CFRvX73un7oeF9K/h1FFNpwzYXH75BkzaBtPn
         tDMzpnOOyMgf09QK9IL8p2GPac4GFwVsQL03zfkmitCDfJmV2xgQ61MEUTRccCnLeOv3
         4XFA==
X-Gm-Message-State: AD7BkJI8uoG5pKSEJDANAa9AMOuhiUDVDGGtGtreiNbHj/cTX7gzIrt7Hu3DiUt2V48/Dw==
X-Received: by 10.98.19.215 with SMTP id 84mr32783500pft.22.1456861542073;
        Tue, 01 Mar 2016 11:45:42 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.159.79])
        by smtp.gmail.com with ESMTPSA id ql1sm7155444pac.24.2016.03.01.11.45.37
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 01 Mar 2016 11:45:41 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 02 Mar 2016 01:15:31 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Replace random_ether_addr with eth_random_addr
Date: Wed,  2 Mar 2016 01:14:57 +0530
Message-Id: <1456861497-7528-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The macro random_ether_addr is calling the function eth_random_addr.
Therefore, the call to random_ether_addr can be replaced with
eth_random_addr.
Remove the wrapper function ieee80211_randomize_cell and replace its
call with eth_random_addr as it is wrapping random_ether_addr.
Done using coccinelle:

@@
expression addr;
@@
- random_ether_addr(addr);
+ eth_random_addr(addr);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 2fbbf35..ae1274c 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -2287,12 +2287,6 @@ void ieee80211_stop_queue(struct ieee80211_device *ieee)
 }
 EXPORT_SYMBOL(ieee80211_stop_queue);
 
-inline void ieee80211_randomize_cell(struct ieee80211_device *ieee)
-{
-
-	random_ether_addr(ieee->current_network.bssid);
-}
-
 /* called in user context only */
 void ieee80211_start_master_bss(struct ieee80211_device *ieee)
 {
@@ -2382,7 +2376,7 @@ static void ieee80211_start_ibss_wq(struct work_struct *work)
 	if (ieee->state == IEEE80211_NOLINK) {
 		printk("creating new IBSS cell\n");
 		if(!ieee->wap_set)
-			ieee80211_randomize_cell(ieee);
+			random_ether_addr(ieee->current_network.bssid);
 
 		if(ieee->modulation & IEEE80211_CCK_MODULATION){
 
-- 
1.9.1


