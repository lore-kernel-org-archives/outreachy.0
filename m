X-GM-THRID: 6259748901784387584
X-Received: by 10.182.33.42 with SMTP id o10mr21448263obi.12.1457461365933;
        Tue, 08 Mar 2016 10:22:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.202 with SMTP id t68ls659705qgt.7.gmail; Tue, 08 Mar
 2016 10:22:44 -0800 (PST)
X-Received: by 10.129.83.85 with SMTP id h82mr648372ywb.18.1457461364214;
        Tue, 08 Mar 2016 10:22:44 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 12si640434pfb.1.2016.03.08.10.22.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 10:22:44 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 63so1741445pfe.0
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 10:22:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=4kLzdV5EEY7Ef44dfp4Pbe82kPKASFzk2prUg3PBOfk=;
        b=D0fBE1rZzsgf7a8ETvTyv+lrMcyCvzlcgsbKnnpqNEt6XtWDUFqMPPSXMv/Qq41rO+
         Kq9IsGSaqmDe0pRqRzmOa8Vib7cxDpjcEXTQo52tAZZVns3phyVPRsa2TDLhyELStzDN
         RLnElvI1TUDDzzeGwLHzGsBJRmi5izdviW4vHBLn4KzzODwwr3Q3Jv+asnlOdRC8EtAH
         H4lAhGUpTcszUW13q88WunyITNU/GP34nSdGNCvUW+ZMthcd3s+0lQSEQuzu6Iyvmn76
         6G05HpP8LJuokvtN4eEppWDqgri3L2GpIj2tQz4ZloIKXrLn3XQopTWkElp0e1iM6+45
         jkNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=4kLzdV5EEY7Ef44dfp4Pbe82kPKASFzk2prUg3PBOfk=;
        b=SLTr+WrQHwrz0onr5VnVLkHwGlhz/kYynONmZ6PuEW3SZZnx1jfd04oFSvUiFTI+uX
         wncpqIE8G3Mq+xDdg0I/Uw4A+jy0vXXBBamnnjVgDjCpmPUwqNuaYgqDO2iXv4mfZkQV
         CPCX+FGY/nnZiv7vXDWIp0xw8z8hmXDuO/iLD7rtNdFSq8pkfW34VQf+HQtC+Po2ZgM4
         xSbbgF/MHjXU9gJn5b916lJt5neYXFCAycgGB1Vh9xy4gQ1v4DsyqllDpnhLHHKG4hnP
         bjQl6XyPkn4a7Q4T33X+VRStx8DE4n9ugcE0Fh/lpw3c/OzH9zbewPxI158IL6VNZ+53
         iBVA==
X-Gm-Message-State: AD7BkJICQDQH2bdB4qRXNAF4WhUeCUzkizkahLsZJe2N/qjpbh35bFWMkiPIijMfCZeAcA==
X-Received: by 10.98.16.4 with SMTP id y4mr43328690pfi.45.1457461364061;
        Tue, 08 Mar 2016 10:22:44 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 16sm6549794pfk.28.2016.03.08.10.22.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 10:22:43 -0800 (PST)
Date: Tue, 8 Mar 2016 23:40:30 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3] staging: lustre: ptlrpc: niobuf: Prefer using macro
 DIV_ROUND_UP
Message-ID: <20160308181030.GA30814@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

The macro DIV_ROUND_UP performs the computation
(((n) + (d) - 1) /(d)). It clarifies the divisor calculations.
This was done using the coccinelle script:
@@
expression e1;
expression e2;
@@
(
- ((e1) + e2 - 1) / (e2)
+ DIV_ROUND_UP(e1,e2)
|
- ((e1) + (e2 - 1)) / (e2)
+ DIV_ROUND_UP(e1,e2)
)

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 Changes in v3:
	-Changed subject to avoid conflict with other patches.

 drivers/staging/lustre/lustre/ptlrpc/niobuf.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/niobuf.c b/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
index 10b8fe8..96eaf3c 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/niobuf.c
@@ -162,7 +162,7 @@ static int ptlrpc_register_bulk(struct ptlrpc_request *req)
 		 "registered: %d  rq_xid: %llu bd_last_xid: %llu\n",
 		 desc->bd_registered, xid, desc->bd_last_xid);

-	total_md = (desc->bd_iov_count + LNET_MAX_IOV - 1) / LNET_MAX_IOV;
+	total_md = DIV_ROUND_UP(desc->bd_iov_count, LNET_MAX_IOV);
 	desc->bd_registered = 1;
 	desc->bd_last_xid = xid;
 	desc->bd_md_count = total_md;
--
2.1.4


