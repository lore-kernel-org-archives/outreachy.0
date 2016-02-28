X-GM-THRID: 6256430343748845568
X-Received: by 10.50.97.105 with SMTP id dz9mr7465823igb.8.1456691492670;
        Sun, 28 Feb 2016 12:31:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.153.111 with SMTP id vf15ls328341igb.7.gmail; Sun, 28 Feb
 2016 12:31:32 -0800 (PST)
X-Received: by 10.66.182.225 with SMTP id eh1mr10319938pac.24.1456691492246;
        Sun, 28 Feb 2016 12:31:32 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id ui7si3211233pab.0.2016.02.28.12.31.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 12:31:32 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id a7so6146525pax.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 12:31:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=b/V0Odl/OdVnBtwmfBHLpGp9w7EYOg8gWF/2fVyfylM=;
        b=LXf46yyypDYZckpbJxw12l+5WRIeUbP1peibx1g2CU4ah+tHV11pdIp2bvn/ufcPaP
         3MtU3ANcMJE7sRb/Jl4PzZs4Mddfwoh4cVYk6APfuQlQ/Q5A1CSt85aCZfLMR3vkDdXb
         apgxa4CPHBt7DceblrrclZcUJPmISTjDQMf71+ktVkTyNl5HNHtTbe9Ca1f019b0qS8H
         sTGhDKaf1k3qhFYCmcS3/QRtEiZB3XtVFMzMeNU/lcCMF4KDmW9X8SGjj5JowVX0MJRS
         5kORxGVFg+fEP0tj4XsW33yp8QEx6erekZuEL2dDPX3b6qX+bHPSVFJIdZXttx2Q7W0S
         pVgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=b/V0Odl/OdVnBtwmfBHLpGp9w7EYOg8gWF/2fVyfylM=;
        b=SNmGAcaZsKq39/o+CrlGsCYCV2glu9ZUJCdIlN5bAcrw0V3FlWysz8hzcADM4Yxj66
         LbrQuZMkGxuEf5Xa9EPHQtisIkl5YDAwUOXLLza1tgmsCGnU/Xy+DAw43UOuUIwA6p7i
         8Z5N0r/eNY8zCePc66YFO8FWZ8Bixnm/fe4jAL2eZTQVWHUthqLMk9dO41C6L7gTWFdB
         cRaZjtMh+QxyEFKCqR0lda+o3tOipK4RPrOVzWGL8bQ5WqEyYWmF37xL0OvavlSFbtXQ
         u11lQgX+WGYyiftttR15oojTLzQyUi8nmJ/cMvFgzqBKb5SlV0qHdot1FC2fvn9PMaVj
         mCLg==
X-Gm-Message-State: AD7BkJJrYBbCjstzL7HKYDkXIRH8vHVn9JgqEpF8AmLOzGkbD5Md8FWB0ecGceHsYS104A==
X-Received: by 10.66.174.199 with SMTP id bu7mr17386010pac.34.1456691492093;
        Sun, 28 Feb 2016 12:31:32 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id k65sm32905031pfb.30.2016.02.28.12.31.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 12:31:31 -0800 (PST)
Date: Mon, 29 Feb 2016 01:58:44 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/4] staging: rts5208: Remove NULL test before vfree
Message-ID: <20160228202844.GA2604@Karyakshetra>
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


