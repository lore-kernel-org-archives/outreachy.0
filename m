X-GM-THRID: 2558431068160
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,343f8c9ccfe1cfac,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.87.166 with SMTP id az6mr821733wib.1.1424629081262;
        Sun, 22 Feb 2015 10:18:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.134 with SMTP id ky6ls260174lac.76.gmail; Sun, 22 Feb
 2015 10:18:00 -0800 (PST)
X-Received: by 10.112.189.227 with SMTP id gl3mr833234lbc.2.1424629080858;
        Sun, 22 Feb 2015 10:18:00 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wg0-x243.google.com (mail-wg0-x243.google.com. [2a00:1450:400c:c00::243])
        by gmr-mx.google.com with ESMTPS id el6si528461wib.2.2015.02.22.10.18.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 10:18:00 -0800 (PST)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::243 as permitted sender) client-ip=2a00:1450:400c:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c00::243 as permitted sender) smtp.mail=haticeerturk27@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f67.google.com with SMTP id b13so7292443wgh.2
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 10:18:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=gjPAfpYdE3862LXqY4/hV2pCAc0ogEsye04/6hk78tQ=;
        b=zs/OGPYn6EV728OP48XrF9A22ZNwZQtY6HHEAyWw6aTv2e5yY/r3ammJ8ah1q/TesI
         0DeFDyR63z8VxXYDhyukvGN5tchmfSvF3+LhmxP/bM45zx9cinLIGuUPixqX4XQMKNmQ
         kLzEVHF9U74qPWA3bcew/i6JBU5uoDibEoBtqyDurRVLrChzmTtWN0UeOP4WC/Bmz2D4
         SzxOIuNCt1GcnQKLIGeJGWxSa3SIQhiLlJEiS244y/85P8gUY0ko2zfwSaJqqhToBs2e
         rCdVWhKL5NmHOrA0d5uXx1ZAVmQpGAoxOjPkyegDNgliIwakCfiUsF9WHM1E3Oubxh+G
         E4PA==
X-Received: by 10.180.208.74 with SMTP id mc10mr13888846wic.38.1424629080778;
        Sun, 22 Feb 2015 10:18:00 -0800 (PST)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([78.189.63.210])
        by mx.google.com with ESMTPSA id s5sm16859841wia.1.2015.02.22.10.17.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 10:17:59 -0800 (PST)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Hatice ERTURK <haticeerturk27@gmail.com>
Subject: [PATCH] Staging: rtl8723au: core: Deleted space prohibited between function name and open parenthesis
Date: Sun, 22 Feb 2015 20:17:51 +0200
Message-Id: <1424629071-15794-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1

WARNING: space prohibited between function name and open parenthesis '('

Remove unnecessary space between function name and opening parenthesis.

That was found by running checkpatch

Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_ap.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index 04717dc..87728b9 100644
--- a/drivers/staging/rtl8723au/core/rtw_ap.c
+++ b/drivers/staging/rtl8723au/core/rtw_ap.c
@@ -1642,7 +1642,7 @@ u8 ap_free_sta23a(struct rtw_adapter *padapter, struct sta_info *psta, bool acti
 	return beacon_updated;
 }
 
-int rtw_ap_inform_ch_switch23a (struct rtw_adapter *padapter, u8 new_ch, u8 ch_offset)
+int rtw_ap_inform_ch_switch23a(struct rtw_adapter *padapter, u8 new_ch, u8 ch_offset)
 {
 	struct list_head *phead, *plist;
 	struct sta_info *psta = NULL;
@@ -1663,12 +1663,12 @@ int rtw_ap_inform_ch_switch23a (struct rtw_adapter *padapter, u8 new_ch, u8 ch_o
 	list_for_each(plist, phead) {
 		psta = container_of(plist, struct sta_info, asoc_list);
 
-		issue_action_spct_ch_switch23a (padapter, psta->hwaddr, new_ch, ch_offset);
+		issue_action_spct_ch_switch23a(padapter, psta->hwaddr, new_ch, ch_offset);
 		psta->expire_to = ((pstapriv->expire_to * 2) > 5) ? 5 : (pstapriv->expire_to * 2);
 	}
 	spin_unlock_bh(&pstapriv->asoc_list_lock);
 
-	issue_action_spct_ch_switch23a (padapter, bc_addr, new_ch, ch_offset);
+	issue_action_spct_ch_switch23a(padapter, bc_addr, new_ch, ch_offset);
 
 	return 0;
 }
@@ -1871,7 +1871,7 @@ void stop_ap_mode23a(struct rtw_adapter *padapter)
 	pmlmeext->bstart_bss = false;
 
 	/* reset and init security priv , this can refine with rtw_reset_securitypriv23a */
-	memset((unsigned char *)&padapter->securitypriv, 0, sizeof (struct security_priv));
+	memset((unsigned char *)&padapter->securitypriv, 0, sizeof(struct security_priv));
 	padapter->securitypriv.ndisauthtype = Ndis802_11AuthModeOpen;
 	padapter->securitypriv.ndisencryptstatus = Ndis802_11WEPDisabled;
 
-- 
1.9.1


