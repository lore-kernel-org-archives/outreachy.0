X-GM-THRID: 6255196435658047488
X-Received: by 10.13.242.134 with SMTP id b128mr39140253ywf.28.1456401435925;
        Thu, 25 Feb 2016 03:57:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.120.101 with SMTP id lb5ls195236obb.51.gmail; Thu, 25 Feb
 2016 03:57:15 -0800 (PST)
X-Received: by 10.182.33.42 with SMTP id o10mr40030434obi.12.1456401435500;
        Thu, 25 Feb 2016 03:57:15 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ff2si1227663pad.2.2016.02.25.03.57.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 03:57:15 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id e127so2705389pfe.3
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 03:57:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=JRCTVo8eCseDeuuhg40+1n5Bhqi49Rbbtb0f173K2D0=;
        b=OHxEaALccw4oBmVirx6SoLeXawj/wKMhd9mMhWgELtvWq7cSFBHG/jONy0gRcbBMA4
         BbVNheczEz9xueAQeo7/+cMqDfC+Q3LocAY8R6fOE/IMdJJeD0IRDOPN6W1JG34QvE2M
         2zzxcpnp5GWmyKgAoUm91iDxOUIxdZP0cnDzEs66NPh6aIkamMTlnnVrTzdd2aqs5sd/
         F91IlVdcDeOuScw88QbQfGZlyzrGYlR+opyMt2r9aa6uIJx7SLAYJBAmKsv50xDsMrEr
         3qJHNcQ5cE2hv/BrWLwjXjQKbZzyXWUzXNe8ElHb73lOYwU+ZBPOdxpfjI87B9Lmrck3
         kMsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=JRCTVo8eCseDeuuhg40+1n5Bhqi49Rbbtb0f173K2D0=;
        b=lAmU8OwmXXPJbY+kRMdwDqwc1YlzvzJ6uTpHHP4S+MR8tMclSTQM244FZQ++Qzp81/
         +KgmaU3NKfvgAN1YfWe8Z28FX4IjWXgNH031e5LdoA8cy7YNwkJuLjqkaVoWwTHzJG5U
         pxwOYUP5bGy/4ylnKDw4PNIsbhebKwg0DSMkkrntZPmUEv70ZoEcLLMLrftPrk9eolCi
         0PcJtuEOumcw4DbpGMsb11WcUr/XCSNHLy1YcxxFvi8kfVwTfhqzGUxWrHsY/OCx3LtE
         oH8pcM8+CeGnNdt0OI45sKgX4uQa/cn+PZ1he5KvCVt9YZOrYXoe1VCQk8bJePmPSA85
         740w==
X-Gm-Message-State: AG10YOSUB+7hAILjBy8NdIVTwhbGyTqy+FsHHkNc1bthr5vcW8LXnYpC75PUoTe7FSe9IA==
X-Received: by 10.98.16.85 with SMTP id y82mr61704852pfi.90.1456401435342;
        Thu, 25 Feb 2016 03:57:15 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.170.98])
        by smtp.gmail.com with ESMTPSA id d65sm11847981pfb.74.2016.02.25.03.57.10
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 03:57:14 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Thu, 25 Feb 2016 17:27:05 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 2/3] Staging: rdma: Remove wrapper clear_rcvctrl
Date: Thu, 25 Feb 2016 17:25:57 +0530
Message-Id: <971c22f741c945f31f650275e4fe6d51192b7787.1456390351.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456390351.git.bhumirks@gmail.com>
References: <cover.1456390351.git.bhumirks@gmail.com>
In-Reply-To: <cover.1456390351.git.bhumirks@gmail.com>
References: <cover.1456390351.git.bhumirks@gmail.com>

The function clear_rcvctrl can be replaced by direct call to
adjust_rcvctrl. So drop the wrapper function.
Done using coccinelle:

@@
expression dd,clear;
@@
- clear_rcvctrl(dd,clear);
+ adjust_rcvctrl(dd, 0, clear);

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rdma/hfi1/chip.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
index 371f948..7969dcb 100644
--- a/drivers/staging/rdma/hfi1/chip.c
+++ b/drivers/staging/rdma/hfi1/chip.c
@@ -6371,11 +6371,6 @@ static void adjust_rcvctrl(struct hfi1_devdata *dd, u64 add, u64 clear)
 	spin_unlock_irqrestore(&dd->rcvctrl_lock, flags);
 }
 
-static inline void clear_rcvctrl(struct hfi1_devdata *dd, u64 clear)
-{
-	adjust_rcvctrl(dd, 0, clear);
-}
-
 /*
  * Called from all interrupt handlers to start handling an SPC freeze.
  */
@@ -6458,7 +6453,7 @@ static void rxe_freeze(struct hfi1_devdata *dd)
 	int i;
 
 	/* disable port */
-	clear_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
+	adjust_rcvctrl(dd, 0, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
 
 	/* disable all receive contexts */
 	for (i = 0; i < dd->num_rcv_contexts; i++)
@@ -6629,7 +6624,7 @@ void handle_link_down(struct work_struct *work)
 	reset_neighbor_info(ppd);
 
 	/* disable the port */
-	clear_rcvctrl(ppd->dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
+	adjust_rcvctrl(ppd->dd, 0, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
 
 	/* If there is no cable attached, turn the DC off. Otherwise,
 	 * start the link bring up. */
@@ -9159,7 +9154,7 @@ void hfi1_quiet_serdes(struct hfi1_pportdata *ppd)
 	set_link_state(ppd, HLS_DN_OFFLINE);
 
 	/* disable the port */
-	clear_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
+	adjust_rcvctrl(dd, 0, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
 }
 
 static inline int init_cpu_counters(struct hfi1_devdata *dd)
-- 
1.9.1


