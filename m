X-GM-THRID: 6255211798983606272
X-Received: by 10.66.142.135 with SMTP id rw7mr41868348pab.20.1456406608680;
        Thu, 25 Feb 2016 05:23:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.44.162 with SMTP id f2ls184922obm.86.gmail; Thu, 25 Feb
 2016 05:23:28 -0800 (PST)
X-Received: by 10.182.56.233 with SMTP id d9mr40398183obq.2.1456406608332;
        Thu, 25 Feb 2016 05:23:28 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ui7si1214735pab.0.2016.02.25.05.23.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 05:23:28 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id y7so2699075paa.0
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 05:23:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=mgSgkdj4zZ22tOao9NsXmOD0lIqpoQTUv18mYzV3BAI=;
        b=ymNR5ocI0x2dyZzLHAif5WJgpoCsbsHDk/8P0YBzwlF93DKGsFPIU03R4Q+ywa5X5u
         N1VvAEvYXgEZho0rgoeuqs65UVC1Na7MRhnAVfwRT8qpA/41cDBSQujgcDmhRglqeVH1
         80Qw7lT5MptJTIR4ibfIe8QkxBGoAhgjP8N3v3nXxLC0QzpUPqaFc3WTBuvoNbcvyGZs
         gLUGFHE+r1TiMaRmwJ7UtPEgG+rzB8A1VC3rCTLitGEJVAJ73Yd3AHKF2LxJBLw2PgGG
         kdEWuJ0uz0QGcI2X+rGRMZf2n/JYcdHZQ85hn4ARmfuUGkyZIi5JJrI8exK98NgMa456
         Ro/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=mgSgkdj4zZ22tOao9NsXmOD0lIqpoQTUv18mYzV3BAI=;
        b=FX+t/YFqikBC4QA5FOB1/3BCRtsQjU8EQTxu8K+ztVzQfXblq0cstWuLdsqcq+7EH/
         EIK6r3eAozKXOF2Ch2HNInd2yzbdSmjLsTgIH9NOnrb4FV/oYQGuKePfSm3iZ8tDA9AW
         wnYujlNDtuF+ntjYy0J+eOt/KXJEHyvbeGdwuw2fS+uS1bezp6TKgd+MgK1VGMN5dR8O
         sOxufypK/jHMaKtVbF8FmtHzuu3U/LpcQRNhDf6MHoWOm9aaXD01wG8GLfmwyJ3Rxo9N
         mWZlIeCu9hUCXM3a6Ln50HPsJH3wHshFu7X3Re5aF0h75t5xyuRdX/WglZipMlHzQebt
         YYTQ==
X-Gm-Message-State: AG10YOTYepViRLVzhgQ0F7eyx9e0ZnoMVOok+FMqeo7rmyMoSUtEkSh97O4KukSeX0ssPg==
X-Received: by 10.66.142.193 with SMTP id ry1mr28853009pab.33.1456406608147;
        Thu, 25 Feb 2016 05:23:28 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id n28sm12435069pfa.45.2016.02.25.05.23.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 05:23:27 -0800 (PST)
Date: Thu, 25 Feb 2016 18:54:03 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: rdma: hfi1: Remove casts of pointer to same type
Message-ID: <20160225132403.GA8539@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Casting a pointer to a pointer of the same type is unnecessary, so
remove these unnecessary casts.

This was done with Coccinelle:

@@
type T;
T *ptr;
@@
- (T *)ptr
+ ptr

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rdma/hfi1/mad.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/mad.c b/drivers/staging/rdma/hfi1/mad.c
index bee1c0e..ddce918 100644
--- a/drivers/staging/rdma/hfi1/mad.c
+++ b/drivers/staging/rdma/hfi1/mad.c
@@ -2579,7 +2579,7 @@ static int pma_get_opa_datacounters(struct opa_pma_mad *pmp,
 		return reply((struct ib_mad_hdr *)pmp);
 	}

-	rsp = (struct _port_dctrs *)&(req->port[0]);
+	rsp = &(req->port[0]);
 	memset(rsp, 0, sizeof(*rsp));

 	rsp->port_number = port;
@@ -2731,7 +2731,7 @@ static int pma_get_opa_porterrors(struct opa_pma_mad *pmp,
 		return reply((struct ib_mad_hdr *)pmp);
 	}

-	rsp = (struct _port_ectrs *)&(req->port[0]);
+	rsp = &(req->port[0]);

 	ibp = to_iport(ibdev, port_num);
 	ppd = ppd_from_ibp(ibp);
@@ -2779,7 +2779,7 @@ static int pma_get_opa_porterrors(struct opa_pma_mad *pmp,
 	tmp = read_dev_cntr(dd, C_DC_UNC_ERR, CNTR_INVALID_VL);
 	rsp->uncorrectable_errors = tmp < 0x100 ? (tmp & 0xff) : 0xff;

-	vlinfo = (struct _vls_ectrs *)&(rsp->vls[0]);
+	vlinfo = &(rsp->vls[0]);
 	vfi = 0;
 	vl_select_mask = be32_to_cpu(req->vl_select_mask);
 	for_each_set_bit(vl, (unsigned long *)&(vl_select_mask),
@@ -2810,7 +2810,7 @@ static int pma_get_opa_errorinfo(struct opa_pma_mad *pmp,
 	u64 reg;

 	req = (struct opa_port_error_info_msg *)pmp->data;
-	rsp = (struct _port_ei *)&(req->port[0]);
+	rsp = &(req->port[0]);

 	num_ports = OPA_AM_NPORT(be32_to_cpu(pmp->mad_hdr.attr_mod));
 	num_pslm = hweight64(be64_to_cpu(req->port_select_mask[3]));
@@ -3051,7 +3051,7 @@ static int pma_set_opa_errorinfo(struct opa_pma_mad *pmp,
 	u32 error_info_select;

 	req = (struct opa_port_error_info_msg *)pmp->data;
-	rsp = (struct _port_ei *)&(req->port[0]);
+	rsp = &(req->port[0]);

 	num_ports = OPA_AM_NPORT(be32_to_cpu(pmp->mad_hdr.attr_mod));
 	num_pslm = hweight64(be64_to_cpu(req->port_select_mask[3]));
--
2.1.4


