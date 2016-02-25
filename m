X-GM-THRID: 6255196435658047488
X-Received: by 10.182.247.68 with SMTP id yc4mr41143362obc.34.1456401425001;
        Thu, 25 Feb 2016 03:57:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.128.231 with SMTP id nr7ls146442obb.41.gmail; Thu, 25 Feb
 2016 03:57:04 -0800 (PST)
X-Received: by 10.182.247.68 with SMTP id yc4mr41143328obc.34.1456401424678;
        Thu, 25 Feb 2016 03:57:04 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si1167068pab.0.2016.02.25.03.57.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 03:57:04 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id c10so2708796pfc.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 03:57:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=nI9MXlpAYwIh3FM35EUfkkqEz/aARqu3VWI6/trYEAg=;
        b=GbGXFVSwxEHEDKkcITf7oLZZumqj6BzFIGQNnr14WETKr9YaB9bgz25d/ic1/3cwMq
         wnYnBCTG2onKBIEP9Ej2jCKI7uqAe1hwBbMtkTjHGGOmSwmLWR0NBSf6RMbRvJXxHZcj
         c7XBC0TjyP2bm/ZK9wcfRd953ohr5ApPdPw1Q1nbrolKeDgwj0yysqxjV96PyixlDaiz
         Iu0Ku8r7bg3TYmODPL3KbdYKuYsDQsBltGASQUktaoi/OmFTmwVEM2Xl8qwOv45th2rw
         OfCCnG9IPNG2hc0q9QLzBNgmno0t6W83D2uBOoVW6nGPgjVAg0dwFenbrAJcmWLNEJAj
         9+Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=nI9MXlpAYwIh3FM35EUfkkqEz/aARqu3VWI6/trYEAg=;
        b=F94tjlMoaoyXC0wUZ9FB+kLU42ejFsfWIVcRY3xPhOfciQSr4zkgV0rfd/PPcaOdNu
         EcL7BD/RCzCNLkQAijPeWgGdxM1hBma4ZxegnLhC0uSbXm+zmGaoDLK7Ru77fRLq9JVU
         6orzdqvLzGbcuO3r/NZ9fue6gebDjRay9FxAJEbS5qDRCBuu4dLy+kHET39jTtcjRwom
         Znk8uUD+jGGoB45k+MrbmZCX1THjLgqG9gu9t8p28YxieIBry2OmM6Ucz8qmvVR8dUtN
         r6/5CbOkLPREtKhntovdx40fl7QQS74wEHsF7vaKDalBpJchIw+G+uU3yeOFS8EpgR94
         65ng==
X-Gm-Message-State: AG10YOREelyrZ27vZb0MeBITIslue4trJ1I+WQSNQ4jv+zDVHrWftsoO3a+lYHSwdQ0jtQ==
X-Received: by 10.98.12.8 with SMTP id u8mr61807856pfi.36.1456401424515;
        Thu, 25 Feb 2016 03:57:04 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.170.98])
        by smtp.gmail.com with ESMTPSA id y15sm11871059pfi.16.2016.02.25.03.56.58
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 03:57:03 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Thu, 25 Feb 2016 17:26:53 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 1/3] Staging: rdma: Remove wrapper function add_rcvctrl 
Date: Thu, 25 Feb 2016 17:25:56 +0530
Message-Id: <581e22ed76e3c6333ebe0f4dc6a8277931be3880.1456390351.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456390351.git.bhumirks@gmail.com>
References: <cover.1456390351.git.bhumirks@gmail.com>
In-Reply-To: <cover.1456390351.git.bhumirks@gmail.com>
References: <cover.1456390351.git.bhumirks@gmail.com>

The function add_rcvctrl can be replaced with direct call to
adjuct_rcvtrl. Thus, drop the wrapper function.
Done using coccinelle:

@@
expression e,f;
@@
- add_rcvctrl(e,f);
+ adjust_rcvctrl(e,f, 0);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rdma/hfi1/chip.c | 19 +++++++------------
 1 file changed, 7 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
index 02ba78f..371f948 100644
--- a/drivers/staging/rdma/hfi1/chip.c
+++ b/drivers/staging/rdma/hfi1/chip.c
@@ -6371,11 +6371,6 @@ static void adjust_rcvctrl(struct hfi1_devdata *dd, u64 add, u64 clear)
 	spin_unlock_irqrestore(&dd->rcvctrl_lock, flags);
 }
 
-static inline void add_rcvctrl(struct hfi1_devdata *dd, u64 add)
-{
-	adjust_rcvctrl(dd, add, 0);
-}
-
 static inline void clear_rcvctrl(struct hfi1_devdata *dd, u64 clear)
 {
 	adjust_rcvctrl(dd, 0, clear);
@@ -6485,7 +6480,7 @@ static void rxe_kernel_unfreeze(struct hfi1_devdata *dd)
 		hfi1_rcvctrl(dd, HFI1_RCVCTRL_CTXT_ENB, i);
 
 	/* enable port */
-	add_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
+	adjust_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK, 0);
 }
 
 /*
@@ -9119,7 +9114,7 @@ int bringup_serdes(struct hfi1_pportdata *ppd)
 	int ret;
 
 	if (HFI1_CAP_IS_KSET(EXTENDED_PSN))
-		add_rcvctrl(dd, RCV_CTRL_RCV_EXTENDED_PSN_ENABLE_SMASK);
+		adjust_rcvctrl(dd, RCV_CTRL_RCV_EXTENDED_PSN_ENABLE_SMASK, 0);
 
 	guid = ppd->guid;
 	if (!guid) {
@@ -9814,7 +9809,7 @@ int set_link_state(struct hfi1_pportdata *ppd, u32 state)
 					OPA_LINKINIT_REASON_LINKUP;
 
 			/* enable the port */
-			add_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
+			adjust_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK, 0);
 
 			handle_linkup_change(dd, 1);
 		}
@@ -12568,7 +12563,7 @@ static void set_partition_keys(struct hfi1_pportdata *ppd)
 	}
 
 	/* Always enable HW pkeys check when pkeys table is set */
-	add_rcvctrl(dd, RCV_CTRL_RCV_PARTITION_KEY_ENABLE_SMASK);
+	adjust_rcvctrl(dd, RCV_CTRL_RCV_PARTITION_KEY_ENABLE_SMASK, 0);
 }
 
 /*
@@ -13304,8 +13299,8 @@ static void init_qpmap_table(struct hfi1_devdata *dd,
 	if (i % 8)
 		write_csr(dd, regno, reg);
 
-	add_rcvctrl(dd, RCV_CTRL_RCV_QP_MAP_ENABLE_SMASK
-			| RCV_CTRL_RCV_BYPASS_ENABLE_SMASK);
+	adjust_rcvctrl(dd, RCV_CTRL_RCV_QP_MAP_ENABLE_SMASK
+			   | RCV_CTRL_RCV_BYPASS_ENABLE_SMASK, 0);
 }
 
 /**
@@ -13402,7 +13397,7 @@ static void init_qos(struct hfi1_devdata *dd, u32 first_ctxt)
 		LRH_SC_MASK << RCV_RSM_MATCH_MASK2_SHIFT |
 		LRH_SC_VALUE << RCV_RSM_MATCH_VALUE2_SHIFT);
 	/* Enable RSM */
-	add_rcvctrl(dd, RCV_CTRL_RCV_RSM_ENABLE_SMASK);
+	adjust_rcvctrl(dd, RCV_CTRL_RCV_RSM_ENABLE_SMASK, 0);
 	kfree(rsmmap);
 	/* map everything else to first context */
 	init_qpmap_table(dd, FIRST_KERNEL_KCTXT, MIN_KERNEL_KCTXTS - 1);
-- 
1.9.1


