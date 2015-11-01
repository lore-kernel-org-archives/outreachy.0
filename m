X-GM-THRID: 6212095586717401088
X-Received: by 10.140.246.213 with SMTP id r204mr13725002qhc.2.1446366578566;
        Sun, 01 Nov 2015 01:29:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.102.7 with SMTP id fk7ls603813igb.18.canary; Sun, 01 Nov
 2015 01:29:38 -0700 (PDT)
X-Received: by 10.107.129.11 with SMTP id c11mr14483026iod.20.1446366578137;
        Sun, 01 Nov 2015 01:29:38 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id pe1si1467132pac.2.2015.11.01.01.29.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:29:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id hy1so110131000pad.0
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=w8u7oPCml5B49resD0CwjR8tWBqnlgZX65Y3LeO0guE=;
        b=IAVHdR3rLBVvs4MCYUvuj3bv/Ml+xXBQZwXV8aBLyeqP52x7J0SXpiVN6sbEgioSjf
         aVsKvCgAYdbRMYPde3xhAJ8CZCpSa/i1I7YeBdosbdH090IGd/+aVzEp1V7nrGDpDfDu
         5w0Y2AdcNO29t7rwq90MDoVciXi/B1/AMuQHWYbuDbMLfKHTJSoTqOf8RCNAjDFYcqq8
         Mo2n0KoUDOcQP9KlGGJUn+VUNLzzJZ/rNXUY/0pWMPiAAXES9bGBJCIoLj/pWC89WGqV
         I/kdY3TGQRkPEVGiY9p5RTIA5rTU0HcuGKsBLYDC44aw4q6xxcJIwoXxcQzDFOaCAXdV
         dyJw==
X-Received: by 10.68.165.35 with SMTP id yv3mr19296151pbb.53.1446366577951;
        Sun, 01 Nov 2015 01:29:37 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id dd4sm17452829pbb.52.2015.11.01.01.29.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 01:29:37 -0700 (PDT)
Date: Sun, 1 Nov 2015 13:59:34 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/5] staging: rdma: hfi1: chip: Remove wrapper functions
Message-ID: <d87be280ac9dc0fe8fc50e25afabf579dcd7b98b.1446366036.git.amitoj1606@gmail.com>
References: <cover.1446366036.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446366036.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop wrapper functions add_rcvctrl() and clear_rcvctrl() that can be replaced by a single line of code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/chip.c | 30 ++++++++++--------------------
 1 file changed, 10 insertions(+), 20 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
index a9c6abf..23cacbf 100644
--- a/drivers/staging/rdma/hfi1/chip.c
+++ b/drivers/staging/rdma/hfi1/chip.c
@@ -3176,16 +3176,6 @@ static void adjust_rcvctrl(struct hfi1_devdata *dd, u64 add, u64 clear)
 	spin_unlock_irqrestore(&dd->rcvctrl_lock, flags);
 }
 
-static inline void add_rcvctrl(struct hfi1_devdata *dd, u64 add)
-{
-	adjust_rcvctrl(dd, add, 0);
-}
-
-static inline void clear_rcvctrl(struct hfi1_devdata *dd, u64 clear)
-{
-	adjust_rcvctrl(dd, 0, clear);
-}
-
 /*
  * Called from all interrupt handlers to start handling an SPC freeze.
  */
@@ -3268,7 +3258,7 @@ static void rxe_freeze(struct hfi1_devdata *dd)
 	int i;
 
 	/* disable port */
-	clear_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
+	adjust_rcvctrl(dd, 0, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
 
 	/* disable all receive contexts */
 	for (i = 0; i < dd->num_rcv_contexts; i++)
@@ -3290,7 +3280,7 @@ static void rxe_kernel_unfreeze(struct hfi1_devdata *dd)
 		hfi1_rcvctrl(dd, HFI1_RCVCTRL_CTXT_ENB, i);
 
 	/* enable port */
-	add_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
+	adjust_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK, 0);
 }
 
 /*
@@ -3441,7 +3431,7 @@ void handle_link_down(struct work_struct *work)
 	reset_neighbor_info(ppd);
 
 	/* disable the port */
-	clear_rcvctrl(ppd->dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
+	adjust_rcvctrl(ppd->dd, 0, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
 
 	/* If there is no cable attached, turn the DC off. Otherwise,
 	 * start the link bring up. */
@@ -5771,7 +5761,7 @@ int bringup_serdes(struct hfi1_pportdata *ppd)
 	int ret;
 
 	if (HFI1_CAP_IS_KSET(EXTENDED_PSN))
-		add_rcvctrl(dd, RCV_CTRL_RCV_EXTENDED_PSN_ENABLE_SMASK);
+		adjust_rcvctrl(dd, RCV_CTRL_RCV_EXTENDED_PSN_ENABLE_SMASK, 0);
 
 	guid = ppd->guid;
 	if (!guid) {
@@ -5813,7 +5803,7 @@ void hfi1_quiet_serdes(struct hfi1_pportdata *ppd)
 	set_link_state(ppd, HLS_DN_OFFLINE);
 
 	/* disable the port */
-	clear_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
+	adjust_rcvctrl(dd, 0, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
 }
 
 static inline int init_cpu_counters(struct hfi1_devdata *dd)
@@ -6461,7 +6451,7 @@ int set_link_state(struct hfi1_pportdata *ppd, u32 state)
 					OPA_LINKINIT_REASON_LINKUP;
 
 			/* enable the port */
-			add_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK);
+			adjust_rcvctrl(dd, RCV_CTRL_RCV_PORT_ENABLE_SMASK, 0);
 
 			handle_linkup_change(dd, 1);
 		}
@@ -9193,7 +9183,7 @@ static void set_partition_keys(struct hfi1_pportdata *ppd)
 	}
 
 	/* Always enable HW pkeys check when pkeys table is set */
-	add_rcvctrl(dd, RCV_CTRL_RCV_PARTITION_KEY_ENABLE_SMASK);
+	adjust_rcvctrl(dd, RCV_CTRL_RCV_PARTITION_KEY_ENABLE_SMASK, 0);
 }
 
 /*
@@ -9945,8 +9935,8 @@ static void init_qpmap_table(struct hfi1_devdata *dd,
 	if (i % 8)
 		write_csr(dd, regno, reg);
 
-	add_rcvctrl(dd, RCV_CTRL_RCV_QP_MAP_ENABLE_SMASK
-			| RCV_CTRL_RCV_BYPASS_ENABLE_SMASK);
+	adjust_rcvctrl(dd, RCV_CTRL_RCV_QP_MAP_ENABLE_SMASK
+			| RCV_CTRL_RCV_BYPASS_ENABLE_SMASK, 0);
 }
 
 /**
@@ -10041,7 +10031,7 @@ static void init_qos(struct hfi1_devdata *dd, u32 first_ctxt)
 		LRH_SC_MASK << RCV_RSM_MATCH_MASK2_SHIFT |
 		LRH_SC_VALUE << RCV_RSM_MATCH_VALUE2_SHIFT);
 	/* Enable RSM */
-	add_rcvctrl(dd, RCV_CTRL_RCV_RSM_ENABLE_SMASK);
+	adjust_rcvctrl(dd, RCV_CTRL_RCV_RSM_ENABLE_SMASK, 0);
 	kfree(rsmmap);
 	/* map everything else (non-VL15) to context 0 */
 	init_qpmap_table(
-- 
1.9.1


