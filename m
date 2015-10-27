X-GM-THRID: 6210088605629546496
X-Received: by 10.66.147.33 with SMTP id th1mr32560741pab.27.1445936490904;
        Tue, 27 Oct 2015 02:01:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.209 with SMTP id a75ls3136029qgf.45.gmail; Tue, 27 Oct
 2015 02:01:30 -0700 (PDT)
X-Received: by 10.129.145.71 with SMTP id i68mr19818465ywg.1.1445936490385;
        Tue, 27 Oct 2015 02:01:30 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id fa8si4035260pab.1.2015.10.27.02.01.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 02:01:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id z6so216462866pas.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 02:01:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=qL2AusoElvNcU1gUctWyp+ALs+LYWhwHR/XoXRijog4=;
        b=ZFU9YuN+P8uXiiJ3Sk+RHqfTU6TK7WL8yh+YK50EvSufuJ1B5pi0MHwhvKXvcDmnSD
         9Q7lS3xlPtWt7ovxFJFlXErspxywhz+2r07UR6Dt1oNIjsLHBOlZDarsUt9lXPlDJprO
         C0u36bIsMeauw7inqAUVdUtPWX+bOOq4uborH4RLT22EggRo2+JMcUBtOKan3XxH9SYk
         bmpaRzGeIvd3AJz2D7uE3vBV4/+MWojaWH3piA6vcAu/T9P3SqZKtdKY8l6f770qmN4U
         qV37q8vF0LhNvRj18LCArzWwyN21WUAOSLqLFXLZTpS1Q8vrsyZ6xu4Z0WQ5+B8t5oeI
         ZMBQ==
X-Received: by 10.68.178.1 with SMTP id cu1mr26273090pbc.99.1445936490259;
        Tue, 27 Oct 2015 02:01:30 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ch3sm38322800pbb.18.2015.10.27.02.01.29
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 27 Oct 2015 02:01:29 -0700 (PDT)
Date: Tue, 27 Oct 2015 14:31:34 +0530
From: SirnamSwetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 4/8] Staging : rdma ipath: "foo * bar" should be "foo *bar"
Message-ID: <c755dd7d39bdd23ae077b761f5f73439ba6bf330.1445936144.git.theonly.ultimate@gmail.com>
References: <cover.1445936143.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445936143.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes:

ERROR: "foo * bar" should be "foo *bar"

Signed-off-by: SirnamSwetha <theonly.ultimate@gmail.com>
---
 drivers/staging/rdma/ipath/ipath_common.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/rdma/ipath/ipath_common.h b/drivers/staging/rdma/ipath/ipath_common.h
index 3f9b4bc..9ce581e 100644
--- a/drivers/staging/rdma/ipath/ipath_common.h
+++ b/drivers/staging/rdma/ipath/ipath_common.h
@@ -798,24 +798,24 @@ struct ether_header {
 
 /* functions for extracting fields from rcvhdrq entries for the driver.
  */
-static inline __u32 ipath_hdrget_err_flags(const __le32 * rbuf)
+static inline __u32 ipath_hdrget_err_flags(const __le32 *rbuf)
 {
 	return __le32_to_cpu(rbuf[1]) & INFINIPATH_RHF_H_ERR_MASK;
 }
 
-static inline __u32 ipath_hdrget_rcv_type(const __le32 * rbuf)
+static inline __u32 ipath_hdrget_rcv_type(const __le32 *rbuf)
 {
 	return (__le32_to_cpu(rbuf[0]) >> INFINIPATH_RHF_RCVTYPE_SHIFT)
 	    & INFINIPATH_RHF_RCVTYPE_MASK;
 }
 
-static inline __u32 ipath_hdrget_length_in_bytes(const __le32 * rbuf)
+static inline __u32 ipath_hdrget_length_in_bytes(const __le32 *rbuf)
 {
 	return ((__le32_to_cpu(rbuf[0]) >> INFINIPATH_RHF_LENGTH_SHIFT)
 		& INFINIPATH_RHF_LENGTH_MASK) << 2;
 }
 
-static inline __u32 ipath_hdrget_index(const __le32 * rbuf)
+static inline __u32 ipath_hdrget_index(const __le32 *rbuf)
 {
 	return (__le32_to_cpu(rbuf[0]) >> INFINIPATH_RHF_EGRINDEX_SHIFT)
 	    & INFINIPATH_RHF_EGRINDEX_MASK;
-- 
1.9.1


