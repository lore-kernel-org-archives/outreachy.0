X-GM-THRID: 6210088605629546496
X-Received: by 10.182.19.195 with SMTP id h3mr19493897obe.25.1445936377653;
        Tue, 27 Oct 2015 01:59:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.160 with SMTP id d32ls2039771ioj.39.gmail; Tue, 27 Oct
 2015 01:59:37 -0700 (PDT)
X-Received: by 10.66.97.69 with SMTP id dy5mr9674637pab.1.1445936377346;
        Tue, 27 Oct 2015 01:59:37 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id vy6si3977951pbc.1.2015.10.27.01.59.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 01:59:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hk11so216792454pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 01:59:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=uOS0oPMvaRJVRgmUQNKcyHr6gzzxS1m7SMAdUmynJDY=;
        b=fezW982ZOAo/AX7H2OLLueZaKwWp7aHlUy4+5Duuv2+RkjqMJCewr2E9DKuLBfHeu8
         p59zBTMUqfQZAD+/wUz7ueRAbmWXycFxgpLcISfjKVYPg/tLpVFzFLdAXO2GVhlp5Qcr
         Dj36kdT7l7RAtnIy29FnbjTnHilvtqqXeHlV+eKpLrWVN5s40LxaOgbtvBwIj5tyJ/Dq
         ajFf3+iCsGBpuEHN9IgECgUC1LZCVom9uOLHNsQlKoVnIlh5SSVRlxtT1rFpfpEKW1ol
         rNQGET/87AKGn7+h+vJM6BMxOIauxi+RPf9jgktJmH2ViPuiWXHseX1x5jkyPE7DJvia
         zSXA==
X-Received: by 10.68.57.205 with SMTP id k13mr33993394pbq.4.1445936377269;
        Tue, 27 Oct 2015 01:59:37 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id nz4sm38301604pbb.47.2015.10.27.01.59.36
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 01:59:36 -0700 (PDT)
Date: Tue, 27 Oct 2015 14:29:41 +0530
From: SirnamSwetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 1/8] Staging: rdma ipath: Removing multiple blank lines
Message-ID: <5b741301ef667e414f76794607dcdc4355aa1595.1445936143.git.theonly.ultimate@gmail.com>
References: <cover.1445936143.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445936143.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch issue

CHECK: Please don't use multiple blank lines

Signed-off-by: SirnamSwetha <theonly.ultimate@gmail.com>
---
 drivers/staging/rdma/ipath/ipath_common.h | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/staging/rdma/ipath/ipath_common.h b/drivers/staging/rdma/ipath/ipath_common.h
index 28cfe97..812fb9b 100644
--- a/drivers/staging/rdma/ipath/ipath_common.h
+++ b/drivers/staging/rdma/ipath/ipath_common.h
@@ -39,7 +39,6 @@
  * to communicate between kernel and user code.
  */
 
-
 /* This is the IEEE-assigned OUI for QLogic Inc. InfiniPath */
 #define IPATH_SRC_OUI_1 0x00
 #define IPATH_SRC_OUI_2 0x11
@@ -344,7 +343,6 @@ struct ipath_base_info {
 
 } __attribute__ ((aligned(8)));
 
-
 /*
  * This version number is given to the driver by the user code during
  * initialization in the spu_userversion field of ipath_user_info, so
@@ -767,7 +765,6 @@ struct ether_header {
 	__u8 unused[2];		/* currently unused */
 };
 
-
 /* IB - LRH header consts */
 #define IPATH_LRH_GRH 0x0003	/* 1. word of IB LRH - next header: GRH */
 #define IPATH_LRH_BTH 0x0002	/* 1. word of IB LRH - next header: BTH */
@@ -793,7 +790,6 @@ struct ether_header {
 #define RCVHQ_RCV_TYPE_NON_KD    2
 #define RCVHQ_RCV_TYPE_ERROR     3
 
-
 /* sub OpCodes - ith4x  */
 #define IPATH_ITH4X_OPCODE_ENCAP 0x81
 #define IPATH_ITH4X_OPCODE_LID_ARP 0x82
-- 
1.9.1


