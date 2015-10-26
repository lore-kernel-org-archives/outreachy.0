X-GM-THRID: 6210088605629546496
X-Received: by 10.66.122.201 with SMTP id lu9mr30569403pab.8.1445899042936;
        Mon, 26 Oct 2015 15:37:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.38 with SMTP id a35ls3319477qga.25.gmail; Mon, 26 Oct
 2015 15:37:22 -0700 (PDT)
X-Received: by 10.13.251.194 with SMTP id l185mr17190055ywf.47.1445899042487;
        Mon, 26 Oct 2015 15:37:22 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id vy6si3749756pbc.1.2015.10.26.15.37.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 15:37:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of theonly.ultimate@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=theonly.ultimate@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id la5so7550329pab.0
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 15:37:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=pVXiaIUqxgCj4kqLgakfO9pPzG93d2m19+Zl64wwRAc=;
        b=m6EFZkSVRLziOX9EqIeahpYmqITrPxveMThrCco6KrdSvfVQhZhqlCYz2AL6pNilaj
         JgoE/2kIwEq8ZNqne4/4OzlHrxOvEGKzovxJxQJxzJuvErb4G4Go/d1jf3Exv+lWJ+6p
         jVjveINQF6xifasJCwaEMIqQ8c54kpXNv4DzrzkQi9DaUP3leeLXsalN3hNQtuSG6Fcq
         FxmO84CQwRGnvmZPAecN+FVODQQDzaOv65ymDuR8OXI5jk6e5xyeN/TOZJuojCR/qbhD
         X2qP8XDD86RG1YBtRd6QEO2LsAB4RbHfMqSOOJDmTTm1o+EzRmDIU9KT+bwO/xkePv+Z
         wjTg==
X-Received: by 10.66.182.131 with SMTP id ee3mr23830855pac.81.1445899042374;
        Mon, 26 Oct 2015 15:37:22 -0700 (PDT)
Return-Path: <theonly.ultimate@gmail.com>
Received: from localhost ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id lo9sm35889111pab.19.2015.10.26.15.37.21
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Mon, 26 Oct 2015 15:37:21 -0700 (PDT)
Date: Tue, 27 Oct 2015 04:07:26 +0530
From: Swetha <theonly.ultimate@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org
Subject: [PATCH 4/8] Staging : rdma ipath: "foo * bar" should be "foo *bar"
Message-ID: <c755dd7d39bdd23ae077b761f5f73439ba6bf330.1445898781.git.theonly.ultimate@gmail.com>
References: <cover.1445898781.git.theonly.ultimate@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445898781.git.theonly.ultimate@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixes:

ERROR: "foo * bar" should be "foo *bar"

Signed-off-by: Swetha <theonly.ultimate@gmail.com>
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


