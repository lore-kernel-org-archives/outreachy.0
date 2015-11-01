X-GM-THRID: 6212095586717401088
X-Received: by 10.66.221.42 with SMTP id qb10mr13910518pac.35.1446366472277;
        Sun, 01 Nov 2015 01:27:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.43.234 with SMTP id z10ls699372obl.91.gmail; Sun, 01 Nov
 2015 01:27:51 -0700 (PDT)
X-Received: by 10.182.22.200 with SMTP id g8mr14122101obf.0.1446366471937;
        Sun, 01 Nov 2015 01:27:51 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id sm2si1353120pab.0.2015.11.01.01.27.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 01:27:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pasz6 with SMTP id z6so116134843pas.2
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 01:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=cwcIiQd/xhRdP7GC0kLKoMDeFNkHYwYNpFm30wEChiA=;
        b=JAW92Ga6auR/QQGAaYIDyH/Dd9NnojBkcaNYzlA9GpGSxEGhs/JNJ0agCefP9LzWEk
         argNfBsRSVwtUyTTzBVDoaDSzQIar35l20yeoFzk0tkiWxeICZ2EH7w8meLjoDBLJjjL
         jj3ChObhixD1BGaUn8cgcg2TFVjTl+lAi/TtIS+xagLmc5goEOtQc//HZfl2KG3iqJ9J
         R1hzEabScQkkZLnQ35EKQ1X+P7PIP+np6bEA6yXNNt5nYdCA8wt9CUIcW4NKtBwUycSA
         GWQLXmzaBi2n9oPbxpF0qlfglX5ceXTeNXZCeVh9JGWa4KE4/5FVuEU+Ng5srzeQ2g7j
         0bTw==
X-Received: by 10.68.174.1 with SMTP id bo1mr19104228pbc.110.1446366471765;
        Sun, 01 Nov 2015 01:27:51 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id qy7sm17495020pab.37.2015.11.01.01.27.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 01:27:51 -0700 (PDT)
Date: Sun, 1 Nov 2015 13:57:47 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/5] staging: rdma: hfi1: chip: Remove wrapper function
Message-ID: <23ac38a01d5092053da227aaa0741b270125ceeb.1446366036.git.amitoj1606@gmail.com>
References: <cover.1446366036.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1446366036.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Drop wrapper function remap_receive_available_interrupt() that can be
replaced by a single line of code.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/rdma/hfi1/chip.c | 8 +-------
 1 file changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/chip.c b/drivers/staging/rdma/hfi1/chip.c
index beac326d..a9c6abf 100644
--- a/drivers/staging/rdma/hfi1/chip.c
+++ b/drivers/staging/rdma/hfi1/chip.c
@@ -8749,12 +8749,6 @@ static void remap_sdma_interrupts(struct hfi1_devdata *dd,
 		msix_intr);
 }
 
-static void remap_receive_available_interrupt(struct hfi1_devdata *dd,
-					      int rx, int msix_intr)
-{
-	remap_intr(dd, IS_RCVAVAIL_START + rx, msix_intr);
-}
-
 static int request_intx_irq(struct hfi1_devdata *dd)
 {
 	int ret;
@@ -8890,7 +8884,7 @@ static int request_msix_irqs(struct hfi1_devdata *dd)
 			snprintf(me->name, sizeof(me->name),
 				DRIVER_NAME"_%d kctxt%d", dd->unit, idx);
 			err_info = "receive context";
-			remap_receive_available_interrupt(dd, idx, i);
+			remap_intr(dd, IS_RCVAVAIL_START + idx, i);
 		} else {
 			/* not in our expected range - complain, then
 			   ignore it */
-- 
1.9.1


