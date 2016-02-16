X-GM-THRID: 6252008171554996224
X-Received: by 10.98.74.81 with SMTP id x78mr23817432pfa.8.1455659086268;
        Tue, 16 Feb 2016 13:44:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.50.139 with SMTP id c11ls1223300igo.38.canary; Tue, 16 Feb
 2016 13:44:45 -0800 (PST)
X-Received: by 10.50.80.18 with SMTP id n18mr20066218igx.1.1455659085939;
        Tue, 16 Feb 2016 13:44:45 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id ui7si4236383pab.0.2016.02.16.13.44.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Feb 2016 13:44:45 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x233.google.com with SMTP id fy10so70439409pac.1
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Feb 2016 13:44:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=eFFhB/3bAKPnEIq/liKNJwhSbrodM+mxecqjrTCboz8=;
        b=c/9WN+mTVOoeuvibMH+YZisCUnOXlN+gIIxXB1eHq7AmL4U8DkzKEaR6bZ/dXBJbFP
         F7DHCABahHdWu3nHpGoRtyCYFcMtMp7Zq8RZsincNKowOJZxsVbQ+ENIfb7SL0vTlbTj
         WKK3hNNKV82KmvBfKX/nxqDBL8Q1JXv0JVXEHS86SDJCkB1e0WLsY3+i33rAT4omd3qZ
         r8pxFBW+xTrGyluqvUiuQriTJ/CGC6CdKh1sYWKiQHzuLXrExGWKXtP+Jr4+7jzgBp7e
         VDSennltoB43oeit7CjMyVFffk3cN9s/EczAWuuAwyu6GgMJkCs9CykgQLzErOQQlwoB
         saOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eFFhB/3bAKPnEIq/liKNJwhSbrodM+mxecqjrTCboz8=;
        b=NxP3gJbnYw0StTS2n9Uhj98uSLvUVK/SmCZiy4GH2LEfrRBxuCyppq0zbGmyJ9hQ6E
         j8bb0EgmX8LNvOaBTgth+INvLKVZx1ERDqan9ZlqQUJu9MWgxrAfdK/WpHaBeOSVFoTE
         YKyBZ4mdyEGGPfI34sUzw42Jqm6MrX/IgSPLZxx62i/UD5mXysLC9sFKgQZQDdKCO2r+
         jftOjkXXZqCtY3KjtFR5pGiKWGO8vLxcFR18nEfgQbeLnG9NqbzO9uHCWNz1ZZNwGRaP
         QgoVEKeb9i70Sszg4kBsBdgcwRCW96gFJpEXkXd9SEfr0fQy9hzeD8aYdZw3PaGWl6Fa
         hzTg==
X-Gm-Message-State: AG10YOT6XdtZilxxpl83taYnM/YTa9u2Lr3PqbzRsjJ6Rzht9K5SEwNzbx3qen/37OTfmA==
X-Received: by 10.67.12.175 with SMTP id er15mr33887335pad.70.1455659085789;
        Tue, 16 Feb 2016 13:44:45 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([223.176.138.208])
        by smtp.gmail.com with ESMTPSA id cq4sm47971031pad.28.2016.02.16.13.44.41
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Tue, 16 Feb 2016 13:44:44 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Wed, 17 Feb 2016 03:14:35 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: lnet: Simplify function kiblnd_find_rd_dma_mr
Date: Wed, 17 Feb 2016 03:14:33 +0530
Message-Id: <1455659073-20498-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The struct pointer  prev_mr is made NULL in the for loop so if(!prev_mr)
will be true and (pre_mr = mr) will always execute and so the second if
statement will reduce to if(!mr). prev_mr is serving no purpose here and
can be removed along with the if statement.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
index 2e7b5ca..9b2cd67 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
@@ -1326,7 +1326,6 @@ struct ib_mr *kiblnd_find_dma_mr(kib_hca_dev_t *hdev, __u64 addr, __u64 size)
 
 struct ib_mr *kiblnd_find_rd_dma_mr(kib_hca_dev_t *hdev, kib_rdma_desc_t *rd)
 {
-	struct ib_mr *prev_mr;
 	struct ib_mr *mr;
 	int i;
 
@@ -1339,15 +1338,12 @@ struct ib_mr *kiblnd_find_rd_dma_mr(kib_hca_dev_t *hdev, kib_rdma_desc_t *rd)
 	if (hdev->ibh_nmrs == 1)
 		return hdev->ibh_mrs[0];
 
-	for (i = 0, mr = prev_mr = NULL;
+	for (i = 0, mr = NULL;
 	     i < rd->rd_nfrags; i++) {
 		mr = kiblnd_find_dma_mr(hdev,
 					rd->rd_frags[i].rf_addr,
 					rd->rd_frags[i].rf_nob);
-		if (!prev_mr)
-			prev_mr = mr;
-
-		if (!mr || prev_mr != mr) {
+		if (!mr) {
 			/* Can't covered by one single MR */
 			mr = NULL;
 			break;
-- 
1.9.1


