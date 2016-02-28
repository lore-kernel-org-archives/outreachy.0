X-GM-THRID: 6256430660938891264
X-Received: by 10.182.91.9 with SMTP id ca9mr10200827obb.7.1456688777804;
        Sun, 28 Feb 2016 11:46:17 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.146 with SMTP id v18ls2414843qgv.85.gmail; Sun, 28 Feb
 2016 11:46:17 -0800 (PST)
X-Received: by 10.140.20.204 with SMTP id 70mr27397622qgj.18.1456688777224;
        Sun, 28 Feb 2016 11:46:17 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id y20si1096861pfa.2.2016.02.28.11.46.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 11:46:17 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 184so2005659pff.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 11:46:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+UT0IgzzvJuD7w1Cc8TizlAA7i2Kfet58iJ6Zua7Vvo=;
        b=OxRSzsg5g38El6eJeQ+RilKzcOLafeciE2IkTkNcUAxn2PPkhctaxWEeiu+lIf+Xxm
         Mzu5/k2JsW9UoBKHw5SFbt82BSzGNDLJ1w8JabBRP/+4j5U0UsoJ5lMzkI0sbtS7CZVG
         g516Bg3SGCmLuOMNpjOuFqPPZf0Ce1g8fGFaC40uZ64XtHo86DigJ4BH5M5LNugCfmVs
         g4nptiGagCH7JMOEqdmM6G8MEcRBcxFV3j/ZKYtH4INqUtiBRxvpR646iurJTdKs5zPA
         VonqL42RiGYDSN9ybySTMzNG90YbdloT13qR6h7t5Z77xmKMWkbh8XLbAn6NQWBAOaiY
         qZ4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+UT0IgzzvJuD7w1Cc8TizlAA7i2Kfet58iJ6Zua7Vvo=;
        b=A6bJHaT3L3hH20fIYtsOOWjJbWBOIYxWHG/+9RUN44NmjnLWZqruSxTlmSr5fCaGE5
         5sJpIOAq3ItvuAoIiE3UX24UMC3V7+n3Emc+8z3cuXDa4gjs66qZjVTpwcC5lFQ2Gcjw
         2sQuyZUY3fsmzRYFpcAc0bEBQYW3yQuBxbE4Ke/U+T9Ew1SbNwA1qVAHGpEIpPsUQ+Cw
         7VVE2RwO/+otdg1DczdfND8hPnI/OdpboQTqNqQgjYaSqYT0XISn6rAADNh/Bxn/7w3x
         VAsD05RDC+Z1VKdKGn4L+qpy6lr5Pwt8I075VEUj/LpgmwNmLklHrZ+R5U8Csn1QhxSe
         etOA==
X-Gm-Message-State: AD7BkJKQcfvcLwWGKw6lxsfSZ9H5W51ZGIv5HUAmijTzYQJf/GAbh38BhxwolNtRtIiptw==
X-Received: by 10.98.10.86 with SMTP id s83mr17525839pfi.85.1456688777044;
        Sun, 28 Feb 2016 11:46:17 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r5sm32870235pap.7.2016.02.28.11.46.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 11:46:16 -0800 (PST)
Date: Mon, 29 Feb 2016 01:13:29 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/6] staging: rts5208: Remove NULL Test before vfree
Message-ID: <20160228194329.GA1735@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

vfree frees the virtually continuous memory area starting at addr.
If addr is NULL, no operation is performed. So NULL test is not needed
before vfree.

This was done using Coccinelle:

@@
expression x;
@@
-if (x != NULL)
    vfree(x);

@@
expression x;
@@

-if (x != NULL) {
   vfree(x);
   x = NULL;
-}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rts5208/xd.c | 36 ++++++++++++------------------------
 1 file changed, 12 insertions(+), 24 deletions(-)

diff --git a/drivers/staging/rts5208/xd.c b/drivers/staging/rts5208/xd.c
index 10fea7b..b987f19 100644
--- a/drivers/staging/rts5208/xd.c
+++ b/drivers/staging/rts5208/xd.c
@@ -903,14 +903,10 @@ static inline void free_zone(struct zone_entry *zone)
 	zone->set_index = 0;
 	zone->get_index = 0;
 	zone->unused_blk_cnt = 0;
-	if (zone->l2p_table) {
-		vfree(zone->l2p_table);
-		zone->l2p_table = NULL;
-	}
-	if (zone->free_table) {
-		vfree(zone->free_table);
-		zone->free_table = NULL;
-	}
+	vfree(zone->l2p_table);
+	zone->l2p_table = NULL;
+	vfree(zone->free_table);
+	zone->free_table = NULL;
 }

 static void xd_set_unused_block(struct rtsx_chip *chip, u32 phy_blk)
@@ -1588,14 +1584,10 @@ static int xd_build_l2p_tbl(struct rtsx_chip *chip, int zone_no)
 	return STATUS_SUCCESS;

 Build_Fail:
-	if (zone->l2p_table) {
-		vfree(zone->l2p_table);
-		zone->l2p_table = NULL;
-	}
-	if (zone->free_table) {
-		vfree(zone->free_table);
-		zone->free_table = NULL;
-	}
+	vfree(zone->l2p_table);
+	zone->l2p_table = NULL;
+	vfree(zone->free_table);
+	zone->free_table = NULL;

 	return STATUS_FAIL;
 }
@@ -2251,14 +2243,10 @@ void xd_free_l2p_tbl(struct rtsx_chip *chip)

 	if (xd_card->zone != NULL) {
 		for (i = 0; i < xd_card->zone_cnt; i++) {
-			if (xd_card->zone[i].l2p_table != NULL) {
-				vfree(xd_card->zone[i].l2p_table);
-				xd_card->zone[i].l2p_table = NULL;
-			}
-			if (xd_card->zone[i].free_table != NULL) {
-				vfree(xd_card->zone[i].free_table);
-				xd_card->zone[i].free_table = NULL;
-			}
+			vfree(xd_card->zone[i].l2p_table);
+			xd_card->zone[i].l2p_table = NULL;
+			vfree(xd_card->zone[i].free_table);
+			xd_card->zone[i].free_table = NULL;
 		}
 		vfree(xd_card->zone);
 		xd_card->zone = NULL;
--
2.1.4


