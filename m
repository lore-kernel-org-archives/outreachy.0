X-GM-THRID: 6256430343748845568
X-Received: by 10.129.58.16 with SMTP id h16mr9964063ywa.56.1456690847194;
        Sun, 28 Feb 2016 12:20:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.80.8 with SMTP id n8ls1009035obx.52.gmail; Sun, 28 Feb
 2016 12:20:46 -0800 (PST)
X-Received: by 10.182.72.137 with SMTP id d9mr10340046obv.31.1456690846869;
        Sun, 28 Feb 2016 12:20:46 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id r75si1593293pfr.0.2016.02.28.12.20.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 12:20:46 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id fl4so7466451pad.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 12:20:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=b/V0Odl/OdVnBtwmfBHLpGp9w7EYOg8gWF/2fVyfylM=;
        b=eEzVq6ctz/aUyncIoXBaHQi/2aRBgFfKTeEqFow1TO6GJWVpw/ngDH3/bv/mpBU9se
         sq89VpgUsNVI4ZUtfvJOo3+20ZZmNuRHILs8aC02vBFL0ROYv/9dz8DrW2yAafYIljJn
         4wVm+z8LCxok5cvRYt7K5LxLt9vlmvXtuvcQ9mRp8nceL9fMqhz6mc9IvNeXDdjACrnb
         QN1zAdDiBlF/v9JLghK+f2suKS9r/NMEeB7/RYKaXQgwIEiNyoq8zwqm/0ewxNiCPtel
         fSw+T6fiZIV5m6ZO7dVuTdx7Rf5MReLIJHkaY/oY06VrAxCqoWrYC0i3JHmbvdNAAZ7c
         X2xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=b/V0Odl/OdVnBtwmfBHLpGp9w7EYOg8gWF/2fVyfylM=;
        b=gwlPqQL1hkMHy87kxtAyualV1906yZIj2Q6vLG0USXQW1jU0ljUz5dl8yE4MFvXAgi
         CDRjTvUuj4/n2AvBbDXKssACfM35A330HWZVmBTfXjCm8CYnJWtok2uJ8ze8hyfaAu6n
         9R6ho5/Exb2iWgqdcakKJRrsumcN6sOF7YusTorDHtRhO3pAS3ygJcR5FC+6n2GtCoYJ
         yVaCHDrjVaeSkwExof3QVmEHNaG2EK4FEHjJUCaxbHEukxYU3GWZKlsKCWw+nmbeGeAh
         eZpR8iJvinujvE4s4f/2lU5cI5EZdUbJ+qgqf6qaedn1pAPiClxia4ExxwmZV7nCDnpi
         HOfQ==
X-Gm-Message-State: AD7BkJKljt2wpv5hOmNmkDm+a7VH9UU9Un/HE7YAe+l82qofPKkdp2FjFsT2KGnnNZpHUA==
X-Received: by 10.67.6.72 with SMTP id cs8mr17530187pad.138.1456690846707;
        Sun, 28 Feb 2016 12:20:46 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id k65sm32882226pfb.30.2016.02.28.12.20.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 12:20:46 -0800 (PST)
Date: Mon, 29 Feb 2016 01:47:59 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 1/4] staging: rts5208: Remove NULL test before vfree
Message-ID: <20160228201759.GA2313@Karyakshetra>
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
 drivers/staging/rts5208/ms.c | 30 ++++++++++--------------------
 drivers/staging/rts5208/xd.c | 36 ++++++++++++------------------------
 2 files changed, 22 insertions(+), 44 deletions(-)

diff --git a/drivers/staging/rts5208/ms.c b/drivers/staging/rts5208/ms.c
index cdaa1ab..0f8416a 100644
--- a/drivers/staging/rts5208/ms.c
+++ b/drivers/staging/rts5208/ms.c
@@ -2457,10 +2457,8 @@ static int ms_init_l2p_tbl(struct rtsx_chip *chip)
 	return STATUS_SUCCESS;

 INIT_FAIL:
-	if (ms_card->segment) {
-		vfree(ms_card->segment);
-		ms_card->segment = NULL;
-	}
+	vfree(ms_card->segment);
+	ms_card->segment = NULL;

 	return STATUS_FAIL;
 }
@@ -2803,14 +2801,10 @@ static int ms_build_l2p_tbl(struct rtsx_chip *chip, int seg_no)

 BUILD_FAIL:
 	segment->build_flag = 0;
-	if (segment->l2p_table) {
-		vfree(segment->l2p_table);
-		segment->l2p_table = NULL;
-	}
-	if (segment->free_table) {
-		vfree(segment->free_table);
-		segment->free_table = NULL;
-	}
+	vfree(segment->l2p_table);
+	segment->l2p_table = NULL;
+	vfree(segment->free_table);
+	segment->free_table = NULL;

 	return STATUS_FAIL;
 }
@@ -4096,14 +4090,10 @@ void ms_free_l2p_tbl(struct rtsx_chip *chip)

 	if (ms_card->segment != NULL) {
 		for (i = 0; i < ms_card->segment_cnt; i++) {
-			if (ms_card->segment[i].l2p_table != NULL) {
-				vfree(ms_card->segment[i].l2p_table);
-				ms_card->segment[i].l2p_table = NULL;
-			}
-			if (ms_card->segment[i].free_table != NULL) {
-				vfree(ms_card->segment[i].free_table);
-				ms_card->segment[i].free_table = NULL;
-			}
+			vfree(ms_card->segment[i].l2p_table);
+			ms_card->segment[i].l2p_table = NULL;
+			vfree(ms_card->segment[i].free_table);
+			ms_card->segment[i].free_table = NULL;
 		}
 		vfree(ms_card->segment);
 		ms_card->segment = NULL;
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


