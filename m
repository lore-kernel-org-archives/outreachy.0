X-GM-THRID: 6255218934357688320
X-Received: by 10.129.3.69 with SMTP id 66mr40348814ywd.41.1456406650161;
        Thu, 25 Feb 2016 05:24:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.104.134 with SMTP id a6ls472343qgf.9.gmail; Thu, 25 Feb
 2016 05:24:09 -0800 (PST)
X-Received: by 10.140.246.3 with SMTP id r3mr13867898qhc.2.1456406649478;
        Thu, 25 Feb 2016 05:24:09 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id 79si1230608pft.0.2016.02.25.05.24.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 05:24:09 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id fl4so2689576pad.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 05:24:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=ekg8WBjG8yWoI6jALnhQO3TnAqMO43oLkuv9qMDrS3U=;
        b=FTutn00zWzQF+W1JFeB5onOfuqX4VcbWzfdupwIie5W3pbDCsOsqWS2FFdMmLIsJIB
         PBpFyn8eTjMpkMWCGA05wdLVrJJgRGv4zb20EXxHbI68gL9Q+DbiM0/BxKMwQOsXSeHd
         NRLCCz1LKYSIBP4V86OtRt9dRjkKjVtj8kEwPqirO8Vr8Snnj5xK0xcz0U+nKK3K6/mC
         Ojrmwl3qy100htTIXIy4sorgMxCqlcuom1kauRy5juWYa8vsZxjUNDxCULr4VfMEamnC
         M4bf/JZMXn2ARqQ2+9XgPDR1MXdx0fe/9MpT+e8MfLRjelHCwmzUFH17kSI00HnjuE6f
         Acrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=ekg8WBjG8yWoI6jALnhQO3TnAqMO43oLkuv9qMDrS3U=;
        b=VTQBZvRL0tqu+C8mt6NL/hyZqLYipMxonYdzULcX3QBkDhp/oUf+PToiGxBSGq6KSv
         SbRbJfQBhmqe0nG4+BaSfkrS0Bj5oI4NLVhBKrZ5PhlMVq9zKpgPTETEQN3d6vnWU5tR
         tdGzXwIYBsUnCgGwkhfcXlOh270RXP48lLjEI8oQTpE99EwohNmT2yl2NMlvZBD7n68J
         yn4U+drteVzb1alz9zh2LFoTw6UrHhYWVIFt3I+zmzEH2Gr/ZHozKIWhAVHmQAIR6iG9
         EByWfSoW/U1g8AYLAcvnEXa9FKqeD5zRQbEznN0GUXG2oNHGSadTSs823CDLaqAkFsmp
         84tw==
X-Gm-Message-State: AG10YOS2Wg0+AjjUHbFafIhlOvGCrhSRzayk3nrOr+act5GSnRDjt40srhQK/ZkZE6F+tA==
X-Received: by 10.66.146.100 with SMTP id tb4mr60623292pab.99.1456406649306;
        Thu, 25 Feb 2016 05:24:09 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id ta2sm12423597pab.42.2016.02.25.05.24.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 25 Feb 2016 05:24:08 -0800 (PST)
Date: Thu, 25 Feb 2016 18:54:44 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/2] staging: rdma: hfi1: Remove unnecessary parantheses
Message-ID: <20160225132444.GA8552@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Removed parantheses on the right hand side of assignments as they are not
needed. Coccinelle patch used:

@@ expression a, b; @@

a = &
-(
b
-)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/rdma/hfi1/mad.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/rdma/hfi1/mad.c b/drivers/staging/rdma/hfi1/mad.c
index ddce918..77700b8 100644
--- a/drivers/staging/rdma/hfi1/mad.c
+++ b/drivers/staging/rdma/hfi1/mad.c
@@ -2579,7 +2579,7 @@ static int pma_get_opa_datacounters(struct opa_pma_mad *pmp,
 		return reply((struct ib_mad_hdr *)pmp);
 	}

-	rsp = &(req->port[0]);
+	rsp = &req->port[0];
 	memset(rsp, 0, sizeof(*rsp));

 	rsp->port_number = port;
@@ -2731,7 +2731,7 @@ static int pma_get_opa_porterrors(struct opa_pma_mad *pmp,
 		return reply((struct ib_mad_hdr *)pmp);
 	}

-	rsp = &(req->port[0]);
+	rsp = &req->port[0];

 	ibp = to_iport(ibdev, port_num);
 	ppd = ppd_from_ibp(ibp);
@@ -2779,7 +2779,7 @@ static int pma_get_opa_porterrors(struct opa_pma_mad *pmp,
 	tmp = read_dev_cntr(dd, C_DC_UNC_ERR, CNTR_INVALID_VL);
 	rsp->uncorrectable_errors = tmp < 0x100 ? (tmp & 0xff) : 0xff;

-	vlinfo = &(rsp->vls[0]);
+	vlinfo = &rsp->vls[0];
 	vfi = 0;
 	vl_select_mask = be32_to_cpu(req->vl_select_mask);
 	for_each_set_bit(vl, (unsigned long *)&(vl_select_mask),
@@ -2810,7 +2810,7 @@ static int pma_get_opa_errorinfo(struct opa_pma_mad *pmp,
 	u64 reg;

 	req = (struct opa_port_error_info_msg *)pmp->data;
-	rsp = &(req->port[0]);
+	rsp = &req->port[0];

 	num_ports = OPA_AM_NPORT(be32_to_cpu(pmp->mad_hdr.attr_mod));
 	num_pslm = hweight64(be64_to_cpu(req->port_select_mask[3]));
@@ -3051,7 +3051,7 @@ static int pma_set_opa_errorinfo(struct opa_pma_mad *pmp,
 	u32 error_info_select;

 	req = (struct opa_port_error_info_msg *)pmp->data;
-	rsp = &(req->port[0]);
+	rsp = &req->port[0];

 	num_ports = OPA_AM_NPORT(be32_to_cpu(pmp->mad_hdr.attr_mod));
 	num_pslm = hweight64(be64_to_cpu(req->port_select_mask[3]));
--
2.1.4


