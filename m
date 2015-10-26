X-GM-THRID: 6210088605629546496
X-Received: by 10.129.56.7 with SMTP id f7mr31121106ywa.52.1445898961617;
        Mon, 26 Oct 2015 15:36:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.153.7 with SMTP id b7ls1635688ioe.48.gmail; Mon, 26 Oct
 2015 15:36:01 -0700 (PDT)
X-Received: by 10.66.248.199 with SMTP id yo7mr17666455pac.38.1445898961261;
        Mon, 26 Oct 2015 15:36:01 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id el2si3772839pbb.0.2015.10.26.15.36.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 15:36:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id hk11so200851788pad.1
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 15:36:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=y97l1QQCYiWPDvFKDuB77P2UKMRT0LFZhZ2kt35jvjw=;
        b=lWkLyaXkMNa63ciR6pplD8FJnOpIsBr8u7WCuBPTu5QvSUgcmvndD5FexKA5JSRZRH
         HzxmTZ4lQhbzgLrDbtXAu60grUEY1QJks2gWJixZDP5ZdQm7VneNBg4ad7Ot5Ri73Vcm
         xJBLXaC78RknVGl65NyMytAMRj516WybRXD4omYwToAtmsCH80LnRf9+3EqkmM0KQyOa
         0cRcWUmp353OGxg9JLTTejNPklsNFxiABowUuWK2OvkxEw8jij+rno1MaUtBYcKDnnmJ
         4j4t020BhB3H8uhy1Q2pXVhwHH0lzWBsSTz3oghp8ZNr/+41SeArxYYchD6GRWIXWBCY
         2K3Q==
X-Received: by 10.67.4.65 with SMTP id cc1mr24302220pad.141.1445898961183;
        Mon, 26 Oct 2015 15:36:01 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id tn2sm35882751pac.0.2015.10.26.15.36.00
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 15:36:00 -0700 (PDT)
Date: Tue, 27 Oct 2015 04:06:04 +0530
From: Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 1/8] Staging: rdma ipath: Removing multiple blank lines
Message-ID: <5b741301ef667e414f76794607dcdc4355aa1595.1445898781.git.theonly.ultimate@gmail.com>
References: <cover.1445898781.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445898781.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch issue

CHECK: Please don't use multiple blank lines

Signed-off-by: Swetha <theonly.ultimate@gmail.com>
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


