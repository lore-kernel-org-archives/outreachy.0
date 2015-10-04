X-GM-THRID: 6201691543779147776
X-Received: by 10.107.6.221 with SMTP id f90mr21020374ioi.13.1443943836874;
        Sun, 04 Oct 2015 00:30:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.244 with SMTP id 107ls2787572qgp.24.gmail; Sun, 04 Oct
 2015 00:30:36 -0700 (PDT)
X-Received: by 10.31.7.70 with SMTP id 67mr20571810vkh.2.1443943836309;
        Sun, 04 Oct 2015 00:30:36 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id uv4si3091203pac.0.2015.10.04.00.30.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 00:30:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x235.google.com with SMTP id hy16so5354668pad.1
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 00:30:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=ojXE5QgZjN/WiogmAFZLUyf4fff+YF/RiykEfdoLmBQ=;
        b=Lga36gPRd1hFQtrD7MGFT2Pr9zd2x5pTbb7E8YpaYQWsBeDvGbbYnGAsnnILjPUJmE
         s7GDERaw/tGNV8eNRWRgtISJUsJ0k9qYMEBphKJLvnznYuG4gdsjHSiOz77t1BJp0pBM
         3KaETErudbe0jAPbK6VozM152c25Ga7Xf9yoJ9YLjrdBGAgldUqX7OblfWwkfuIpi+0/
         gndG7yX/U7DDMJ3WWw8fdYvKIQs3wq8GMhCWyXrszuwg4fZxS96l8BIG93TOWr3NBLV2
         YUbtj7BCoMNujxV5iXO0flJWkdSGzFnLU9FUdPUZA2uhbGZ23Ni+NcMHBXWgLoV8bwWa
         lwWw==
X-Received: by 10.66.65.228 with SMTP id a4mr31668788pat.19.1443943836154;
        Sun, 04 Oct 2015 00:30:36 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id uq1sm4087085pbc.82.2015.10.04.00.30.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Oct 2015 00:30:35 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/8] Staging: lustre: ptlrpc: nrs: Declare as static
Date: Sun,  4 Oct 2015 13:00:09 +0530
Message-Id: <1443943816-21546-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
References: <1443943816-21546-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.5610D59A.0144,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare ptlrpc_nrs_policy_register as static since it is used
only in this particular file. Also remove corresponding declaration
from header files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/include/lustre_net.h | 5 -----
 drivers/staging/lustre/lustre/ptlrpc/nrs.c         | 3 +--
 2 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/lustre_net.h b/drivers/staging/lustre/lustre/include/lustre_net.h
index af3bf21..428b83d 100644
--- a/drivers/staging/lustre/lustre/include/lustre_net.h
+++ b/drivers/staging/lustre/lustre/include/lustre_net.h
@@ -1528,11 +1528,6 @@ static inline int ptlrpc_req_interpret(const struct lu_env *env,
 	return rc;
 }
 
-/** \addtogroup  nrs
- * @{
- */
-int ptlrpc_nrs_policy_register(struct ptlrpc_nrs_pol_conf *conf);
-
 /*
  * Can the request be moved from the regular NRS head to the high-priority NRS
  * head (of the same PTLRPC service partition), if any?
diff --git a/drivers/staging/lustre/lustre/ptlrpc/nrs.c b/drivers/staging/lustre/lustre/ptlrpc/nrs.c
index 2476cf2..3fe96a1 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/nrs.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/nrs.c
@@ -1111,7 +1111,7 @@ again:
  * \retval -ve error
  * \retval   0 success
  */
-int ptlrpc_nrs_policy_register(struct ptlrpc_nrs_pol_conf *conf)
+static int ptlrpc_nrs_policy_register(struct ptlrpc_nrs_pol_conf *conf)
 {
 	struct ptlrpc_service *svc;
 	struct ptlrpc_nrs_pol_desc *desc;
@@ -1247,7 +1247,6 @@ fail:
 
 	return rc;
 }
-EXPORT_SYMBOL(ptlrpc_nrs_policy_register);
 
 /**
  * Setup NRS heads on all service partitions of service \a svc, and register
-- 
2.1.4


