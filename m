X-GM-THRID: 3183052062720
X-Received: by 10.180.13.98 with SMTP id g2mr2077211wic.3.1424783675571;
        Tue, 24 Feb 2015 05:14:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.208 with SMTP id l16ls609447laa.66.gmail; Tue, 24 Feb
 2015 05:14:35 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr2128806lai.4.1424783675062;
        Tue, 24 Feb 2015 05:14:35 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id o3si904835wib.2.2015.02.24.05.14.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 05:14:35 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id bs8so25383209wib.0
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 05:14:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=0APWtjvvj0gdcbeJrlKpqqHgassC7klvlyU3Yc1tRJo=;
        b=gYS5KB1GLIOzNnug0V7Qrd+SNy/s6lMF3XghsukgtfMTBeCobE8FaTnPwXPEdMNtiI
         mTx9tBfCOHVjuGlcrtyWFHYZaN1kbIUwJJK/WsWrRxieDi2EXxppzCFE24Z/s7QeFPlh
         lKaY/WPC3pNj7+AOmql4CXkoy2X8J8HCfo98a9UGOXNr3spneTc75NsYkaqHmptfvhky
         94qQGA6IUaxVijytgiTNQQzv+zW6Vs/PyT1uQY/v71MvxyuL1ywz3a7X3kjMh2ywru7s
         /HFjjU3RhrfboCdkdq02sL+QBOsYlqKpkcKf+S0/qCKzkZJp/hvds4zo8WdCSOhEzcOK
         /BQg==
X-Received: by 10.194.61.51 with SMTP id m19mr32688395wjr.39.1424783674851;
        Tue, 24 Feb 2015 05:14:34 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id q10sm60200222wjr.41.2015.02.24.05.14.33
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 24 Feb 2015 05:14:34 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8723au: Add blank line after declarations
Date: Tue, 24 Feb 2015 15:14:26 +0200
Message-Id: <1424783666-4960-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

The following patch fixes the checkpatch.pl warning:
drivers/staging/rtl8723au/core/rtw_ap.c WARNING: Missing a blank
line after declarations

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_ap.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index 13ac513..853f99e 100644
--- a/drivers/staging/rtl8723au/core/rtw_ap.c
+++ b/drivers/staging/rtl8723au/core/rtw_ap.c
@@ -785,6 +785,7 @@ int rtw_check_beacon_data23a(struct rtw_adapter *padapter,
 	struct wlan_bssid_ex *pbss_network = &pmlmepriv->cur_network.network;
 	u8 *ie = pbss_network->IEs;
 	u8 *pbuf = mgmt->u.beacon.variable;
+
 	len -= offsetof(struct ieee80211_mgmt, u.beacon.variable);
 	/* SSID */
 	/* Supported rates */
-- 
1.9.1


