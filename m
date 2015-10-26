X-GM-THRID: 6210088605629546496
X-Received: by 10.50.79.201 with SMTP id l9mr18066231igx.13.1445899022019;
        Mon, 26 Oct 2015 15:37:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.57.84 with SMTP id g20ls975952igq.36.gmail; Mon, 26 Oct
 2015 15:37:01 -0700 (PDT)
X-Received: by 10.107.10.22 with SMTP id u22mr16140844ioi.19.1445899021825;
        Mon, 26 Oct 2015 15:37:01 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id vy6si3749936pbc.1.2015.10.26.15.37.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 15:37:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x234.google.com with SMTP id z6so200498539pas.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 15:37:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=/0Ng3hScWO3vpNVM1/dPEcKc0mYbTM4uoexnB2nP0jw=;
        b=zBH51OmbDgDnbC+LoilulC7LpGS9pq3iP6VbuyIOgRHW6VOvkCvNv2Qmo++cANp4mi
         LhHjLrEz379pmE4xXnN7Il5SGs6+CA/3yDLdwFb3FWAhqUHm6ivQA1Wzb0XfiJcD80d3
         d+C+M6MiWjN5mLdpgu08tO7nvPNb6bIQhBtHhrg1yTq/sbCaKj5YeCUs/RIFqiuFQh6R
         9qUdqLmsN+xYt1yzUr1qZ06AZWC+ILesrzB2xJ3YDbzTDTVOH2SBySbL0dZC+vjnvTcB
         2H6ggX/Gf3d+2ED7xu+zqBUQGsNBQjs9LhzZB96RIyCXGIB1MA0EzO2ScDkM9osCbFrM
         ix/A==
X-Received: by 10.66.90.137 with SMTP id bw9mr24245563pab.112.1445899021728;
        Mon, 26 Oct 2015 15:37:01 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ss6sm35773339pbc.74.2015.10.26.15.37.00
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 15:37:01 -0700 (PDT)
Date: Tue, 27 Oct 2015 04:07:05 +0530
From: Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 3/8] Staging : rdma ipath: spaces preferred around that '<<'
Message-ID: <e7077e1d1c8bc59b7ebfa8151fa4788b38daf74b.1445898781.git.theonly.ultimate@gmail.com>
References: <cover.1445898781.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445898781.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes the checkpatch issue:

CHECK: spaces preferred around that '<<'

Signed-off-by: Swetha <theonly.ultimate@gmail.com>
---
 drivers/staging/rdma/ipath/ipath_common.h | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rdma/ipath/ipath_common.h b/drivers/staging/rdma/ipath/ipath_common.h
index df2a211..3f9b4bc 100644
--- a/drivers/staging/rdma/ipath/ipath_common.h
+++ b/drivers/staging/rdma/ipath/ipath_common.h
@@ -365,7 +365,7 @@ struct ipath_base_info {
  */
 #define IPATH_USER_SWMINOR 6
 
-#define IPATH_USER_SWVERSION ((IPATH_USER_SWMAJOR<<16) | IPATH_USER_SWMINOR)
+#define IPATH_USER_SWVERSION ((IPATH_USER_SWMAJOR << 16) | IPATH_USER_SWMINOR)
 
 #define IPATH_KERN_TYPE 0
 
@@ -380,7 +380,7 @@ struct ipath_base_info {
  * spi_sw_version field of ipath_base_info, so the user code can in turn
  * check for compatibility with the kernel.
 */
-#define IPATH_KERN_SWVERSION ((IPATH_KERN_TYPE<<31) | IPATH_USER_SWVERSION)
+#define IPATH_KERN_SWVERSION ((IPATH_KERN_TYPE << 31) | IPATH_USER_SWVERSION)
 
 /*
  * This structure is passed to ipath_userinit() to tell the driver where
-- 
1.9.1


