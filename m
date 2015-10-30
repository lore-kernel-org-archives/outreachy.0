X-GM-THRID: 6211463142533234688
X-Received: by 10.129.83.10 with SMTP id h10mr6750399ywb.6.1446218968595;
        Fri, 30 Oct 2015 08:29:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.207 with SMTP id 76ls615239iot.4.gmail; Fri, 30 Oct
 2015 08:29:28 -0700 (PDT)
X-Received: by 10.50.41.7 with SMTP id b7mr2784031igl.12.1446218968269;
        Fri, 30 Oct 2015 08:29:28 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id iz5si674068pbc.2.2015.10.30.08.29.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 08:29:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id hk11so77533086pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 08:29:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=ZQLs85YFv9+QjM/3s/yfMJbriZakX4TmFkOgWK6br+A=;
        b=G7H3zVsUYah/gFwM7jHGV7ye/2FCm1PrKaxnyNLxtrgbcGQL9QnOReKlQ/b3D/9x9N
         UJGeGCh3EjvZW2DWTstWAGHUn4BI+FFMXNvDYGxcRYIDZR9W9MtPRJ89UTjHECSbrMkK
         Pna5xs9JowDwGDaRtm6M4OiGE0xIJWkaaF95dWekvC5+ES5Y9IYD5iQg3E7Oc50Mi32B
         S4XIwgHQfhxL8Lh8bO3JbKODM2WpHMJozahxZtkJnnRvA6Hqjs7Tw33Qc363Ys5+iWaM
         K3NfXeReP1RRvPXDUMScTn00n31VBwFfWlLo0z3Ja+sjCZTaa3IWMvWqTsQHYmE5Yw8I
         r2RQ==
X-Received: by 10.66.224.201 with SMTP id re9mr9379673pac.98.1446218968152;
        Fri, 30 Oct 2015 08:29:28 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id dn4sm8883843pbd.0.2015.10.30.08.29.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 08:29:27 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 3/7] Staging: lustre: fld: Remove unused seq_client_alloc_super
Date: Fri, 30 Oct 2015 20:59:05 +0530
Message-Id: <1446218949-8599-4-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
References: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.56338CD6.00AB,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Remove function seq_client_alloc_super since it is defined but not used.
Also remove corresponding declaration from header file.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/fid/fid_internal.h |  2 --
 drivers/staging/lustre/lustre/fid/fid_request.c  | 21 ---------------------
 2 files changed, 23 deletions(-)

diff --git a/drivers/staging/lustre/lustre/fid/fid_internal.h b/drivers/staging/lustre/lustre/fid/fid_internal.h
index 84daee1..b79a813 100644
--- a/drivers/staging/lustre/lustre/fid/fid_internal.h
+++ b/drivers/staging/lustre/lustre/fid/fid_internal.h
@@ -44,8 +44,6 @@
 #include "../../include/linux/libcfs/libcfs.h"
 
 /* Functions used internally in module. */
-int seq_client_alloc_super(struct lu_client_seq *seq,
-			   const struct lu_env *env);
 
 extern struct lprocfs_vars seq_client_debugfs_list[];
 
diff --git a/drivers/staging/lustre/lustre/fid/fid_request.c b/drivers/staging/lustre/lustre/fid/fid_request.c
index 7c45e74..e817628 100644
--- a/drivers/staging/lustre/lustre/fid/fid_request.c
+++ b/drivers/staging/lustre/lustre/fid/fid_request.c
@@ -142,27 +142,6 @@ out_req:
 	return rc;
 }
 
-/* Request sequence-controller node to allocate new super-sequence. */
-int seq_client_alloc_super(struct lu_client_seq *seq,
-			   const struct lu_env *env)
-{
-	int rc;
-
-	mutex_lock(&seq->lcs_mutex);
-
-	/* Check whether the connection to seq controller has been
-	 * setup (lcs_exp != NULL) */
-	if (!seq->lcs_exp) {
-		mutex_unlock(&seq->lcs_mutex);
-		return -EINPROGRESS;
-	}
-
-	rc = seq_client_rpc(seq, &seq->lcs_space,
-			    SEQ_ALLOC_SUPER, "super");
-	mutex_unlock(&seq->lcs_mutex);
-	return rc;
-}
-
 /* Request sequence-controller node to allocate new meta-sequence. */
 static int seq_client_alloc_meta(const struct lu_env *env,
 				 struct lu_client_seq *seq)
-- 
2.1.4


