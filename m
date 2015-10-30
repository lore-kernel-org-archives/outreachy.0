X-GM-THRID: 6211463142533234688
X-Received: by 10.31.41.141 with SMTP id p135mr6586879vkp.7.1446218963825;
        Fri, 30 Oct 2015 08:29:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.85.231 with SMTP id n94ls1231825qgd.80.gmail; Fri, 30 Oct
 2015 08:29:23 -0700 (PDT)
X-Received: by 10.129.155.83 with SMTP id s80mr6936804ywg.55.1446218963283;
        Fri, 30 Oct 2015 08:29:23 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id sm2si731299pab.0.2015.10.30.08.29.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 08:29:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id hk11so77537352pad.1
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 08:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=05UdgDCC6qFDrySEYBvLAH+UYfQaXdpks1PnFj18wsk=;
        b=yBRXjUPFD5q8+Z7b4fXCixhYD/gIBQD0sSWqAnDzKxNBXd089vTZnd3dMmI9g6VAj7
         B5n5C/38k3CsqhpI9k1pUfRdylxBzMnnvU8YDIeMSxFQ653d9l2KVNDSmkKKjbdvfU1k
         Mu6pKiJg1fdzZgBpr0ivc3HZPSQKBKWLneK/0wJE1BADVVCi5YlSncQNDH8uLsMH7WuM
         LMHiKf1CZg6iQfK0LX9WI442sX+DEqtc0pj7PD8NjvuWW/tMJqpTnLk/S35UYpL6FMyW
         O3WZ9Xql+AGGzfYadgSs228gCTlQuInLAH0DHAG2Xna54y+v8wjJFz1cHHJCmOeAXBH3
         VnYw==
X-Received: by 10.66.149.105 with SMTP id tz9mr9567812pab.143.1446218963150;
        Fri, 30 Oct 2015 08:29:23 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from shraddha-370R4E-370R4V-370R5E-3570RE-370R5V.bits-goa.ac.in ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id dn4sm8883843pbd.0.2015.10.30.08.29.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 30 Oct 2015 08:29:22 -0700 (PDT)
From: Shraddha Barke <shraddha.6596@gmail.com>
To: <outreachy-kernel@googlegroups.com>
Subject: [PATCH 1/7] Staging: lustre: mdc: Declare local functions as static
Date: Fri, 30 Oct 2015 20:59:03 +0530
Message-Id: <1446218949-8599-2-git-send-email-shraddha.6596@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
References: <1446218949-8599-1-git-send-email-shraddha.6596@gmail.com>
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A15020A.56338CD2.0005,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

Declare mdc_get_lustre_md, mdc_free_lustre_md and
mdc_clear_open_replay_data as static since they are used only
in this particular file. Also remove corresponding declarations
from header files.

Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
---
 drivers/staging/lustre/lustre/mdc/mdc_internal.h |  8 --------
 drivers/staging/lustre/lustre/mdc/mdc_request.c  | 14 ++++++++------
 2 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/staging/lustre/lustre/mdc/mdc_internal.h b/drivers/staging/lustre/lustre/mdc/mdc_internal.h
index 29b46f7..5e0c8b5 100644
--- a/drivers/staging/lustre/lustre/mdc/mdc_internal.h
+++ b/drivers/staging/lustre/lustre/mdc/mdc_internal.h
@@ -104,18 +104,10 @@ int mdc_open(struct obd_export *exp, u64 ino, int type, int flags,
 
 struct obd_client_handle;
 
-int mdc_get_lustre_md(struct obd_export *md_exp, struct ptlrpc_request *req,
-		      struct obd_export *dt_exp, struct obd_export *lmv_exp,
-		      struct lustre_md *md);
-
-int mdc_free_lustre_md(struct obd_export *exp, struct lustre_md *md);
-
 int mdc_set_open_replay_data(struct obd_export *exp,
 			     struct obd_client_handle *och,
 			     struct lookup_intent *it);
 
-int mdc_clear_open_replay_data(struct obd_export *exp,
-			       struct obd_client_handle *och);
 void mdc_commit_open(struct ptlrpc_request *req);
 void mdc_replay_open(struct ptlrpc_request *req);
 
diff --git a/drivers/staging/lustre/lustre/mdc/mdc_request.c b/drivers/staging/lustre/lustre/mdc/mdc_request.c
index 16a5a10..074bc88 100644
--- a/drivers/staging/lustre/lustre/mdc/mdc_request.c
+++ b/drivers/staging/lustre/lustre/mdc/mdc_request.c
@@ -447,9 +447,11 @@ static int mdc_unpack_acl(struct ptlrpc_request *req, struct lustre_md *md)
 #define mdc_unpack_acl(req, md) 0
 #endif
 
-int mdc_get_lustre_md(struct obd_export *exp, struct ptlrpc_request *req,
-		      struct obd_export *dt_exp, struct obd_export *md_exp,
-		      struct lustre_md *md)
+static int mdc_get_lustre_md(struct obd_export *exp,
+			     struct ptlrpc_request *req,
+			     struct obd_export *dt_exp,
+			     struct obd_export *md_exp,
+			     struct lustre_md *md)
 {
 	struct req_capsule *pill = &req->rq_pill;
 	int rc;
@@ -573,7 +575,7 @@ out:
 	return rc;
 }
 
-int mdc_free_lustre_md(struct obd_export *exp, struct lustre_md *md)
+static int mdc_free_lustre_md(struct obd_export *exp, struct lustre_md *md)
 {
 	return 0;
 }
@@ -737,8 +739,8 @@ static void mdc_free_open(struct md_open_data *mod)
 		ptlrpc_request_committed(mod->mod_close_req, committed);
 }
 
-int mdc_clear_open_replay_data(struct obd_export *exp,
-			       struct obd_client_handle *och)
+static int mdc_clear_open_replay_data(struct obd_export *exp,
+				      struct obd_client_handle *och)
 {
 	struct md_open_data *mod = och->och_mod;
 
-- 
2.1.4


