X-GM-THRID: 6255211798983606272
X-Received: by 10.98.12.66 with SMTP id u63mr40878538pfi.12.1456404989868;
        Thu, 25 Feb 2016 04:56:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.45.161 with SMTP id o1ls163481obm.27.gmail; Thu, 25 Feb
 2016 04:56:29 -0800 (PST)
X-Received: by 10.182.46.201 with SMTP id x9mr40944907obm.43.1456404989345;
        Thu, 25 Feb 2016 04:56:29 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id ff2si1257288pad.2.2016.02.25.04.56.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 04:56:29 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id c10so33643993pfc.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 04:56:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=mgSgkdj4zZ22tOao9NsXmOD0lIqpoQTUv18mYzV3BAI=;
        b=NohrpbjLHki+k+IeC7hjjE4s/JoKL4BLn6v/oY/RsxlrcBZua9GoVx6dmt3XbVI934
         UOhq/qjIPKZuKZeScOw2OFb8vsjb46EU56OP3bGOMFti0IclG54i0Lr0q8uNNLvoDscn
         FmCbZ6VysfRAkZ9+b2EqeOmCdYk2ic5n8DCfLSGeFuQB0u+WzylEiZlk9bEGP992z/l1
         lxgX0JTv/Lx0GD3D6+fWUyZ/WQd00Z5ls8vmWufIXcUi/HFGY8gDqOQdfdKFQVQ0QN5N
         q/j72cKN54QYyofSVt+407Ib2eCy1D/Uto9/Ze66/6400TtHkPk8Uf1m8BX+d1wyoHyX
         CraA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=mgSgkdj4zZ22tOao9NsXmOD0lIqpoQTUv18mYzV3BAI=;
        b=LlBDNm3+7QkeCqUvqfxMTUEIyATtkCayrQ/HM7kp8sKgfxu3P1fbE+BYKP6VZcOnA5
         g9FUsjPIF5T6Fh86410nvxMg+soMB2ycf2zK/VZQm6cuji5K07G2qN7w0VMNRhRTbuqj
         DGTd2dzQtTKydh693yZ+rUg3oWTdz9uLMqSGyNV6KgRPQzmmnc7wqqRnxEIsGXvOPqgl
         DE/6u85q/6JO1EHaOlAZoBJ0rl5KPg42/03ZpOFHAfTkiME0x/zB0PPBXBZNbKZjgg1Y
         gIJUkRtsc/YLt9BYtpgaQlscq3uGZxZ+48bx1GyyoZGrRI6hMfjunSv0G23UQhRXepPr
         h+kw==
X-Gm-Message-State: AG10YOQEuetcAl2oqYjVQUWOO/nTb+ikSD/NKTVPBf8b10JO9LNIQD/Q5FZ8zBhH0wDIGw==
X-Received: by 10.98.0.84 with SMTP id 81mr63001183pfa.67.1456404989166;
        Thu, 25 Feb 2016 04:56:29 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r68sm12268687pfb.51.2016.02.25.04.56.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 04:56:28 -0800 (PST)
Date: Thu, 25 Feb 2016 18:27:04 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rdma: hfi1: Remove casts of pointer to same type
Message-ID: <20160225125704.GA7990@Karyakshetra>
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


