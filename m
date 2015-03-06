X-GM-THRID: 6898518589440
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7cd9a85222ff73d3,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.4.229 with SMTP id n5mr2348834lan.1.1425651518634;
        Fri, 06 Mar 2015 06:18:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.20.13 with SMTP id j13ls98937wie.51.canary; Fri, 06 Mar
 2015 06:18:38 -0800 (PST)
X-Received: by 10.180.11.34 with SMTP id n2mr2806997wib.2.1425651518087;
        Fri, 06 Mar 2015 06:18:38 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-we0-x22a.google.com (mail-we0-x22a.google.com. [2a00:1450:400c:c03::22a])
        by gmr-mx.google.com with ESMTPS id i7si154081wif.0.2015.03.06.06.18.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 06 Mar 2015 06:18:38 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) client-ip=2a00:1450:400c:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c03::22a as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22a.google.com with SMTP id u56so16248807wes.6
        for <outreachy-kernel@googlegroups.com>; Fri, 06 Mar 2015 06:18:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=yL29hX8Om208FkkXhUBWdoQ0phGkdp5Y3NaMX630UJA=;
        b=IoyjsQnC0dKbbuSBc6vV8oMFdMB6dUm3eDqaRHK2sd52UuPSPkOOmYqDFBw7m1hucd
         h3xVcZBGHSQR7S+F5Yo9qXBMLaB0AGGQKL9NmsKfb7mQaOszrWN7cPbHMROblPqpD1u3
         CzM5BihLxNKz12cTJfC68G3QfX4HrQcH1vTIzyDO1dV+b+N2rVeRL1UwjJsksn6I/BUc
         JLVyylSQV6Q+9LfH0+RUhBqCan7NpfmR9ZBRM4/ob6xg89gF9CONeOIJysom7pvR1W1v
         7FzUZIJu/fDfJqI6itEWwzDnqm4IA4+oPFmkOBZQji6Tmvt44s7Jr8+Il8+scpbpUlde
         fGMg==
X-Received: by 10.180.84.9 with SMTP id u9mr32901624wiy.91.1425651517944;
        Fri, 06 Mar 2015 06:18:37 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id 17sm15126024wjt.45.2015.03.06.06.18.36
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 06 Mar 2015 06:18:37 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: rtl8192u: Fix do not use // c99 comments.
Date: Fri,  6 Mar 2015 16:18:31 +0200
Message-Id: <1425651511-3636-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes checkpatch.pl issues with "do not use // C99 comments" errors in ieee80211_rx.c

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
index 44ae791..175bbb6 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
@@ -221,8 +221,8 @@ ieee80211_rx_frame_mgmt(struct ieee80211_device *ieee, struct sk_buff *skb,
 
 	rx_stats->len = skb->len;
 	ieee80211_rx_mgt(ieee,(struct ieee80211_hdr_4addr *)skb->data,rx_stats);
-	//if ((ieee->state == IEEE80211_LINKED) && (memcmp(hdr->addr3, ieee->current_network.bssid, ETH_ALEN)))
-	if ((memcmp(hdr->addr1, ieee->dev->dev_addr, ETH_ALEN)))//use ADDR1 to perform address matching for Management frames
+	/* if ((ieee->state == IEEE80211_LINKED) && (memcmp(hdr->addr3, ieee->current_network.bssid, ETH_ALEN))) */
+	if ((memcmp(hdr->addr1, ieee->dev->dev_addr, ETH_ALEN)))/* use ADDR1 to perform address matching for Management frames */
 	{
 		dev_kfree_skb_any(skb);
 		return 0;
-- 
1.9.1


