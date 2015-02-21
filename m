X-GM-THRID: 2249557278720
X-Received: by 10.180.87.166 with SMTP id az6mr475248wib.1.1424556767271;
        Sat, 21 Feb 2015 14:12:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.78.167 with SMTP id c7ls316468wix.33.canary; Sat, 21 Feb
 2015 14:12:45 -0800 (PST)
X-Received: by 10.180.80.35 with SMTP id o3mr475986wix.0.1424556765967;
        Sat, 21 Feb 2015 14:12:45 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id by11si599297wib.1.2015.02.21.14.12.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 14:12:45 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f178.google.com with SMTP id em10so9569073wid.5
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 14:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=GUFLe5rOsCzbXeR6pYbh31ejIqVmFmtpPUwzizYcu8A=;
        b=NskKOjURajOyiZHmZTzO9n652WeEiARPANUh6J/PYqzqwrtJx0jM6hCN6c6b2wXBTx
         kqCB/yhuCEZdgf7dPLuR8gHtC/2XinMLXJ8Jgic2fZ6tUzRTFweuzgpMarvqG8Icsb5f
         EnoAHraLHmS5Otxi+orTLcX65VDz098RVduju+RttTvp34e+XqhAIQXlvhOmsnJgXcfm
         3GlWAISLLKt7Jc9y79GXpYHmwf1OA4FvyV6TrUKdgn1G6WrfdbuSUgi2/u367hu8Gbdo
         9uDxkClWSM6++EFgoPew5W+XhIVyOzaWYIwLneoqe6FHu6IotYnR+IFrGiww+1geWF01
         otvA==
X-Received: by 10.180.77.40 with SMTP id p8mr7302522wiw.53.1424556765878;
        Sat, 21 Feb 2015 14:12:45 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([88.236.245.176])
        by mx.google.com with ESMTPSA id gi3sm8656039wic.15.2015.02.21.14.12.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 14:12:45 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8723au: core: Fix quoted string split across lines
Date: Sun, 22 Feb 2015 00:12:35 +0200
Message-Id: <1424556755-5983-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes "quoted string split across lines warning" warning in
rtw_ap.c

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8723au/core/rtw_ap.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
index c6327c0..13ac513 100644
--- a/drivers/staging/rtl8723au/core/rtw_ap.c
+++ b/drivers/staging/rtl8723au/core/rtw_ap.c
@@ -1477,8 +1477,8 @@ void bss_cap_update_on_sta_join23a(struct rtw_adapter *padapter, struct sta_info
 	if (psta->flags & WLAN_STA_HT) {
 		u16 ht_capab = le16_to_cpu(psta->htpriv.ht_cap.cap_info);
 
-		DBG_8723A("HT: STA " MAC_FMT " HT Capabilities "
-			   "Info: 0x%04x\n", MAC_ARG(psta->hwaddr), ht_capab);
+		DBG_8723A("HT: STA " MAC_FMT " HT Capabilities Info: 0x%04x\n",
+				MAC_ARG(psta->hwaddr), ht_capab);
 
 		if (psta->no_ht_set) {
 			psta->no_ht_set = 0;
-- 
1.9.1


