X-GM-THRID: 6557663232000
X-Received: by 10.236.19.8 with SMTP id m8mr4218673yhm.53.1425469524252;
        Wed, 04 Mar 2015 03:45:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.11.194 with SMTP id 63ls542863iol.4.gmail; Wed, 04 Mar
 2015 03:45:24 -0800 (PST)
X-Received: by 10.66.147.132 with SMTP id tk4mr4223362pab.23.1425469524032;
        Wed, 04 Mar 2015 03:45:24 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id bo1si495275pbc.0.2015.03.04.03.45.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 03:45:24 -0800 (PST)
Received-SPF: pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of somyaanand214@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mail=somyaanand214@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by pabli10 with SMTP id li10so32855741pab.13
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 03:45:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=shTGQYmec6x2aaBI70iUM/J+Rl8OTnOTdYxefXfT1M4=;
        b=B+rxVWrsmbCYXYSZGz8714tkjYTLFIV/G35T3P5LAIrOhgZgXJkyAd6rL8NwRK8+P2
         DX0PU8lTNfZAOdXlihpTcTP0oij73VssG7C2WeajBnfyUkWqiYZcVM09uJDllchJXPLr
         heW4lbGAqZ8CdaEU7Mu5l1s6kTSUXAXaT4zpuEzmDNy0V3U9yz0vICjVEQicqOOiJl96
         gwGR7rsxqWAMnuXKLW+DNTmA3L/YgfijJ+7mqk2KKpTJH7eNibHLXfEqMj2YwCcMZA+E
         X+Uzx1d24FpNNgC88SaQZ359HyJQOXNpP7RwlAqK6NOqFsbKFns4Ln8I1mr115YktAsh
         Pfnw==
X-Received: by 10.68.203.166 with SMTP id kr6mr6252543pbc.92.1425469523936;
        Wed, 04 Mar 2015 03:45:23 -0800 (PST)
Return-Path: <somyaanand214@gmail.com>
Received: from localhost.localdomain ([182.66.41.48])
        by mx.google.com with ESMTPSA id fy2sm3826164pbb.30.2015.03.04.03.45.11
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 04 Mar 2015 03:45:23 -0800 (PST)
From: Somya Anand <somyaanand214@gmail.com>
To: julia.lawall@lip6.fr
Cc: outreachy-kernel@googlegroups.com,
	Somya Anand <somyaanand214@gmail.com>
Subject: [PATCH 1/6] Staging: rtl8188eu: Remove unnecessary return statement
Date: Wed,  4 Mar 2015 17:13:57 +0530
Message-Id: <1425469442-32412-2-git-send-email-somyaanand214@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425469442-32412-1-git-send-email-somyaanand214@gmail.com>
References: <1425469442-32412-1-git-send-email-somyaanand214@gmail.com>

This patch removes unnecessary return statement from a void
function.

This issue is identified by checkpatch.pl

Signed-off-by: Somya Anand <somyaanand214@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index dac4246..998a949 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -650,8 +650,6 @@ void WMMOnAssocRsp(struct adapter *padapter)
 		pxmitpriv->wmm_para_seq[i] = inx[i];
 		DBG_88E("wmm_para_seq(%d): %d\n", i, pxmitpriv->wmm_para_seq[i]);
 	}
-
-	return;
 }
 
 static void bwmode_update_check(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
-- 
1.9.1


